package com.springagentpoc.api.ai.eval;

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
    private static final String EVALUATION_PROMPT = """
            You are an expert evaluator assessing the quality of an AI assistant's latest response.
            
            User's Current Query: {current_query}
            
            Recent Conversation History:
            {conversation_history}
            
            Previous Evaluation Results (if any):
            {previous_evaluations}
            
            Evaluate the assistant's latest response considering:
            1. Whether it correctly and completely addresses the user's query
            2. The appropriateness of any tool usage or technical elements
            3. The clarity and usefulness of the response
            4. Whether previous feedback has been incorporated (if applicable)
            5. Any safety or accuracy concerns
            
            Based on previous evaluations, pay special attention to:
            - Recurring issues that haven't been addressed
            - Improvements made since last evaluation
            - Patterns in the assistant's performance
            
            Respond ONLY with valid JSON in this exact format:
            {{
                "iteration": 0,
                "status": "PASS" | "NEEDS_IMPROVEMENT",
                "score": 0.0,
                "feedback": "Specific, actionable feedback focusing on: (1) what was done well, (2) what needs improvement, (3) whether previous issues were addressed"
            }}
            
            Scoring Guidelines:
            - Score between 0.0-1.0 where 1.0 is perfect
            - PASS: score >= 0.7 with no significant issues
            - NEEDS_IMPROVEMENT: score < 0.7 or has notable issues requiring attention
            
            Make feedback actionable and specific. If this is a follow-up evaluation, explicitly note whether previous issues were resolved.
            """;

    private static final int CONVERSATION_HISTORY_LENGTH = 10;
    private static final int MAX_EVALUATION_ITERATIONS = 10;

    private ChatModel chatModel;
    private String userPrompt;

    @Builder.Default
    private int iteration = 0;
    @Builder.Default
    private List<EvaluationResult> pastResults = new ArrayList<>();

    public EvaluationResult evaluate(List<Message> conversationHistory) {
        this.iteration++;
        EvaluationResult evaluationResult = ChatClient.builder(chatModel).build()
                .prompt().user(u -> u.text(EVALUATION_PROMPT)
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
