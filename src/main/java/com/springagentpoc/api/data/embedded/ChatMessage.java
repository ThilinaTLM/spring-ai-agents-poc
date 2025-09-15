package com.springagentpoc.api.data.embedded;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Data
public class ChatMessage {
    private final MessageRole role;
    private final String content;
    private final Map<String, Object> metadata;
    private final List<ChatToolCall> toolCalls;
    private final List<ChatMedia> media;
    private final List<ChatToolResponse> toolResponses;

    @JsonCreator
    public ChatMessage(
            @JsonProperty("role") MessageRole role,
            @JsonProperty("content") String content,
            @JsonProperty("metadata") Map<String, Object> metadata,
            @JsonProperty("toolCalls") List<ChatToolCall> toolCalls,
            @JsonProperty("media") List<ChatMedia> media,
            @JsonProperty("toolResponses") List<ChatToolResponse> toolResponses) {
        this.role = role;
        this.content = content;
        this.metadata = metadata != null ? new HashMap<>(metadata) : new HashMap<>();
        this.toolCalls = toolCalls != null ? new ArrayList<>(toolCalls) : new ArrayList<>();
        this.media = media != null ? new ArrayList<>(media) : new ArrayList<>();
        this.toolResponses = toolResponses != null ? new ArrayList<>(toolResponses) : new ArrayList<>();
    }

    public static Builder builder() {
        return new Builder();
    }

    public static class Builder {
        private MessageRole role;
        private String content;
        private Map<String, Object> metadata = new HashMap<>();
        private List<ChatToolCall> toolCalls = new ArrayList<>();
        private List<ChatMedia> media = new ArrayList<>();
        private List<ChatToolResponse> toolResponses = new ArrayList<>();

        public Builder role(MessageRole role) {
            this.role = role;
            return this;
        }

        public Builder content(String content) {
            this.content = content;
            return this;
        }

        public Builder metadata(Map<String, Object> metadata) {
            this.metadata = metadata != null ? new HashMap<>(metadata) : new HashMap<>();
            return this;
        }

        public Builder toolCalls(List<ChatToolCall> toolCalls) {
            this.toolCalls = toolCalls != null ? new ArrayList<>(toolCalls) : new ArrayList<>();
            return this;
        }

        public Builder media(List<ChatMedia> media) {
            this.media = media != null ? new ArrayList<>(media) : new ArrayList<>();
            return this;
        }

        public Builder toolResponses(List<ChatToolResponse> toolResponses) {
            this.toolResponses = toolResponses != null ? new ArrayList<>(toolResponses) : new ArrayList<>();
            return this;
        }

        public ChatMessage build() {
            return new ChatMessage(role, content, metadata, toolCalls, media, toolResponses);
        }
    }
}