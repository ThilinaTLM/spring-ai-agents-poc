package com.springagentpoc.api.models.common;

import com.google.type.Money;
import lombok.Builder;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Map;

@Data
@Builder
public class SpendingHabitsResult {
    private Money averageDailySpending;
    private Money averageWeeklySpending;
    private Money averageMonthlySpending;
    private Map<String, Long> activeSpendingDays;
    private Map<String, Long> activeSpendingTimes;
    private BigDecimal spendingVelocity;
    private Map<String, String> behavioralPatterns;
    private Map<String, BigDecimal> behavioralScores;
    private LocalDateTime analyzedAt;
    private int analysisMonths;
}