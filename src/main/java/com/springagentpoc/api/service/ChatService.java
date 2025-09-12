package com.springagentpoc.api.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.ai.chat.model.ChatModel;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Slf4j
public class ChatService {

    private final ChatModel chatModel;
    private final TransactionService transactionService;

    public String experimentChat(String userPrompt) {
        log.debug("Processing chat experiment with prompt: {}", userPrompt);

        try {
            String response = ChatClient.create(chatModel)
                    .prompt()
                    .user(userPrompt)
                    .tools(transactionService)
                    .call()
                    .content();

            log.debug("Generated AI response for experiment with tools");
            return response;
        } catch (Exception e) {
            log.error("Error generating AI response for experiment", e);
            throw new RuntimeException(
                    "Failed to generate AI response: " + e.getMessage(),
                    e
            );
        }
    }
}
