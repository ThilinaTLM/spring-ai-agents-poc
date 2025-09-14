package com.springagentpoc.api.service;

import com.springagentpoc.api.data.entity.Conversation;
import com.springagentpoc.api.data.repo.ConversationRepo;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.ai.chat.messages.Message;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
@Slf4j
public class ChatMemoryService {

    private static final int MAX_MESSAGES_TO_LOAD = 20;
    private static final int MAX_TOKEN_COUNT = 4000;

    private final ConversationRepo conversationRepo;

    @Transactional
    public void addMessages(@NonNull UUID conversationId, List<Message> messages) {
        log.debug("Adding {} messages to conversation {}", messages.size(), conversationId);

        Conversation conversation = conversationRepo.findById(conversationId)
                .orElseThrow(() -> new IllegalArgumentException("Conversation not found: " + conversationId));

        conversation.addMessages(messages);
        updateTokenCount(conversation);
        conversationRepo.save(conversation);
    }

    @Transactional(readOnly = true)
    public @NonNull List<Message> getMessages(@NonNull UUID conversationId) {
        log.debug("Retrieving messages from conversation {}", conversationId);

        Conversation conversation = conversationRepo.findById(conversationId)
                .orElseThrow(() -> new IllegalArgumentException("Conversation not found: " + conversationId));

        List<Message> messages = conversation.getMessages();
        if (messages.size() <= MAX_MESSAGES_TO_LOAD) {
            return new ArrayList<>(messages);
        }

        return new ArrayList<>(messages.subList(messages.size() - MAX_MESSAGES_TO_LOAD, messages.size()));
    }

    @Transactional
    public void clearMessages(@NonNull UUID conversationId) {
        log.debug("Clearing messages for conversation {}", conversationId);

        Conversation conversation = conversationRepo.findById(conversationId)
                .orElseThrow(() -> new IllegalArgumentException("Conversation not found: " + conversationId));

        conversation.clearMessages();
        conversationRepo.save(conversation);
    }

    @Transactional(readOnly = true)
    public List<Message> getMessagesWithTokenLimit(UUID conversationId) {
        log.debug("Retrieving messages with token limit for conversation {}", conversationId);

        Conversation conversation = conversationRepo.findById(conversationId)
                .orElseThrow(() -> new IllegalArgumentException("Conversation not found: " + conversationId));

        List<Message> allMessages = conversation.getMessages();
        List<Message> result = new ArrayList<>();
        int totalTokens = 0;

        for (int i = allMessages.size() - 1; i >= 0; i--) {
            Message msg = allMessages.get(i);
            int msgTokens = estimateTokenCount(msg.getText());

            if (totalTokens + msgTokens > MAX_TOKEN_COUNT && !result.isEmpty()) {
                break;
            }

            result.add(0, msg);
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

    private void updateTokenCount(Conversation conversation) {
        int totalTokens = 0;
        for (Message message : conversation.getMessages()) {
            totalTokens += estimateTokenCount(message.getText());
        }
        conversation.setTotalTokenCount(totalTokens);
    }

    private int estimateTokenCount(String text) {
        if (text == null) return 0;
        return text.length() / 4;
    }

}