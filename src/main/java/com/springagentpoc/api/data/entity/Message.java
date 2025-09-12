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

    @Column(name = "token_count")
    private Integer tokenCount;

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
