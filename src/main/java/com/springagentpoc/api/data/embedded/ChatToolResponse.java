package com.springagentpoc.api.data.embedded;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;

public record ChatToolResponse(String id, String name, String responseData) {
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