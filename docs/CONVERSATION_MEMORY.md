I'll help you create a custom chat memory implementation for Spring AI using your existing PostgreSQL tables. Here's a
comprehensive solution:

## 1. First, let's add a few useful fields to your entities:

### Updated Message Entity

```java
package com.springagentpoc.api.data.entity;

import com.springagentpoc.api.data.embedded.MessageRole;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;

import java.time.LocalDateTime;
import java.util.Map;
import java.util.UUID;

@Entity
@Getter
@Setter
@Table(name = "messages", indexes = {
        @Index(name = "idx_message_conversation", columnList = "conversation_id"),
        @Index(name = "idx_message_created", columnList = "created_at"),
        @Index(name = "idx_message_role", columnList = "role")
})
public class Message {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(name = "id", updatable = false, nullable = false)
    private UUID id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "conversation_id", nullable = false)
    private Conversation conversation;

    @Enumerated(EnumType.STRING)
    @Column(name = "role", nullable = false, length = 20)
    private MessageRole role;

    @Column(name = "content", columnDefinition = "TEXT", nullable = false)
    private String content;

    // Add token count for managing a context window
    @Column(name = "token_count")
    private Integer tokenCount;

    // Add metadata for storing additional information
    @ElementCollection
    @CollectionTable(name = "message_metadata",
            joinColumns = @JoinColumn(name = "message_id"))
    @MapKeyColumn(name = "metadata_key")
    @Column(name = "metadata_value")
    private Map<String, String> metadata;

    @CreationTimestamp
    @Column(name = "created_at", nullable = false, updatable = false)
    private LocalDateTime createdAt;
}
```

### Add MessageRole enum if you don't have it:

```java
package com.springagentpoc.api.data.embedded;

public enum MessageRole {
    USER,
    ASSISTANT,
    SYSTEM,
    FUNCTION
}
```

## 2. Create Repository interfaces:

```java
package com.springagentpoc.api.repository;

import com.springagentpoc.api.data.entity.Conversation;
import com.springagentpoc.api.data.embedded.ConversationStatus;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.Optional;
import java.util.UUID;

@Repository
public interface ConversationRepository extends JpaRepository<Conversation, UUID> {

    Optional<Conversation> findByIdAndUserId(UUID id, UUID userId);

    @Query("SELECT c FROM Conversation c LEFT JOIN FETCH c.messages WHERE c.id = :id")
    Optional<Conversation> findByIdWithMessages(UUID id);
}
```

```java
package com.springagentpoc.api.repository;

import com.springagentpoc.api.data.entity.Message;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface MessageRepository extends JpaRepository<Message, UUID> {

    @Query("SELECT m FROM Message m WHERE m.conversation.id = :conversationId ORDER BY m.createdAt DESC")
    List<Message> findLatestMessagesByConversationId(UUID conversationId, Pageable pageable);

    List<Message> findByConversationIdOrderByCreatedAtAsc(UUID conversationId);

    @Query("SELECT SUM(m.tokenCount) FROM Message m WHERE m.conversation.id = :conversationId")
    Integer getTotalTokenCountByConversationId(UUID conversationId);
}
```

## 3. Create Custom ChatMemory Implementation:

