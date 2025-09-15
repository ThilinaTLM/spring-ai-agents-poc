package com.springagentpoc.api.models.dto;

import com.springagentpoc.api.data.embedded.*;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.ai.chat.messages.*;

import java.util.List;
import java.util.Map;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Schema(description = "Chat message with all message details")
public class ChatMessageDto {

    @Schema(description = "Message role (USER, ASSISTANT, SYSTEM, TOOL)", example = "ASSISTANT")
    private MessageRole role;

    @Schema(description = "Message content", example = "Hello! I'm here to help you with any questions you have.")
    private String content;

    @Schema(description = "Additional message metadata")
    private Map<String, Object> metadata;

    @Schema(description = "Tool calls made in this message")
    private List<ChatToolCall> toolCalls;

    @Schema(description = "Media attachments in this message")
    private List<ChatMedia> media;

    @Schema(description = "Tool responses in this message")
    private List<ChatToolResponse> toolResponses;

    public static ChatMessageDto from(ChatMessage message) {
        return new ChatMessageDto(
                message.role(),
                message.content(),
                message.metadata(),
                message.toolCalls(),
                message.media(),
                message.toolResponses()
        );
    }

    public static ChatMessageDto from(Message message) {
        MessageRole role;
        if (message instanceof UserMessage) {
            role = MessageRole.USER;
        } else if (message instanceof SystemMessage) {
            role = MessageRole.SYSTEM;
        } else if (message instanceof AssistantMessage) {
            role = MessageRole.ASSISTANT;
        } else if (message instanceof ToolResponseMessage) {
            role = MessageRole.TOOL;
        } else {
            role = MessageRole.ASSISTANT;
        }

        List<ChatToolCall> toolCalls = null;
        if (message instanceof AssistantMessage assistantMessage) {
            toolCalls = assistantMessage.getToolCalls().stream()
                    .map(toolCall -> new ChatToolCall(
                            toolCall.id(),
                            toolCall.type(),
                            toolCall.name(),
                            toolCall.arguments()
                    ))
                    .toList();
        }

        List<ChatToolResponse> toolResponses = null;
        if (message instanceof ToolResponseMessage toolResponseMessage) {
            toolResponses = toolResponseMessage.getResponses().stream()
                    .map(response -> new ChatToolResponse(
                            response.id(),
                            response.name(),
                            response.responseData()
                    ))
                    .toList();
        }

        return new ChatMessageDto(
                role,
                message.getText(),
                message.getMetadata(),
                toolCalls,
                null,
                toolResponses
        );
    }
}
