package com.springagentpoc.api.service;

import com.springagentpoc.api.ai.memory.PostgresChatMemory;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.ai.chat.client.advisor.MessageChatMemoryAdvisor;
import org.springframework.ai.chat.messages.Message;
import org.springframework.ai.chat.messages.SystemMessage;
import org.springframework.ai.chat.messages.UserMessage;
import org.springframework.ai.chat.model.ChatModel;
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

    public String chatWithMemory(String userPrompt, UUID userId, UUID conversationId) {
        log.debug("Processing chat with memory for conversation: {}", conversationId);

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
                - Remember context from our previous messages in this conversation
                """;

        try {
            List<Message> conversationHistory = chatMemory.getWithTokenLimit(conversationId.toString());

            List<Message> messages = new ArrayList<>();
            messages.add(new SystemMessage(systemPrompt));
            messages.addAll(conversationHistory);
            messages.add(new UserMessage(userPrompt));

            String response = ChatClient.create(chatModel)
                    .prompt()
                    .messages(messages)
                    .advisors(MessageChatMemoryAdvisor.builder(chatMemory).conversationId(conversationId.toString()).build())
                    .tools(transactionService, transactionAnalyticsService, transactionInsightsService)
                    .call()
                    .content();

            assert response != null;
            List<Message> exchangeMessages = List.of(
                    new UserMessage(userPrompt),
                    new org.springframework.ai.chat.messages.AssistantMessage(response)
            );
            chatMemory.add(conversationId.toString(), exchangeMessages);

            log.debug("Generated AI response with memory and tools");
            return response;
        } catch (Exception e) {
            log.error("Error generating AI response with memory", e);
            throw new RuntimeException(
                    "Failed to generate AI response: " + e.getMessage(),
                    e
            );
        }
    }

    public UUID startNewConversation(UUID userId, String title) {
        return chatMemory.createOrGetConversation(userId, title);
    }

    public void clearConversation(UUID conversationId) {
        chatMemory.clear(conversationId.toString());
    }
}
