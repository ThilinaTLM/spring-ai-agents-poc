package com.springagentpoc.api.data.entity;

import com.springagentpoc.api.data.embedded.ConversationStatus;
import jakarta.persistence.*;
import lombok.Data;
import lombok.extern.slf4j.Slf4j;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.annotations.UpdateTimestamp;
import org.hibernate.type.SqlTypes;
import org.springframework.ai.chat.messages.Message;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Entity
@Table(name = "conversations", indexes = {
        @Index(name = "idx_conversation_user", columnList = "user_id"),
        @Index(name = "idx_conversation_created", columnList = "created_at"),
        @Index(name = "idx_conversation_status", columnList = "status")
})
@Data
@Slf4j
public class Conversation {
    @Id
    @Column(name = "id", updatable = false, nullable = false)
    private UUID id;

    @Column(name = "user_id", nullable = false)
    private UUID userId;

    @Column(name = "title")
    private String title;

    @Enumerated(EnumType.STRING)
    @Column(name = "status", nullable = false, length = 20)
    private ConversationStatus status = ConversationStatus.ACTIVE;

    @JdbcTypeCode(SqlTypes.JSON)
    @Column(name = "messages", columnDefinition = "jsonb")
    private List<Message> messages = new ArrayList<>();

    @Column(name = "total_token_count")
    private Integer totalTokenCount = 0;

    @CreationTimestamp
    @Column(name = "created_at", nullable = false, updatable = false)
    private LocalDateTime createdAt;

    @UpdateTimestamp
    @Column(name = "updated_at")
    private LocalDateTime updatedAt;

    @Column(name = "last_message_at")
    private LocalDateTime lastMessageAt;

    @Version
    @Column(name = "version")
    private Long version;

    public void addMessage(Message message) {
        if (this.messages == null) {
            this.messages = new ArrayList<>();
        }
        this.messages.add(message);
        this.lastMessageAt = LocalDateTime.now();
    }

    public void addMessages(List<Message> messages) {
        if (this.messages == null) {
            this.messages = new ArrayList<>();
        }
        this.messages.addAll(messages);
        this.lastMessageAt = LocalDateTime.now();
    }

    public void clearMessages() {
        if (this.messages != null) {
            this.messages.clear();
        }
        this.lastMessageAt = null;
        this.totalTokenCount = 0;
    }

    public List<Message> getMessages() {
        if (this.messages == null) {
            this.messages = new ArrayList<>();
        }
        return this.messages;
    }
}
