package com.springagentpoc.api.models.dto;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Schema(description = "Response from chat experiment endpoint")
public class ChatExperimentDto {

    @Schema(description = "AI generated response", example = "The capital of France is Paris.")
    private String response;

    @Schema(description = "Timestamp when the response was generated")
    private LocalDateTime timestamp;

    public ChatExperimentDto(String response) {
        this.response = response;
        this.timestamp = LocalDateTime.now();
    }
}
