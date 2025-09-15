package com.springagentpoc.api.data.embedded;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.util.Map;

@Data
public class ChatMedia {
    private final String mimeType;
    private final Object data;
    private final Map<String, Object> metadata;

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