package com.springagentpoc.api.ai.memory;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.springagentpoc.api.data.embedded.MessageRole;
import com.springagentpoc.api.data.entity.Conversation;
import com.springagentpoc.api.data.entity.Message;
import com.springagentpoc.api.data.entity.ToolCall;
import com.springagentpoc.api.data.entity.ToolResponse;
import com.springagentpoc.api.data.repo.ConversationRepo;
import com.springagentpoc.api.data.repo.MessageRepo;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.ai.chat.memory.ChatMemory;
import org.springframework.ai.chat.messages.*;
import org.springframework.dao.OptimisticLockingFailureException;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.*;
import java.util.stream.Collectors;

@Component
@RequiredArgsConstructor
@Slf4j
public class PostgresChatMemory implements ChatMemory {

    private static final int MAX_MESSAGES_TO_LOAD = 20;
    private static final int MAX_TOKEN_COUNT = 4000;
    private final ConversationRepo conversationRepo;
    private final MessageRepo messageRepo;
    private final ObjectMapper objectMapper;

    @Override
    @Transactional
    public void add(@NonNull String conversationId, List<org.springframework.ai.chat.messages.Message> messages) {
        log.debug("Adding {} messages to conversation {}", messages.size(), conversationId);

        UUID convId = UUID.fromString(conversationId);

        Conversation conversation = conversationRepo.findById(convId)
                .orElseThrow(() -> new IllegalArgumentException("Conversation not found: " + conversationId));

        for (org.springframework.ai.chat.messages.Message aiMessage : messages) {
            Message message = new Message();
            message.setConversation(conversation);
            message.setRole(mapAiRoleToDbRole(aiMessage.getMessageType()));

            // Handle content
            String content = aiMessage.getText();
            message.setContent(content);
            message.setTokenCount(estimateTokenCount(content != null ? content : ""));

            // Handle metadata
            if (aiMessage.getMetadata() != null && !aiMessage.getMetadata().isEmpty()) {
                Map<String, String> metadata = new HashMap<>();
                for (Map.Entry<String, Object> entry : aiMessage.getMetadata().entrySet()) {
                    metadata.put(entry.getKey(), convertToString(entry.getValue()));
                }
                message.setMetadata(metadata);
            }

            // Handle tool calls for Assistant messages
            if (aiMessage instanceof AssistantMessage assistantMessage) {
                List<AssistantMessage.ToolCall> toolCalls = assistantMessage.getToolCalls();
                if (toolCalls != null && !toolCalls.isEmpty()) {
                    for (AssistantMessage.ToolCall aiToolCall : toolCalls) {
                        ToolCall toolCall = new ToolCall();
                        toolCall.setToolCallId(aiToolCall.id());
                        toolCall.setType(aiToolCall.type());
                        toolCall.setName(aiToolCall.name());
                        toolCall.setArguments(aiToolCall.arguments());
                        message.addToolCall(toolCall);
                    }
                }
            }

            // Handle tool responses for Tool messages
            if (aiMessage instanceof ToolResponseMessage toolResponseMessage) {
                List<ToolResponseMessage.ToolResponse> responses = toolResponseMessage.getResponses();
                if (responses != null && !responses.isEmpty()) {
                    for (ToolResponseMessage.ToolResponse aiToolResponse : responses) {
                        ToolResponse toolResponse = new ToolResponse();
                        toolResponse.setToolResponseId(aiToolResponse.id());
                        toolResponse.setName(aiToolResponse.name());
                        toolResponse.setResponseData(aiToolResponse.responseData());
                        message.addToolResponse(toolResponse);
                    }
                }
            }

            messageRepo.save(message);
        }

        // Update lastMessageAt with retry logic for concurrent modifications
        updateLastMessageAtWithRetry(convId, 3);
    }

