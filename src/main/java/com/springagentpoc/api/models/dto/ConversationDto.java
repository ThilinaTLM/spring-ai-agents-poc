package com.springagentpoc.api.models.dto;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.UUID;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Schema(description = "Response containing conversation information")
public class ConversationDto {

    @Schema(description = "Unique identifier for the conversation", example = "f47ac10b-58cc-4372-a567-0e02b2c3d479")
    private UUID conversationId;
}
