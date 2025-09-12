package com.springagentpoc.api.models.dto;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;
import lombok.Data;

@Data
@Schema(description = "Request for starting a new conversation")
public class StartConversationFormDto {

    @NotBlank(message = "Title cannot be blank")
    @Size(max = 255, message = "Title cannot exceed 255 characters")
    @Schema(description = "Conversation title", example = "My Chat Session", required = true)
    private String title;
}
