package com.springagentpoc.api.data.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.UUID;

@Entity
@Getter
@Setter
@Table(name = "tool_responses",
        indexes = {
                @Index(name = "idx_tool_response_message", columnList = "message_id"),
                @Index(name = "idx_tool_response_sequence", columnList = "message_id, sequence_number")
        })
public class ToolResponse {
    @Id
    @GeneratedValue(strategy = GenerationType.UUID)
    @Column(name = "id", updatable = false, nullable = false)
    private UUID id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "message_id", nullable = false)
    private Message message;

    @Column(name = "tool_response_id")
    private String toolResponseId;

    @Column(name = "tool_name", nullable = false)
    private String name;

    @Column(name = "response_data", columnDefinition = "TEXT")
    private String responseData;

    @Column(name = "sequence_number", nullable = false)
    private Integer sequenceNumber;
}