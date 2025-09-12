package com.springagentpoc.api.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.ai.chat.messages.UserMessage;
import org.springframework.ai.chat.model.ChatModel;
import org.springframework.ai.chat.prompt.Prompt;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Slf4j
public class ChatService {

    private final ChatModel chatModel;

    public String experimentChat(String userPrompt) {
        log.debug("Processing chat experiment with prompt: {}", userPrompt);

        try {
            UserMessage userMessage = new UserMessage(userPrompt);
            Prompt prompt = new Prompt(userMessage);

            var chatResponse = chatModel.call(prompt);
            String response = chatResponse.getResult().getOutput().getText();

            log.debug("Generated AI response for experiment");
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