```java
package com.springagentpoc.api.ai.memory;

import com.springagentpoc.api.data.embedded.MessageRole;
import com.springagentpoc.api.data.entity.Conversation;
import com.springagentpoc.api.data.entity.Message;
import com.springagentpoc.api.repository.ConversationRepository;
import com.springagentpoc.api.repository.MessageRepository;
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

    private final ConversationRepository conversationRepository;
    private final MessageRepository messageRepository;

    // Configuration
    private static final int MAX_MESSAGES_TO_LOAD = 20;
    private static final int MAX_TOKEN_COUNT = 4000; // Adjust based on your model

    @Override
    public void add(String conversationId, List<org.springframework.ai.chat.messages.Message> messages) {
        log.debug("Adding {} messages to conversation {}", messages.size(), conversationId);

        Conversation conversation = conversationRepository.findById(UUID.fromString(conversationId))
                .orElseThrow(() -> new IllegalArgumentException("Conversation not found: " + conversationId));

        for (org.springframework.ai.chat.messages.Message aiMessage : messages) {
            Message message = new Message();
            message.setConversation(conversation);
            message.setRole(mapAiRoleToDbRole(aiMessage.getMessageType()));
            message.setContent(aiMessage.getContent());
            message.setTokenCount(estimateTokenCount(aiMessage.getContent()));

            messageRepository.save(message);
        }

        // Update conversation's last message timestamp
        conversation.setLastMessageAt(LocalDateTime.now());
        conversationRepository.save(conversation);
    }

    @Override
    public List<org.springframework.ai.chat.messages.Message> get(String conversationId, int lastN) {
        log.debug("Retrieving last {} messages from conversation {}", lastN, conversationId);

        List<Message> messages = messageRepository.findLatestMessagesByConversationId(
                UUID.fromString(conversationId),
                PageRequest.of(0, lastN)
        );

        // Reverse to get chronological order
        List<Message> chronologicalMessages = new ArrayList<>(messages);
        java.util.Collections.reverse(chronologicalMessages);

        return chronologicalMessages.stream()
                .map(this::mapDbMessageToAiMessage)
                .collect(Collectors.toList());
    }

    @Override
    public void clear(String conversationId) {
        log.debug("Clearing messages for conversation {}", conversationId);

        Conversation conversation = conversationRepository.findById(UUID.fromString(conversationId))
                .orElseThrow(() -> new IllegalArgumentException("Conversation not found: " + conversationId));

        messageRepository.deleteAll(conversation.getMessages());
        conversation.getMessages().clear();
        conversation.setLastMessageAt(null);
        conversationRepository.save(conversation);
    }

    /**
     * Get messages with token limit consideration
     */
    public List<org.springframework.ai.chat.messages.Message> getWithTokenLimit(String conversationId) {
        log.debug("Retrieving messages with token limit for conversation {}", conversationId);

        List<Message> allMessages = messageRepository.findByConversationIdOrderByCreatedAtAsc(
                UUID.fromString(conversationId)
        );

        List<org.springframework.ai.chat.messages.Message> result = new ArrayList<>();
        int totalTokens = 0;

        // Iterate from newest to oldest, adding messages until we hit the token limit
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

    /**
     * Create or get a conversation for a user
     */
    public UUID createOrGetConversation(UUID userId, String title) {
        Conversation conversation = new Conversation();
        conversation.setUserId(userId);
        conversation.setTitle(title != null ? title : "New Conversation");
        conversation = conversationRepository.save(conversation);
        return conversation.getId();
    }

    private MessageRole mapAiRoleToDbRole(MessageType messageType) {
        return switch (messageType) {
            case USER -> MessageRole.USER;
            case ASSISTANT -> MessageRole.ASSISTANT;
            case SYSTEM -> MessageRole.SYSTEM;
            case FUNCTION -> MessageRole.FUNCTION;
            default -> throw new IllegalArgumentException("Unknown message type: " + messageType);
        };
    }

    private org.springframework.ai.chat.messages.Message mapDbMessageToAiMessage(Message dbMessage) {
        return switch (dbMessage.getRole()) {
            case USER -> new UserMessage(dbMessage.getContent());
            case ASSISTANT -> new AssistantMessage(dbMessage.getContent());
            case SYSTEM -> new SystemMessage(dbMessage.getContent());
            case FUNCTION -> new FunctionMessage(dbMessage.getContent());
        };
    }

    private int estimateTokenCount(String text) {
        // Simple estimation: ~4 characters per token
        // For production, use a proper tokenizer library
        return text.length() / 4;
    }
}
```

## 4. Create a Memory-Aware ChatService:

