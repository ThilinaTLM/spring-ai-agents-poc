package com.springagentpoc.api.net.http;

import com.springagentpoc.api.service.ChatService;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/chat")
@Tag(name = "Chat", description = "Endpoints for chat operations")
@RequiredArgsConstructor
public class ChatController {

    private final ChatService chatService;


}
