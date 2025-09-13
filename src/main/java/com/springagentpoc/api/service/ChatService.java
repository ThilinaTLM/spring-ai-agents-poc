package com.springagentpoc.api.service;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.springagentpoc.api.ai.memory.PostgresChatMemory;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.ai.chat.messages.Message;
import org.springframework.ai.chat.messages.SystemMessage;
import org.springframework.ai.chat.messages.UserMessage;
import org.springframework.ai.chat.model.ChatModel;
import org.springframework.ai.chat.model.ChatResponse;
import org.springframework.ai.chat.prompt.ChatOptions;
import org.springframework.ai.chat.prompt.Prompt;
import org.springframework.ai.model.tool.DefaultToolCallingManager;
import org.springframework.ai.model.tool.ToolCallingChatOptions;
import org.springframework.ai.model.tool.ToolCallingManager;
import org.springframework.ai.model.tool.ToolExecutionResult;
import org.springframework.ai.support.ToolCallbacks;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
@Slf4j
public class ChatService {

    private final ChatModel chatModel;
    private final PostgresChatMemory chatMemory;
    private final SqlQueryService sqlQueryService;
    private final String systemPrompt;
    private final ObjectMapper objectMapper;

    public String chat(String userPrompt, UUID userId, UUID conversationId) {
        log.debug("Processing chat with memory for conversation: {}", conversationId);

        chatMemory.createConversationIfNotExists(conversationId, userId, "New Conversation");

        ToolCallingManager toolCallingManager = DefaultToolCallingManager.builder().build();
        ChatOptions chatOptions = ToolCallingChatOptions.builder().toolCallbacks(ToolCallbacks.from(sqlQueryService)).internalToolExecutionEnabled(false).build();

        List<Message> conversationHistory = chatMemory.getWithTokenLimit(conversationId.toString());

        List<Message> messages = new ArrayList<>();
        messages.add(new SystemMessage(systemPrompt));
        messages.addAll(conversationHistory);
        messages.add(new UserMessage(userPrompt));

        Prompt prompt = new Prompt(messages, chatOptions);
        ChatResponse chatResponse = chatModel.call(prompt);
        chatMemory.add(conversationId.toString(), chatResponse.getResult().getOutput());

        while (chatResponse.hasToolCalls()) {
            try {
                ToolExecutionResult toolExecutionResult = toolCallingManager.executeToolCalls(prompt, chatResponse);
                String jsonConversationHistory = objectMapper.writeValueAsString(toolExecutionResult.conversationHistory());

//                chatMemory.add(conversationId.toString(), toolExecutionResult.conversationHistory().get(toolExecutionResult.conversationHistory().size() - 1));
                prompt = new Prompt(chatMemory.get(conversationId.toString()), chatOptions);
                chatResponse = chatModel.call(prompt);
                chatMemory.add(conversationId.toString(), chatResponse.getResult().getOutput());
            } catch (Exception e) {
                log.error("Error executing tool call: {}", e.getMessage(), e);
                String errorMessage = "I encountered an error while trying to execute a tool. Error: " + e.getMessage();
                chatMemory.add(conversationId.toString(), new UserMessage(errorMessage));
                break;
            }
        }

        return chatResponse.getResult().getOutput().getText();
    }

    public UUID startNewConversation(UUID userId, String title) {
        return UUID.randomUUID();
    }

    public void clearConversation(UUID conversationId) {
        chatMemory.clear(conversationId.toString());
    }
}
