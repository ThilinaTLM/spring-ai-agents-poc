package com.springagentpoc.api.models.common;

import lombok.Builder;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

@Data
@Builder
public class FailureAnalysisResult {
    private Map<Integer, Long> failuresByHour;
    private Map<String, Long> failuresByAmountRange;
    private Map<String, Long> failuresByTransactionType;
    private List<String> commonFailureKeywords;
    private BigDecimal overallFailureRate;
    private List<String> recommendations;
    private LocalDateTime analyzedAt;
    private String period;
}