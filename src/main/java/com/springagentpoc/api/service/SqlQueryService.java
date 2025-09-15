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

    private static final Pattern DANGEROUS_KEYWORD_PATTERN = Pattern.compile(
            "\\b(DROP|DELETE|UPDATE|INSERT|ALTER|CREATE|TRUNCATE|GRANT|REVOKE|EXEC|EXECUTE|CALL|MERGE|UPSERT|REPLACE|LOAD|COPY|BULK|IMPORT|EXPORT|BACKUP|RESTORE)\\b",
            Pattern.CASE_INSENSITIVE
    );

    private static final Pattern SQL_COMMENT_PATTERN = Pattern.compile(
            "--.*$|/\\*.*?\\*/",
            Pattern.CASE_INSENSITIVE | Pattern.DOTALL | Pattern.MULTILINE
    );

    private static final Pattern MULTIPLE_STATEMENTS_PATTERN = Pattern.compile(
            ";\\s*\\w+",
            Pattern.CASE_INSENSITIVE
    );

    private final JdbcTemplate jdbcTemplate;

    @Tool(description = """
            Execute SQL queries against the DVD rental database. Only SELECT queries are allowed for data analysis.
            
            Available Tables and Schema:
            
            1. film table:
               - film_id (SERIAL): Primary key
               - title (VARCHAR): Film title
               - description (TEXT): Film description
               - release_year (YEAR): Year of release
               - language_id (INT2): Foreign key to language table
               - rental_duration (INT2): Default rental period in days
               - rental_rate (NUMERIC): Cost per rental
               - length (INT2): Film duration in minutes
               - replacement_cost (NUMERIC): Cost to replace film
               - rating (MPAA_RATING): Film rating (G, PG, PG-13, R, NC-17)
               - special_features (TEXT[]): Special features array
               - last_update (TIMESTAMP): Last modification time
            
            2. actor table:
               - actor_id (SERIAL): Primary key
               - first_name (VARCHAR): Actor first name
               - last_name (VARCHAR): Actor last name
               - last_update (TIMESTAMP): Last modification time
            
            3. category table:
               - category_id (SERIAL): Primary key
               - name (VARCHAR): Category name
               - last_update (TIMESTAMP): Last modification time
            
            4. customer table:
               - customer_id (SERIAL): Primary key
               - store_id (INT2): Store where customer registered
               - first_name (VARCHAR): Customer first name
               - last_name (VARCHAR): Customer last name
               - email (VARCHAR): Customer email
               - address_id (INT2): Foreign key to address table
               - activebool (BOOL): Whether customer is active
               - create_date (DATE): Customer registration date
               - last_update (TIMESTAMP): Last modification time
               - active (INT): Active status indicator
            
            5. rental table:
               - rental_id (SERIAL): Primary key
               - rental_date (TIMESTAMP): When rental occurred
               - inventory_id (INT4): Foreign key to inventory table
               - customer_id (INT2): Foreign key to customer table
               - return_date (TIMESTAMP): When film was returned (null if not returned)
               - staff_id (INT2): Staff member who processed rental
               - last_update (TIMESTAMP): Last modification time
            
            6. payment table:
               - payment_id (SERIAL): Primary key
               - customer_id (INT2): Foreign key to customer table
               - staff_id (INT2): Staff member who processed payment
               - rental_id (INT4): Foreign key to rental table
               - amount (NUMERIC): Payment amount
               - payment_date (TIMESTAMP): When payment was made
            
            7. inventory table:
               - inventory_id (SERIAL): Primary key
               - film_id (INT2): Foreign key to film table
               - store_id (INT2): Store where inventory is located
               - last_update (TIMESTAMP): Last modification time
            
            8. store table:
               - store_id (SERIAL): Primary key
               - manager_staff_id (INT2): Manager staff ID
               - address_id (INT2): Foreign key to address table
               - last_update (TIMESTAMP): Last modification time
            
            9. staff table:
               - staff_id (SERIAL): Primary key
               - first_name (VARCHAR): Staff first name
               - last_name (VARCHAR): Staff last name
               - address_id (INT2): Foreign key to address table
               - email (VARCHAR): Staff email
               - store_id (INT2): Store where staff works
               - active (BOOL): Whether staff is active
               - username (VARCHAR): Login username
               - last_update (TIMESTAMP): Last modification time
            
            10. film_actor table (many-to-many):
                - actor_id (INT2): Foreign key to actor table
                - film_id (INT2): Foreign key to film table
                - last_update (TIMESTAMP): Last modification time
            
            11. film_category table (many-to-many):
                - film_id (INT2): Foreign key to film table
                - category_id (INT2): Foreign key to category table
                - last_update (TIMESTAMP): Last modification time
            
            12. address table:
                - address_id (SERIAL): Primary key
                - address (VARCHAR): Street address
                - address2 (VARCHAR): Additional address info
                - district (VARCHAR): District/region
                - city_id (INT2): Foreign key to city table
                - postal_code (VARCHAR): Postal code
                - phone (VARCHAR): Phone number
                - last_update (TIMESTAMP): Last modification time
            
            13. city table:
                - city_id (SERIAL): Primary key
                - city (VARCHAR): City name
                - country_id (INT2): Foreign key to country table
                - last_update (TIMESTAMP): Last modification time
            
            14. country table:
                - country_id (SERIAL): Primary key
                - country (VARCHAR): Country name
                - last_update (TIMESTAMP): Last modification time
            
            15. language table:
                - language_id (SERIAL): Primary key
                - name (CHAR): Language name
                - last_update (TIMESTAMP): Last modification time
            
            Example Queries:
            - Popular films: SELECT f.title, COUNT(r.rental_id) as rental_count FROM film f JOIN inventory i ON f.film_id = i.film_id JOIN rental r ON i.inventory_id = r.inventory_id GROUP BY f.film_id, f.title ORDER BY rental_count DESC LIMIT 10
            - Customer rental history: SELECT c.first_name, c.last_name, f.title, r.rental_date FROM customer c JOIN rental r ON c.customer_id = r.customer_id JOIN inventory i ON r.inventory_id = i.inventory_id JOIN film f ON i.film_id = f.film_id WHERE c.customer_id = 1 ORDER BY r.rental_date DESC
            - Monthly revenue: SELECT DATE_TRUNC('month', p.payment_date) as month, SUM(p.amount) as revenue FROM payment p GROUP BY month ORDER BY month
            - Films by actor: SELECT f.title, f.release_year FROM film f JOIN film_actor fa ON f.film_id = fa.film_id JOIN actor a ON fa.actor_id = a.actor_id WHERE a.first_name = 'PENELOPE' AND a.last_name = 'GUINESS'
            - Available inventory: SELECT f.title, COUNT(i.inventory_id) as available_copies FROM film f JOIN inventory i ON f.film_id = i.film_id LEFT JOIN rental r ON i.inventory_id = r.inventory_id AND r.return_date IS NULL WHERE r.rental_id IS NULL GROUP BY f.film_id, f.title
            
            Always use proper SQL syntax and include appropriate WHERE clauses to filter data.
            """)
    public Map<String, Object> executeQuery(
            @ToolParam(description = "SQL SELECT query to execute against the database", required = true)
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

        if (SQL_COMMENT_PATTERN.matcher(query).find()) {
            throw new IllegalArgumentException("SQL comments are not allowed");
        }

        if (MULTIPLE_STATEMENTS_PATTERN.matcher(query).find()) {
            throw new IllegalArgumentException("Multiple SQL statements are not allowed");
        }

        if (DANGEROUS_KEYWORD_PATTERN.matcher(query).find()) {
            throw new IllegalArgumentException("Dangerous SQL keywords detected");
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