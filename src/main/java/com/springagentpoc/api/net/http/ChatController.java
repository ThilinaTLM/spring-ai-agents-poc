package com.springagentpoc.api.net.http;

import com.springagentpoc.api.annotation.UserId;
import com.springagentpoc.api.models.dto.ChatMessageDto;
import com.springagentpoc.api.models.dto.ChatMessageFormDto;
import com.springagentpoc.api.models.dto.ConversationDto;
import com.springagentpoc.api.models.dto.StartConversationFormDto;
import com.springagentpoc.api.service.ChatService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.UUID;

@RestController
@RequestMapping("/api/v1/chat")
@Tag(name = "Chat", description = "Endpoints for chat operations")
@RequiredArgsConstructor
@Slf4j
public class ChatController {

    private final ChatService chatService;

    @PostMapping("/conversation")
    @Operation(
            summary = "Start new conversation",
            description = "Create a new conversation for a user"
    )
    public ResponseEntity<ConversationDto> startConversation(
            @UserId UUID userId,
            @Valid @RequestBody StartConversationFormDto request
    ) {
        UUID conversationId = chatService.startNewConversation(
                userId,
                request.getTitle()
        );
        return ResponseEntity.ok(new ConversationDto(conversationId));
    }

    @PostMapping("/conversation/{conversationId}/message")
    @Operation(
            summary = "Send message with memory",
            description = "Send a message to an existing conversation with memory"
    )
    public ResponseEntity<ChatMessageDto> sendMessage(
            @UserId UUID userId,
            @PathVariable UUID conversationId,
            @Valid @RequestBody ChatMessageFormDto request
    ) {
        String response = chatService.chatWithMemory(
                request.getMessage(),
                userId,
                conversationId
        );
        return ResponseEntity.ok(new ChatMessageDto(response));
    }

    @DeleteMapping("/conversation/{conversationId}/messages")
    @Operation(
            summary = "Clear conversation",
            description = "Clear all messages from a conversation"
    )
    public ResponseEntity<Void> clearConversation(
            @UserId UUID userId,
            @PathVariable UUID conversationId
    ) {
        chatService.clearConversation(conversationId);
        return ResponseEntity.noContent().build();
    }
}
