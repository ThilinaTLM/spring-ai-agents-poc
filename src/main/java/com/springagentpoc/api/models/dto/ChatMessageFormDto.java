package com.springagentpoc.api.models.dto;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Data;

@Data
@Schema(description = "Request for sending a chat message")
public class ChatMessageFormDto {

    @NotBlank(message = "Message cannot be blank")
    @Size(max = 10000, message = "Message cannot exceed 10000 characters")
    @Schema(description = "User message content", example = "Hello, how can you help me?", required = true)
    private String message;
}
