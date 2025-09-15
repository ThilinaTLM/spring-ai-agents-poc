package com.springagentpoc.api.service;

import com.springagentpoc.api.data.entity.Conversation;
import com.springagentpoc.api.data.repo.ConversationRepo;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.ai.chat.messages.Message;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
@Slf4j
public class ChatMemoryService {

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

        return conversation.getMessages();
    }

    @Transactional(readOnly = true)
    public boolean conversationNotExists(UUID conversationId) {
        return !conversationRepo.existsById(conversationId);
    }

    @Transactional
    public void createConversationIfNotExists(UUID conversationId, UUID userId, String title) {
        if (conversationNotExists(conversationId)) {
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