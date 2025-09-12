package com.springagentpoc.api.models.common;

import lombok.Builder;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Map;

@Data
@Builder
public class SeasonalTrendsResult {
    private Map<String, BigDecimal> monthlyMetrics;
    private Map<String, BigDecimal> seasonalIndices;
    private String trendComponent;
    private Map<String, BigDecimal> forecast;
    private BigDecimal seasonalStrength;
    private LocalDateTime analyzedAt;
    private int lookbackMonths;
}