    @Override
    @Transactional(readOnly = true)
    public @NonNull List<org.springframework.ai.chat.messages.Message> get(@NonNull String conversationId) {
        int lastN = MAX_MESSAGES_TO_LOAD;
        log.debug("Retrieving last {} messages from conversation {}", lastN, conversationId);

        List<Message> messages = messageRepo.findLatestMessagesByConversationId(
                UUID.fromString(conversationId),
                PageRequest.of(0, lastN)
        );

        List<Message> chronologicalMessages = new ArrayList<>(messages);
        java.util.Collections.reverse(chronologicalMessages);

        return chronologicalMessages.stream()
                .map(this::mapDbMessageToAiMessage)
                .collect(Collectors.toList());
    }

    @Override
    @Transactional
    public void clear(@NonNull String conversationId) {
        log.debug("Clearing messages for conversation {}", conversationId);

        Conversation conversation = conversationRepo.findById(UUID.fromString(conversationId))
                .orElseThrow(() -> new IllegalArgumentException("Conversation not found: " + conversationId));

        messageRepo.deleteAll(conversation.getMessages());
        conversation.getMessages().clear();
        conversation.setLastMessageAt(null);
        conversationRepo.save(conversation);
    }

    @Transactional(readOnly = true)
    public List<org.springframework.ai.chat.messages.Message> getWithTokenLimit(String conversationId) {
        log.debug("Retrieving messages with token limit for conversation {}", conversationId);

        List<Message> allMessages = messageRepo.findByConversationIdOrderByCreatedAtAsc(
                UUID.fromString(conversationId)
        );

        List<org.springframework.ai.chat.messages.Message> result = new ArrayList<>();
        int totalTokens = 0;

        for (int i = allMessages.size() - 1; i >= 0; i--) {
            Message msg = allMessages.get(i);
            int msgTokens = msg.getTokenCount() != null ? msg.getTokenCount() : estimateTokenCount(msg.getContent());

            if (totalTokens + msgTokens > MAX_TOKEN_COUNT && !result.isEmpty()) {
                break;
            }

            result.add(0, mapDbMessageToAiMessage(msg));
            totalTokens += msgTokens;
        }

        return result;
    }

    @Transactional
    public UUID createOrGetConversation(UUID userId, String title) {
        Conversation conversation = new Conversation();
        conversation.setId(UUID.randomUUID());
        conversation.setUserId(userId);
        conversation.setTitle(title != null ? title : "New Conversation");
        conversation = conversationRepo.save(conversation);
        return conversation.getId();
    }

    @Transactional(readOnly = true)
    public boolean conversationExists(UUID conversationId) {
        return conversationRepo.existsById(conversationId);
    }

    @Transactional
    public void createConversationIfNotExists(UUID conversationId, UUID userId, String title) {
        if (!conversationExists(conversationId)) {
            Conversation conversation = new Conversation();
            conversation.setId(conversationId);
            conversation.setUserId(userId);
            conversation.setTitle(title != null ? title : "New Conversation");
            conversationRepo.save(conversation);
        }
    }

    private MessageRole mapAiRoleToDbRole(MessageType messageType) {
        return switch (messageType) {
            case USER -> MessageRole.USER;
            case ASSISTANT -> MessageRole.ASSISTANT;
            case SYSTEM -> MessageRole.SYSTEM;
            case TOOL -> MessageRole.TOOL;
        };
    }

