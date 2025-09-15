package com.springagentpoc.api.util.eval;

import com.springagentpoc.api.util.SpringContext;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.ai.chat.messages.Message;
import org.springframework.ai.chat.messages.SystemMessage;
import org.springframework.ai.chat.model.ChatModel;

import java.util.ArrayList;
import java.util.List;

@Builder
@Getter
@Setter
public class Evaluator {

    private static final int CONVERSATION_HISTORY_LENGTH = 10;
    private static final int MAX_EVALUATION_ITERATIONS = 10;

    private ChatModel chatModel;
    private String userPrompt;

    @Builder.Default
    private int iteration = 0;
    @Builder.Default
    private List<EvaluationResult> pastResults = new ArrayList<>();

    private static String evaluatorPrompt() {
        return (String) SpringContext.getBean("evaluatorPrompt");
    }

    public EvaluationResult evaluate(List<Message> conversationHistory) {
        this.iteration++;
        EvaluationResult evaluationResult = ChatClient.builder(chatModel).build()
                .prompt().user(u -> u.text(evaluatorPrompt())
                        .param("current_query", userPrompt)
                        .param("conversation_history", sliceConversationHistory(conversationHistory))
                        .param("previous_evaluations", pastResults)
                )
                .call()
                .entity(EvaluationResult.class);

        if (evaluationResult == null) {
            throw new IllegalStateException("Evaluation result is null");
        }

        evaluationResult.setIteration(iteration);
        pastResults.add(evaluationResult);
        return evaluationResult;
    }

    private List<Message> sliceConversationHistory(List<Message> conversationHistory) {
        return conversationHistory.stream()
                .filter(m -> !(m instanceof SystemMessage))
                .skip(Math.max(0, conversationHistory.size() - CONVERSATION_HISTORY_LENGTH))
                .toList();
    }

    public boolean hasReachedMaxIterations() {
        return iteration >= MAX_EVALUATION_ITERATIONS;
    }
}
