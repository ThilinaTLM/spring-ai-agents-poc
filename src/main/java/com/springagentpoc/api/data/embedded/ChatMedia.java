package com.springagentpoc.api.data.embedded;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.Map;

public record ChatMedia(String mimeType, Object data, Map<String, Object> metadata) {
    @JsonCreator
    public ChatMedia(
            @JsonProperty("mimeType") String mimeType,
            @JsonProperty("data") Object data,
            @JsonProperty("metadata") Map<String, Object> metadata) {
        this.mimeType = mimeType;
        this.data = data;
        this.metadata = metadata;
    }
}