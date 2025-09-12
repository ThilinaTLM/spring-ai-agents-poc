package com.springagentpoc.api.models.common;

import com.springagentpoc.api.data.entity.Transaction;
import lombok.Builder;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

@Data
@Builder
public class DuplicateDetectionResult {
    private List<DuplicatePair> duplicatePairs;
    private int timeWindowMinutes;
    private BigDecimal similarityThreshold;
    private LocalDateTime analyzedAt;

    @Data
    @Builder
    public static class DuplicatePair {
        private Transaction transaction1;
        private Transaction transaction2;
        private BigDecimal similarityScore;
        private String similarityDetails;
    }
}