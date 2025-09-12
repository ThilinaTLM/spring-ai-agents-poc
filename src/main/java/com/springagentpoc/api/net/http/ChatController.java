package com.springagentpoc.api.net.http;

import com.springagentpoc.api.models.dto.ChatExperimentDto;
import com.springagentpoc.api.models.dto.ChatExperimentFormDto;
import com.springagentpoc.api.service.ChatService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/chat")
@Tag(name = "Chat", description = "Endpoints for chat operations")
@RequiredArgsConstructor
@Slf4j
public class ChatController {

    private final ChatService chatService;

    @PostMapping("/experiment")
    @Operation(
            summary = "Chat experiment",
            description = "Send a prompt to the AI and receive a response for experimental purposes"
    )
    public ResponseEntity<ChatExperimentDto> experimentChat(
            @Valid @RequestBody ChatExperimentFormDto request
    ) {
        log.info("Received chat experiment request");

        String aiResponse = chatService.experimentChat(request.getPrompt());
        ChatExperimentDto response = new ChatExperimentDto(
                aiResponse
        );

        return ResponseEntity.ok(response);
    }
}
