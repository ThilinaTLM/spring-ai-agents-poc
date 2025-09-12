package com.springagentpoc.api.models.common;

import com.google.type.Money;
import lombok.Builder;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

@Data
@Builder
public class PeriodSummaryResult {
    private List<PeriodSummary> periodSummaries;
    private String granularity;
    private String peakPeriod;
    private String lowPeriod;
    private LocalDateTime analyzedAt;

    @Data
    @Builder
    public static class PeriodSummary {
        private String period;
        private LocalDateTime periodStart;
        private LocalDateTime periodEnd;
        private long totalTransactionCount;
        private Money totalVolume;
        private Map<String, Long> transactionTypeBreakdown;
        private BigDecimal averageAmount;
        private BigDecimal successRate;
        private BigDecimal growthRate;
    }
}