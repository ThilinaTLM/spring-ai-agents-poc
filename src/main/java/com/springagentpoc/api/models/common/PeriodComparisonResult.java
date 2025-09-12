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
public class PeriodComparisonResult {
    private PeriodMetrics period1Metrics;
    private PeriodMetrics period2Metrics;
    private Map<String, BigDecimal> percentageChanges;
    private String statisticalSignificance;
    private List<String> keyInsights;
    private LocalDateTime analyzedAt;

    @Data
    @Builder
    public static class PeriodMetrics {
        private LocalDateTime startDate;
        private LocalDateTime endDate;
        private Money totalVolume;
        private long totalCount;
        private BigDecimal averageAmount;
        private BigDecimal successRate;
        private Map<String, Long> transactionTypeDistribution;
    }
}