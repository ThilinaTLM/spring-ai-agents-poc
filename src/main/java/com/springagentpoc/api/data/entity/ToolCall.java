package com.springagentpoc.api.data.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.UUID;

@Entity
@Getter
@Setter
@Table(name = "tool_calls",
        indexes = {
                @Index(name = "idx_tool_call_message", columnList = "message_id"),
                @Index(name = "idx_tool_call_sequence", columnList = "message_id, sequence_number")
        })
public class ToolCall {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(name = "id", updatable = false, nullable = false)
    private UUID id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "message_id", nullable = false)
    private Message message;

    @Column(name = "tool_call_id")
    private String toolCallId;

    @Column(name = "tool_type", length = 50)
    private String type;

    @Column(name = "tool_name", nullable = false)
    private String name;

    @Column(name = "arguments", columnDefinition = "TEXT")
    private String arguments;

    @Column(name = "sequence_number", nullable = false)
    private Integer sequenceNumber;
}