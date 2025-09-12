package com.springagentpoc.api.ai.memory;

import com.springagentpoc.api.data.embedded.MessageRole;
import com.springagentpoc.api.data.entity.Conversation;
import com.springagentpoc.api.data.entity.Message;
import com.springagentpoc.api.data.repo.ConversationRepo;
import com.springagentpoc.api.data.repo.MessageRepo;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.ai.chat.memory.ChatMemory;
import org.springframework.ai.chat.messages.*;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;

@Component
@RequiredArgsConstructor
@Slf4j
@Transactional
public class PostgresChatMemory implements ChatMemory {

    private static final int MAX_MESSAGES_TO_LOAD = 20;
    private static final int MAX_TOKEN_COUNT = 4000;
    private final ConversationRepo conversationRepo;
    private final MessageRepo messageRepo;

    @Override
    public void add(@NonNull String conversationId, List<org.springframework.ai.chat.messages.Message> messages) {
        log.debug("Adding {} messages to conversation {}", messages.size(), conversationId);

        Conversation conversation = conversationRepo.findById(UUID.fromString(conversationId))
                .orElseThrow(() -> new IllegalArgumentException("Conversation not found: " + conversationId));

        for (org.springframework.ai.chat.messages.Message aiMessage : messages) {
            Message message = new Message();
            message.setConversation(conversation);
            message.setRole(mapAiRoleToDbRole(aiMessage.getMessageType()));
            message.setContent(aiMessage.getText());
            message.setTokenCount(estimateTokenCount(aiMessage.getText()));

            messageRepo.save(message);
        }

        conversation.setLastMessageAt(LocalDateTime.now());
        conversationRepo.save(conversation);
    }

    @Override
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
    public void clear(@NonNull String conversationId) {
        log.debug("Clearing messages for conversation {}", conversationId);

        Conversation conversation = conversationRepo.findById(UUID.fromString(conversationId))
                .orElseThrow(() -> new IllegalArgumentException("Conversation not found: " + conversationId));

        messageRepo.deleteAll(conversation.getMessages());
        conversation.getMessages().clear();
        conversation.setLastMessageAt(null);
        conversationRepo.save(conversation);
    }

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

    public UUID createOrGetConversation(UUID userId, String title) {
        Conversation conversation = new Conversation();
        conversation.setUserId(userId);
        conversation.setTitle(title != null ? title : "New Conversation");
        conversation = conversationRepo.save(conversation);
        return conversation.getId();
    }

    private MessageRole mapAiRoleToDbRole(MessageType messageType) {
        return switch (messageType) {
            case USER -> MessageRole.USER;
            case ASSISTANT -> MessageRole.ASSISTANT;
            case SYSTEM -> MessageRole.SYSTEM;
            case TOOL -> MessageRole.TOOL;
            default -> throw new IllegalArgumentException("Unknown message type: " + messageType);
        };
    }

    private org.springframework.ai.chat.messages.Message mapDbMessageToAiMessage(Message dbMessage) {
        return switch (dbMessage.getRole()) {
            case USER -> new UserMessage(dbMessage.getContent());
            case ASSISTANT -> new AssistantMessage(dbMessage.getContent());
            case SYSTEM -> new SystemMessage(dbMessage.getContent());
            case TOOL -> new ToolResponseMessage(
                    List.of(new ToolResponseMessage.ToolResponse("Tool", "Tool", dbMessage.getContent()))
            );
        };
    }

    private int estimateTokenCount(String text) {
        return text.length() / 4;
    }
}