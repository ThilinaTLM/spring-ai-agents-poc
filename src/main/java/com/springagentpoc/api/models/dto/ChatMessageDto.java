package com.springagentpoc.api.models.dto;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Schema(description = "Response containing chat message")
public class ChatMessageDto {

    @Schema(description = "AI generated response message", example = "Hello! I'm here to help you with any questions you have.")
    private String response;
}
