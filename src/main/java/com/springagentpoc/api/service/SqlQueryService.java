package com.springagentpoc.api.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.ai.tool.annotation.Tool;
import org.springframework.ai.tool.annotation.ToolParam;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.*;
import java.util.regex.Pattern;

@Service
@RequiredArgsConstructor
@Slf4j
public class SqlQueryService {

    private static final Set<String> ALLOWED_KEYWORDS = Set.of(
            "SELECT", "FROM", "WHERE", "JOIN", "INNER", "LEFT", "RIGHT", "OUTER", "FULL",
            "ON", "GROUP", "BY", "HAVING", "ORDER", "LIMIT", "OFFSET", "AS", "AND", "OR",
            "NOT", "IN", "EXISTS", "BETWEEN", "LIKE", "IS", "NULL", "DISTINCT", "UNION",
            "CASE", "WHEN", "THEN", "ELSE", "END", "COUNT", "SUM", "AVG", "MIN", "MAX",
            "COALESCE", "CAST", "EXTRACT", "DATE_TRUNC", "NOW", "CURRENT_TIMESTAMP"
    );
    private static final Set<String> BLOCKED_KEYWORDS = Set.of(
            "DROP", "DELETE", "UPDATE", "INSERT", "ALTER", "CREATE", "TRUNCATE", "GRANT",
            "REVOKE", "EXEC", "EXECUTE", "CALL", "MERGE", "UPSERT", "REPLACE", "LOAD",
            "COPY", "BULK", "IMPORT", "EXPORT", "BACKUP", "RESTORE"
    );
    private static final Pattern SQL_INJECTION_PATTERN = Pattern.compile(
            "('([^']|'')*')|" +                    // Single quoted strings
                    "(;\\s*(DROP|DELETE|UPDATE|INSERT|ALTER|CREATE|TRUNCATE|GRANT|REVOKE)\\b)|" + // Dangerous statements after semicolon
                    "(--)|" +                              // SQL comments
                    "(/\\*.*?\\*/)",
            Pattern.CASE_INSENSITIVE | Pattern.DOTALL
    );
    private final JdbcTemplate jdbcTemplate;

    @Tool(description = """
            Execute SQL queries against the transaction database. Only SELECT queries are allowed for data analysis.
            
            Available Tables and Schema:
            
            1. transactions table:
               - id (UUID): Primary key
               - user_id (UUID): User who initiated the transaction  
               - amount (DECIMAL): Transaction amount in USD
               - type (VARCHAR): DEBIT, CREDIT, TRANSFER, REFUND
               - status (VARCHAR): PENDING, COMPLETED, FAILED, CANCELLED
               - description (TEXT): Transaction description/memo
               - reference_id (VARCHAR): External reference or merchant ID
               - created_at (TIMESTAMP): When transaction was created
               - updated_at (TIMESTAMP): When transaction was last updated
            
            2. conversations table:
               - id (UUID): Primary key
               - user_id (UUID): User who owns the conversation
               - title (VARCHAR): Conversation title
               - created_at (TIMESTAMP): When conversation was created
               - updated_at (TIMESTAMP): When conversation was last updated
            
            3. messages table:
               - id (UUID): Primary key
               - conversation_id (UUID): Foreign key to conversations
               - role (VARCHAR): USER, ASSISTANT, SYSTEM
               - content (TEXT): Message content
               - content_hash (VARCHAR): SHA-256 hash of content
               - created_at (TIMESTAMP): When message was created
            
            Example Queries:
            - Total income: SELECT SUM(amount) FROM transactions WHERE type = 'CREDIT' AND status = 'COMPLETED'
            - Monthly spending: SELECT DATE_TRUNC('month', created_at) as month, SUM(amount) FROM transactions WHERE type = 'DEBIT' GROUP BY month
            - Average transaction by type: SELECT type, AVG(amount) FROM transactions GROUP BY type
            - Failed transactions by hour: SELECT EXTRACT(hour FROM created_at) as hour, COUNT(*) FROM transactions WHERE status = 'FAILED' GROUP BY hour
            
            Always use proper SQL syntax and include appropriate WHERE clauses to filter data.
            """)
    public Map<String, Object> executeQuery(
            @ToolParam(description = "SQL SELECT query to execute against the database")
            String sqlQuery
    ) {
        log.debug("Executing SQL query: {}", sqlQuery);

        try {
            validateQuery(sqlQuery);

            jdbcTemplate.setQueryTimeout(30);

            List<Map<String, Object>> rows = jdbcTemplate.queryForList(sqlQuery);

            Map<String, Object> response = new HashMap<>();
            response.put("success", true);
            response.put("rowCount", rows.size());
            response.put("data", formatResults(rows));
            response.put("executedAt", LocalDateTime.now());

            log.debug("Query executed successfully, returned {} rows", rows.size());
            return response;

        } catch (Exception e) {
            log.error("Error executing SQL query: {}", e.getMessage());

            Map<String, Object> errorResponse = new HashMap<>();
            errorResponse.put("success", false);
            errorResponse.put("error", e.getMessage());
            errorResponse.put("executedAt", LocalDateTime.now());
            return errorResponse;
        }
    }

    private void validateQuery(String query) throws IllegalArgumentException {
        if (query == null || query.trim().isEmpty()) {
            throw new IllegalArgumentException("Query cannot be null or empty");
        }

        String upperQuery = query.toUpperCase().trim();

        if (!upperQuery.startsWith("SELECT")) {
            throw new IllegalArgumentException("Only SELECT queries are allowed");
        }

        for (String blockedKeyword : BLOCKED_KEYWORDS) {
            if (upperQuery.contains(blockedKeyword)) {
                throw new IllegalArgumentException("Blocked keyword detected: " + blockedKeyword);
            }
        }

        if (SQL_INJECTION_PATTERN.matcher(query).find()) {
            if (query.contains("--") || query.contains("/*") || query.matches(".*;\\s*(DROP|DELETE|UPDATE|INSERT|ALTER|CREATE).*")) {
                throw new IllegalArgumentException("Potentially dangerous SQL pattern detected");
            }
        }

        String[] tokens = upperQuery.split("\\s+");
        for (String token : tokens) {
            if (token.matches("\\d+|[(),.=<>!+\\-*/]|'[^']*'|\"[^\"]*\"")) {
                continue;
            }

            if (BLOCKED_KEYWORDS.contains(token)) {
                throw new IllegalArgumentException("Blocked keyword detected: " + token);
            }
        }

        if (query.length() > 2000) {
            throw new IllegalArgumentException("Query too long (max 2000 characters)");
        }
    }

    private List<Map<String, Object>> formatResults(List<Map<String, Object>> rows) {
        List<Map<String, Object>> formattedRows = new ArrayList<>();

        for (Map<String, Object> row : rows) {
            Map<String, Object> formattedRow = new LinkedHashMap<>();

            for (Map.Entry<String, Object> entry : row.entrySet()) {
                Object value = entry.getValue();

                if (value instanceof Timestamp) {
                    formattedRow.put(entry.getKey(), ((Timestamp) value).toLocalDateTime());
                } else if (value instanceof BigDecimal) {
                    formattedRow.put(entry.getKey(), ((BigDecimal) value).doubleValue());
                } else {
                    formattedRow.put(entry.getKey(), value);
                }
            }

            formattedRows.add(formattedRow);
        }

        return formattedRows;
    }
}