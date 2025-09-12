package com.springagentpoc.api.models.common;

import lombok.Builder;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

@Data
@Builder
public class ActivityPeriodsResult {
    private Map<Integer, Long> hourlyActivity;
    private Map<String, Long> weeklyActivity;
    private Map<String, Long> monthlyActivity;
    private List<ActivePeriod> mostActivePeriods;
    private Map<String, BigDecimal> populationComparison;
    private LocalDateTime analyzedAt;
    private int analysisWeeks;

    @Data
    @Builder
    public static class ActivePeriod {
        private String timeDescription;
        private BigDecimal activityScore;
        private String uniquenessLevel;
    }
}