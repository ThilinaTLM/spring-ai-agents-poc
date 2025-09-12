package com.springagentpoc.api.models.common;

import lombok.Builder;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Map;

@Data
@Builder
public class TypePreferenceResult {
    private Map<String, BigDecimal> typeDistribution;
    private Map<String, Long> volumeAnalysis;
    private Map<String, Long> frequencyAnalysis;
    private Map<String, BigDecimal> trendChanges;
    private Map<String, BigDecimal> populationComparison;
    private Map<String, BigDecimal> preferenceScores;
    private Map<String, BigDecimal> confidenceIntervals;
    private LocalDateTime analyzedAt;
    private int comparisonPeriods;
}