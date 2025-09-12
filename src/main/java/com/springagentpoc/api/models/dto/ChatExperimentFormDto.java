package com.springagentpoc.api.models.dto;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Data;

@Data
@Schema(description = "Request for chat experiment endpoint")
public class ChatExperimentFormDto {

    @NotBlank(message = "Prompt cannot be blank")
    @Size(max = 10000, message = "Prompt cannot exceed 10000 characters")
    @Schema(description = "User prompt for the AI", example = "What is the capital of France?", required = true)
    private String prompt;
}
