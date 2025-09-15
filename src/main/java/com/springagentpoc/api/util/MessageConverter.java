package com.springagentpoc.api.util;

import com.springagentpoc.api.data.embedded.*;
import org.springframework.ai.chat.messages.*;
import org.springframework.ai.content.Media;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

public class MessageConverter {

    public static ChatMessage fromSpringAI(Message message) {
        ChatMessage.Builder builder = ChatMessage.builder()
                .role(mapToMessageRole(message.getMessageType()))
                .content(message.getText())
                .metadata(message.getMetadata());

        switch (message.getMessageType()) {
            case USER -> {
                if (message instanceof UserMessage userMessage) {
                    List<ChatMedia> chatMedia = userMessage.getMedia().stream()
                            .map(MessageConverter::convertMedia)
                            .collect(Collectors.toList());
                    builder.media(chatMedia);
                }
            }
            case ASSISTANT -> {
                if (message instanceof AssistantMessage assistantMessage) {
                    List<ChatToolCall> chatToolCalls = assistantMessage.getToolCalls().stream()
                            .map(toolCall -> new ChatToolCall(
                                    toolCall.id(),
                                    toolCall.type(),
                                    toolCall.name(),
                                    toolCall.arguments()))
                            .collect(Collectors.toList());
                    builder.toolCalls(chatToolCalls);

                    List<ChatMedia> chatMedia = assistantMessage.getMedia().stream()
                            .map(MessageConverter::convertMedia)
                            .collect(Collectors.toList());
                    builder.media(chatMedia);
                }
            }
            case TOOL -> {
                if (message instanceof ToolResponseMessage toolResponseMessage) {
                    List<ChatToolResponse> chatToolResponses = toolResponseMessage.getResponses().stream()
                            .map(response -> new ChatToolResponse(
                                    response.id(),
                                    response.name(),
                                    response.responseData()))
                            .collect(Collectors.toList());
                    builder.toolResponses(chatToolResponses);
                }
            }
            case SYSTEM -> {
            }
        }

        return builder.build();
    }

    public static Message toSpringAI(ChatMessage chatMessage) {
        return switch (chatMessage.role()) {
            case USER -> createUserMessage(chatMessage);
            case ASSISTANT -> createAssistantMessage(chatMessage);
            case SYSTEM -> createSystemMessage(chatMessage);
            case TOOL -> createToolResponseMessage(chatMessage);
        };
    }

    private static MessageRole mapToMessageRole(MessageType messageType) {
        return switch (messageType) {
            case USER -> MessageRole.USER;
            case ASSISTANT -> MessageRole.ASSISTANT;
            case SYSTEM -> MessageRole.SYSTEM;
            case TOOL -> MessageRole.TOOL;
        };
    }


    private static ChatMedia convertMedia(Media media) {
        return new ChatMedia(
                media.getMimeType().toString(),
                media.getData(),
                Map.of()
        );
    }

    private static Media convertToChatMedia(ChatMedia chatMedia) {
        // Note: This is a simplified conversion. Media reconstruction from stored data
        // may require special handling based on your specific use case and data format.
        // For now, we'll throw an exception to indicate this needs implementation.
        throw new UnsupportedOperationException(
                "Converting ChatMedia back to Spring AI Media requires specific handling " +
                        "based on your data storage format. Implement this method based on your needs."
        );
    }

    private static UserMessage createUserMessage(ChatMessage chatMessage) {
        UserMessage.Builder builder = UserMessage.builder()
                .text(chatMessage.content())
                .metadata(chatMessage.metadata());

        if (!chatMessage.media().isEmpty()) {
            List<Media> media = chatMessage.media().stream()
                    .map(MessageConverter::convertToChatMedia)
                    .collect(Collectors.toList());
            builder.media(media);
        }

        return builder.build();
    }

    private static AssistantMessage createAssistantMessage(ChatMessage chatMessage) {
        List<AssistantMessage.ToolCall> toolCalls = chatMessage.toolCalls().stream()
                .map(tc -> new AssistantMessage.ToolCall(tc.id(), tc.type(), tc.name(), tc.arguments()))
                .collect(Collectors.toList());

        List<Media> media = chatMessage.media().stream()
                .map(MessageConverter::convertToChatMedia)
                .collect(Collectors.toList());

        return new AssistantMessage(
                chatMessage.content(),
                chatMessage.metadata(),
                toolCalls,
                media
        );
    }

    private static SystemMessage createSystemMessage(ChatMessage chatMessage) {
        return SystemMessage.builder()
                .text(chatMessage.content())
                .metadata(chatMessage.metadata())
                .build();
    }

    private static ToolResponseMessage createToolResponseMessage(ChatMessage chatMessage) {
        List<ToolResponseMessage.ToolResponse> responses = chatMessage.toolResponses().stream()
                .map(tr -> new ToolResponseMessage.ToolResponse(tr.id(), tr.name(), tr.responseData()))
                .collect(Collectors.toList());

        return new ToolResponseMessage(responses, chatMessage.metadata());
    }

    public static List<ChatMessage> fromSpringAIList(List<Message> messages) {
        return messages.stream()
                .map(MessageConverter::fromSpringAI)
                .collect(Collectors.toList());
    }

    public static List<Message> toSpringAIList(List<ChatMessage> chatMessages) {
        return chatMessages.stream()
                .map(MessageConverter::toSpringAI)
                .collect(Collectors.toList());
    }
}