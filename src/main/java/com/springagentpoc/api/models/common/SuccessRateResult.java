package com.springagentpoc.api.models.common;

import lombok.Builder;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Map;

@Data
@Builder
public class SuccessRateResult {
    private BigDecimal successRate;
    private BigDecimal failureRate;
    private BigDecimal cancellationRate;
    private long completedCount;
    private long failedCount;
    private long cancelledCount;
    private long pendingCount;
    private Map<String, BigDecimal> previousPeriodRates;
    private String trendAnalysis;
    private LocalDateTime analyzedAt;
    private String period;
}