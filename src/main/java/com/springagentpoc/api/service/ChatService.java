package com.springagentpoc.api.service;

import com.springagentpoc.api.models.dto.ChatMessageDto;
import com.springagentpoc.api.util.eval.EvaluationResult;
import com.springagentpoc.api.util.eval.Evaluator;
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
import java.util.Map;
import java.util.UUID;

@Service
@RequiredArgsConstructor
@Slf4j
public class ChatService {

    private final ChatModel chatModel;
    private final ChatMemoryService chatMemory;
    private final SqlQueryService sqlQueryService;
    private final String systemPrompt;

    public List<ChatMessageDto> getConversationHistory(UUID conversationId, UUID userId) {
        log.debug("Retrieving conversation history for conversation: {}, user: {}", conversationId, userId);

        if (chatMemory.conversationNotExists(conversationId)) {
            return List.of();
        }

        List<Message> messages = chatMemory.getMessages(conversationId);

        return messages.stream()
                .filter(message -> !(message instanceof SystemMessage))
                .map(ChatMessageDto::from)
                .toList();
    }

    public List<Message> chat(String userPrompt, UUID userId, UUID conversationId) {
        log.debug("Processing chat with memory for conversation: {}", conversationId);

        ToolCallingManager toolCallingManager = DefaultToolCallingManager.builder().build();
        ChatOptions chatOptions = ToolCallingChatOptions.builder().toolCallbacks(ToolCallbacks.from(sqlQueryService)).internalToolExecutionEnabled(false).build();

        chatMemory.createConversationIfNotExists(conversationId, userId, "New Conversation");
        List<Message> messages = chatMemory.getMessages(conversationId);
        int chatMemoryInitialSize = messages.size();
        if (messages.isEmpty()) {
            messages.add(new SystemMessage(systemPrompt));
        }

        messages.add(UserMessage.builder()
                .text(userPrompt)
                .metadata(Map.of("source", "user"))
                .build());
        Prompt prompt = new Prompt(messages, chatOptions);
        ChatResponse chatResponse = chatModel.call(prompt);
        messages.add(chatResponse.getResult().getOutput());

        Evaluator evaluator = Evaluator.builder()
                .chatModel(chatModel)
                .userPrompt(userPrompt)
                .build();

        while (!evaluator.hasReachedMaxIterations()) {
            while (chatResponse.hasToolCalls()) {
                String toolId = chatResponse.getResult().getOutput().getToolCalls().get(0).id();
                String toolName = chatResponse.getResult().getOutput().getToolCalls().get(0).name();

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
                    String errorMessage = "You have got following error while executing the tool: " + e.getMessage();
                    messages.add(new ToolResponseMessage(List.of(new ToolResponseMessage.ToolResponse(
                            toolId, toolName,
                            errorMessage
                    ))));

                    prompt = new Prompt(messages, chatOptions);
                    chatResponse = chatModel.call(prompt);
                    messages.add(chatResponse.getResult().getOutput());
                }
            }

            EvaluationResult evaluationResult = evaluator.evaluate(messages);
            if (evaluationResult.getStatus() == EvaluationResult.EvaluationStatus.PASS) {
                log.info("Response passed evaluation with score: {}", evaluationResult.getScore());
                break;
            } else if (evaluationResult.getStatus() == EvaluationResult.EvaluationStatus.NEEDS_IMPROVEMENT) {
                log.info("Response needs improvement with score: {}", evaluationResult.getScore());

                String feedbackPromptMessage = evaluator.hasReachedMaxIterations() ?
                        "The last response was rated as NEEDS_IMPROVEMENT. " +
                                "However, the maximum number of improvement iterations has been reached. " +
                                "Please provide the best possible response based on previous feedback: " + evaluationResult.getFeedback() :
                        "The last response was rated as NEEDS_IMPROVEMENT. " +
                                "Please improve it based on the following feedback: " + evaluationResult.getFeedback();

                messages.add(UserMessage.builder()
                        .text(feedbackPromptMessage)
                        .metadata(Map.of("source", "evaluator"))
                        .build());

                prompt = new Prompt(messages, chatOptions);
                chatResponse = chatModel.call(prompt);
                messages.add(chatResponse.getResult().getOutput());
            } else {
                log.error("Unexpected evaluation status: {}", evaluationResult.getStatus());
                throw new IllegalStateException("Unexpected evaluation status: " + evaluationResult.getStatus());
            }
        }

        List<Message> newMessages = messages.subList(chatMemoryInitialSize, messages.size());
        chatMemory.addMessages(conversationId, newMessages);
        return newMessages;
    }


}
