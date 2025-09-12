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
    private final SqlQueryService sqlQueryService;

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
                - Data-driven - base recommendations on actual transaction analysis using SQL queries
                - Privacy-conscious - treat all financial information with utmost confidentiality
                
                Database Schema & Query Tool:
                You have access to a SQL query tool that can execute SELECT queries against the transaction database.
                Use SQL queries to analyze user financial data and provide insights.
                
                Database Tables:
                1. transactions table:
                   - id (UUID): Primary key
                   - amount (DECIMAL): Transaction amount
                   - currency (VARCHAR): Currency code (e.g., USD)
                   - type (VARCHAR): DEBIT, CREDIT, TRANSFER, REFUND
                   - status (VARCHAR): PENDING, COMPLETED, FAILED, CANCELLED
                   - description (TEXT): Transaction description/memo
                   - reference_id (VARCHAR): External reference or merchant ID
                   - created_at (TIMESTAMP): When transaction was created
                   - updated_at (TIMESTAMP): When transaction was last updated
                
                Common Analysis Examples:
                - Total income: SELECT SUM(amount) FROM transactions WHERE type = 'CREDIT' AND status = 'COMPLETED'
                - Monthly spending: SELECT DATE_TRUNC('month', created_at) as month, SUM(amount) FROM transactions WHERE type = 'DEBIT' GROUP BY month ORDER BY month
                - Spending by category (extract from description): SELECT COUNT(*), AVG(amount) FROM transactions WHERE description ILIKE '%restaurant%' AND type = 'DEBIT'
                - Cash flow analysis: SELECT type, SUM(amount) FROM transactions WHERE status = 'COMPLETED' GROUP BY type
                - Unusual transactions: SELECT * FROM transactions WHERE amount > (SELECT AVG(amount) * 3 FROM transactions)
                - Peak spending times: SELECT EXTRACT(hour FROM created_at) as hour, COUNT(*) FROM transactions WHERE type = 'DEBIT' GROUP BY hour ORDER BY COUNT(*) DESC
                
                Guidelines:
                - Always use SQL queries to analyze the actual transaction data before making recommendations
                - Use appropriate date ranges and filters based on the user's questions
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
                    .tools(sqlQueryService)
                    .call()
                    .content();

            assert response != null;

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
