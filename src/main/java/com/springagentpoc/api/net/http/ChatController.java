package com.springagentpoc.api.net.http;

import com.springagentpoc.api.annotation.UserId;
import com.springagentpoc.api.models.dto.ChatMessageDto;
import com.springagentpoc.api.models.dto.ChatMessageFormDto;
import com.springagentpoc.api.service.ChatService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.ai.chat.messages.Message;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/api/v1/chat")
@Tag(name = "Chat", description = "Endpoints for chat operations")
@RequiredArgsConstructor
@Slf4j
public class ChatController {

    private final ChatService chatService;

    @PostMapping("/conversation/{conversationId}/message")
    @Operation(
            summary = "Send message with memory",
            description = "Send a message to a conversation. If the conversation doesn't exist, it will be created automatically."
    )
    public ResponseEntity<List<ChatMessageDto>> sendMessage(
            @UserId UUID userId,
            @PathVariable UUID conversationId,
            @Valid @RequestBody ChatMessageFormDto request
    ) {
        List<Message> messages = chatService.chat(
                request.getMessage(),
                userId,
                conversationId
        );
        return ResponseEntity.ok(messages.stream().map(ChatMessageDto::from).toList());
    }

    @GetMapping("/conversation/{conversationId}/messages")
    @Operation(
            summary = "Get conversation history",
            description = "Retrieve all messages from a conversation, excluding system prompts."
    )
    public ResponseEntity<List<ChatMessageDto>> getConversationHistory(
            @UserId UUID userId,
            @PathVariable UUID conversationId
    ) {
        List<ChatMessageDto> messages = chatService.getConversationHistory(conversationId, userId);
        return ResponseEntity.ok(messages);
    }
}
