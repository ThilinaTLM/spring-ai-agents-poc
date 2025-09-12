package com.springagentpoc.api.models.common;

import lombok.Builder;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

@Data
@Builder
public class FrequencyAnalysisResult {
    private List<PeriodData> periodData;
    private String trendDirection;
    private BigDecimal trendSlope;
    private String granularity;
    private LocalDateTime analyzedAt;

    @Data
    @Builder
    public static class PeriodData {
        private String period;
        private long transactionCount;
        private BigDecimal averageAmount;
        private Map<String, Long> transactionTypeBreakdown;
        private LocalDateTime periodStart;
        private LocalDateTime periodEnd;
    }
}