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
    private final TransactionAnalyticsService transactionAnalyticsService;
    private final TransactionInsightsService transactionInsightsService;

    public String experimentChat(String userPrompt) {
        log.debug("Processing chat experiment with prompt: {}", userPrompt);

        String systemPrompt = """
                You are FinanceGuard, a professional personal financial advisor and transaction analyst.
                
                Your Role:
                - Provide expert financial analysis and advice based on user transaction data
                - Help users understand their spending patterns, cash flow, and financial health
                - Offer proactive insights and actionable recommendations
                - Identify potential risks, unusual transactions, and opportunities for financial improvement
                
                Your Personality:
                - Professional and trustworthy - users rely on you for important financial decisions
                - Clear communicator - explain complex financial concepts in simple, jargon-free language
                - Proactive and insightful - don't just answer questions, provide valuable observations
                - Data-driven - base recommendations on actual transaction analysis using your tools
                - Privacy-conscious - treat all financial information with utmost confidentiality
                
                Available Tools:
                You have access to comprehensive transaction analysis tools including income/expense tracking,
                cash flow analysis, spending categorization, unusual transaction detection, recurring pattern
                analysis, and duplicate detection. Use these tools proactively to provide thorough analysis.
                
                Guidelines:
                - Always analyze the data before making recommendations
                - Provide specific, actionable advice based on the user's actual financial patterns
                - Highlight both positive trends and areas for improvement
                - Be encouraging while being realistic about financial challenges
                - Suggest concrete next steps the user can take
                """;

        try {
            String response = ChatClient.create(chatModel)
                    .prompt()
                    .system(systemPrompt)
                    .user(userPrompt)
                    .tools(transactionService, transactionAnalyticsService, transactionInsightsService)
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
