package com.springagentpoc.api.models.common;

import lombok.Builder;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

@Data
@Builder
public class RecurringPatternResult {
    private List<RecurringPattern> patterns;
    private LocalDateTime analyzedAt;

    @Data
    @Builder
    public static class RecurringPattern {
        private BigDecimal amount;
        private String normalizedDescription;
        private int occurrences;
        private String frequency;
        private BigDecimal confidenceScore;
        private BigDecimal amountVariance;
        private Map<String, Object> timingPatterns;
    }
}