    private org.springframework.ai.chat.messages.Message mapDbMessageToAiMessage(Message dbMessage) {
        // Reconstruct metadata
        Map<String, Object> metadata = new HashMap<>();
        if (dbMessage.getMetadata() != null) {
            metadata.putAll(dbMessage.getMetadata());
        }
        metadata.put("messageType", dbMessage.getRole().toString());

        return switch (dbMessage.getRole()) {
            case USER -> {
                UserMessage userMessage = new UserMessage(dbMessage.getContent());
                userMessage.getMetadata().putAll(metadata);
                yield userMessage;
            }
            case ASSISTANT -> {
                // Check if this assistant message has tool calls
                if (dbMessage.getToolCalls() != null && !dbMessage.getToolCalls().isEmpty()) {
                    List<AssistantMessage.ToolCall> toolCalls = dbMessage.getToolCalls().stream()
                            .sorted(Comparator.comparing(ToolCall::getSequenceNumber))
                            .map(tc -> new AssistantMessage.ToolCall(
                                    tc.getType() != null ? tc.getType() : "function",
                                    tc.getToolCallId() != null ? tc.getToolCallId() : "",
                                    tc.getName(),
                                    tc.getArguments()
                            ))
                            .collect(Collectors.toList());

                    yield new AssistantMessage(
                            dbMessage.getContent() != null ? dbMessage.getContent() : "",
                            metadata,
                            toolCalls
                    );
                } else {
                    AssistantMessage assistantMessage = new AssistantMessage(dbMessage.getContent());
                    assistantMessage.getMetadata().putAll(metadata);
                    yield assistantMessage;
                }
            }
            case SYSTEM -> {
                SystemMessage systemMessage = new SystemMessage(dbMessage.getContent());
                systemMessage.getMetadata().putAll(metadata);
                yield systemMessage;
            }
            case TOOL -> {
                // Reconstruct tool responses
                List<ToolResponseMessage.ToolResponse> toolResponses = new ArrayList<>();

                if (dbMessage.getToolResponses() != null && !dbMessage.getToolResponses().isEmpty()) {
                    toolResponses = dbMessage.getToolResponses().stream()
                            .sorted(Comparator.comparing(ToolResponse::getSequenceNumber))
                            .map(tr -> new ToolResponseMessage.ToolResponse(
                                    tr.getToolResponseId() != null ? tr.getToolResponseId() : "",
                                    tr.getName(),
                                    tr.getResponseData()
                            ))
                            .collect(Collectors.toList());
                } else {
                    // Fallback for backward compatibility or simple tool messages
                    toolResponses.add(new ToolResponseMessage.ToolResponse(
                            "",
                            "Tool",
                            dbMessage.getContent() != null ? dbMessage.getContent() : ""
                    ));
                }

                yield new ToolResponseMessage(toolResponses, metadata);
            }
        };
    }

    private int estimateTokenCount(String text) {
        if (text == null) return 0;
        return text.length() / 4;
    }

    private String convertToString(Object value) {
        if (value == null) {
            return null;
        }
        if (value instanceof String) {
            return (String) value;
        }
        try {
            return objectMapper.writeValueAsString(value);
        } catch (JsonProcessingException e) {
            log.warn("Failed to serialize metadata value: {}", value, e);
            return value.toString();
        }
    }

    private void updateLastMessageAtWithRetry(UUID conversationId, int maxRetries) {
        for (int attempt = 1; attempt <= maxRetries; attempt++) {
            try {
                Conversation conversation = conversationRepo.findById(conversationId)
                        .orElseThrow(() -> new IllegalArgumentException("Conversation not found: " + conversationId));

                conversation.setLastMessageAt(LocalDateTime.now());
                conversationRepo.save(conversation);

                log.debug("Successfully updated lastMessageAt for conversation {} on attempt {}", conversationId, attempt);
                return;

            } catch (OptimisticLockingFailureException e) {
                log.warn("Optimistic locking failure when updating conversation {} (attempt {}/{}): {}",
                        conversationId, attempt, maxRetries, e.getMessage());

                if (attempt == maxRetries) {
                    log.error("Failed to update lastMessageAt for conversation {} after {} attempts",
                            conversationId, maxRetries);
                    throw new RuntimeException("Failed to update conversation after " + maxRetries + " attempts", e);
                }

                try {
                    Thread.sleep(10 * attempt);
                } catch (InterruptedException ie) {
                    Thread.currentThread().interrupt();
                    throw new RuntimeException("Interrupted during retry", ie);
                }
            }
        }
    }
}