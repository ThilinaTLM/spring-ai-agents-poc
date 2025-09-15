package com.springagentpoc.api.data.embedded;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class ChatToolCall {
    private final String id;
    private final String type;
    private final String name;
    private final String arguments;

    @JsonCreator
    public ChatToolCall(
            @JsonProperty("id") String id,
            @JsonProperty("type") String type,
            @JsonProperty("name") String name,
            @JsonProperty("arguments") String arguments) {
        this.id = id;
        this.type = type;
        this.name = name;
        this.arguments = arguments;
    }
}