package com.springagentpoc.api.service;

import com.springagentpoc.api.ai.memory.PostgresChatMemory;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.ai.chat.messages.Message;
import org.springframework.ai.chat.messages.SystemMessage;
import org.springframework.ai.chat.messages.ToolResponseMessage;
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

    public String chat(String userPrompt, UUID userId, UUID conversationId) {
        log.debug("Processing chat with memory for conversation: {}", conversationId);

        ToolCallingManager toolCallingManager = DefaultToolCallingManager.builder().build();
        ChatOptions chatOptions = ToolCallingChatOptions.builder()
                .toolCallbacks(ToolCallbacks.from(sqlQueryService))
                .internalToolExecutionEnabled(false)
                .build();

        chatMemory.createConversationIfNotExists(conversationId, userId, "New Conversation");
        List<Message> messages = chatMemory.get(conversationId.toString());
        int chatMemoryInitialSize = messages.size();
        if (messages.isEmpty()) {
            messages.add(new SystemMessage(systemPrompt));
        }

        messages.add(new UserMessage(userPrompt));
        Prompt prompt = new Prompt(messages, chatOptions);
        ChatResponse chatResponse = chatModel.call(prompt);
        messages.add(chatResponse.getResult().getOutput());

        while (chatResponse.hasToolCalls()) {
            try {
                ToolExecutionResult toolExecutionResult = toolCallingManager.executeToolCalls(prompt, chatResponse);
                List<Message> toolExecutionResultMessages = toolExecutionResult.conversationHistory();
                if (toolExecutionResultMessages.size() > messages.size()) {
                    messages.addAll(toolExecutionResultMessages.subList(messages.size() + 1, toolExecutionResultMessages.size()));
                }

                prompt = new Prompt(messages, chatOptions);
                chatResponse = chatModel.call(prompt);
                messages.add(chatResponse.getResult().getOutput());
            } catch (Exception e) {
                log.error("Error executing tool call: {}", e.getMessage(), e);
                String errorMessage = "I encountered an error while trying to execute a tool. Error: " + e.getMessage();
                messages.add(new ToolResponseMessage(List.of(new ToolResponseMessage.ToolResponse("", "", errorMessage))));
                break;
            }
        }

        chatMemory.add(conversationId.toString(), messages.subList(chatMemoryInitialSize, messages.size()));
        return messages.get(messages.size() - 1).getText();
    }
}