```java
package com.springagentpoc.api.service;

import com.springagentpoc.api.ai.memory.PostgresChatMemory;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.ai.chat.client.advisor.MessageChatMemoryAdvisor;
import org.springframework.ai.chat.memory.InMemoryChatMemory;
import org.springframework.ai.chat.messages.Message;
import org.springframework.ai.chat.messages.SystemMessage;
import org.springframework.ai.chat.messages.UserMessage;
import org.springframework.ai.chat.model.ChatModel;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
@Slf4j
public class ChatService {

    private final ChatModel chatModel;
    private final PostgresChatMemory chatMemory;
    private final TransactionService transactionService;
    private final TransactionAnalyticsService transactionAnalyticsService;
    private final TransactionInsightsService transactionInsightsService;

    public String chatWithMemory(String userPrompt, UUID userId, UUID conversationId) {
        log.debug("Processing chat with memory for conversation: {}", conversationId);

        String systemPrompt = """
                You are FinanceGuard, a professional personal financial advisor and transaction analyst.
                
                Your Role:
                - Provide expert financial analysis and advice based on user transaction data
                - Help users understand their spending patterns, cash flow, and financial health
                - Offer proactive insights and actionable recommendations
                - Identify potential risks, unusual transactions, and opportunities for financial improvement
                
                Your Personality:
                - Professional and trustworthy - users rely on you for important financial decisions
                - Clear communicator - explain complex financial concepts in simple, jargon-free language
                - Proactive and insightful - don't just answer questions, provide valuable observations
                - Data-driven - base recommendations on actual transaction analysis using your tools
                - Privacy-conscious - treat all financial information with utmost confidentiality
                
                Available Tools:
                You have access to comprehensive transaction analysis tools including income/expense tracking,
                cash flow analysis, spending categorization, unusual transaction detection, recurring pattern
                analysis, and duplicate detection. Use these tools proactively to provide thorough analysis.
                
                Guidelines:
                - Always analyze the data before making recommendations
                - Provide specific, actionable advice based on the user's actual financial patterns
                - Highlight both positive trends and areas for improvement
                - Be encouraging while being realistic about financial challenges
                - Suggest concrete next steps the user can take
                - Remember context from our previous messages in this conversation
                """;

        try {
            // Get conversation history with token limit
            List<Message> conversationHistory = chatMemory.getWithTokenLimit(conversationId.toString());

            // Build the complete message list
            List<Message> messages = new ArrayList<>();
            messages.add(new SystemMessage(systemPrompt));
            messages.addAll(conversationHistory);
            messages.add(new UserMessage(userPrompt));

            // Create chat client with memory advisor
            String response = ChatClient.create(chatModel)
                    .prompt()
                    .messages(messages)
                    .advisors(new MessageChatMemoryAdvisor(chatMemory, conversationId.toString(), 10))
                    .tools(transactionService, transactionAnalyticsService, transactionInsightsService)
                    .call()
                    .content();

            // Save the exchange to memory
            List<Message> exchangeMessages = List.of(
                    new UserMessage(userPrompt),
                    new org.springframework.ai.chat.messages.AssistantMessage(response)
            );
            chatMemory.add(conversationId.toString(), exchangeMessages);

            log.debug("Generated AI response with memory and tools");
            return response;
        } catch (Exception e) {
            log.error("Error generating AI response with memory", e);
            throw new RuntimeException(
                    "Failed to generate AI response: " + e.getMessage(),
                    e
            );
        }
    }

    public UUID startNewConversation(UUID userId, String title) {
        return chatMemory.createOrGetConversation(userId, title);
    }

    public void clearConversation(UUID conversationId) {
        chatMemory.clear(conversationId.toString());
    }
}
```

## 5. Create a Controller to handle chat requests:

```java
package com.springagentpoc.api.controller;

import com.springagentpoc.api.service.ChatService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@RestController
@RequestMapping("/api/chat")
@RequiredArgsConstructor
@Slf4j
public class ChatController {

    private final ChatService chatService;

    @PostMapping("/conversation")
    public ResponseEntity<ConversationResponse> startConversation(
            @RequestHeader("X-User-Id") UUID userId,
            @RequestBody StartConversationRequest request) {

        UUID conversationId = chatService.startNewConversation(userId, request.title());
        return ResponseEntity.ok(new ConversationResponse(conversationId));
    }

    @PostMapping("/conversation/{conversationId}/message")
    public ResponseEntity<ChatResponse> sendMessage(
            @RequestHeader("X-User-Id") UUID userId,
            @PathVariable UUID conversationId,
            @RequestBody ChatRequest request) {

        String response = chatService.chatWithMemory(request.message(), userId, conversationId);
        return ResponseEntity.ok(new ChatResponse(response));
    }

    @DeleteMapping("/conversation/{conversationId}/messages")
    public ResponseEntity<Void> clearConversation(
            @RequestHeader("X-User-Id") UUID userId,
            @PathVariable UUID conversationId) {

        chatService.clearConversation(conversationId);
        return ResponseEntity.noContent().build();
    }

    record StartConversationRequest(String title) {
    }

    record ConversationResponse(UUID conversationId) {
    }

    record ChatRequest(String message) {
    }

    record ChatResponse(String response) {
    }
}
```

## Key Features of this implementation:

1. **Persistent Memory**: All conversations and messages are stored in PostgreSQL
2. **Token Management**: Tracks token counts to manage context window
3. **Conversation Management**: Support for multiple conversations per user
4. **History Retrieval**: Efficient retrieval of conversation history with pagination
5. **Context Window Management**: Automatically manages the context window size
6. **Spring AI Integration**: Works seamlessly with Spring AI's ChatClient and advisors

## Usage Example:

```java
// Start a new conversation
UUID conversationId = chatService.startNewConversation(userId, "Financial Planning");

// Chat with memory
String response = chatService.chatWithMemory(
        "What are my spending patterns this month?",
        userId,
        conversationId
);

// Continue the conversation - it will remember previous context
String followUp = chatService.chatWithMemory(
        "How can I reduce my expenses?",
        userId,
        conversationId
);
```

This implementation provides a robust foundation for chat memory in Spring AI while leveraging your existing database
structure. You can further customize it based on your specific requirements, such as adding conversation summarization,
semantic search over past conversations, or more sophisticated token counting.