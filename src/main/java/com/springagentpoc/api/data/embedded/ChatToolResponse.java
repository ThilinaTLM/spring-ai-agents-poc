package com.springagentpoc.api.data.embedded;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

@Data
public class ChatToolResponse {
    private final String id;
    private final String name;
    private final String responseData;

    @JsonCreator
    public ChatToolResponse(
            @JsonProperty("id") String id,
            @JsonProperty("name") String name,
            @JsonProperty("responseData") String responseData) {
        this.id = id;
        this.name = name;
        this.responseData = responseData;
    }
}