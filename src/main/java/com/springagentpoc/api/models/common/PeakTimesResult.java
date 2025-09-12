package com.springagentpoc.api.models.common;

import lombok.Builder;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

@Data
@Builder
public class PeakTimesResult {
    private List<PeakPeriod> peakPeriods;
    private String granularity;
    private Map<String, String> patterns;
    private BigDecimal peakThreshold;
    private LocalDateTime analyzedAt;

    @Data
    @Builder
    public static class PeakPeriod {
        private String timeBucket;
        private long transactionCount;
        private BigDecimal density;
        private String peakType;
        private String significance;
    }
}