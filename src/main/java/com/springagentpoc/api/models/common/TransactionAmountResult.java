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
public class TransactionAmountResult {
    private Money mean;
    private Money median;
    private Money mode;
    private BigDecimal standardDeviation;
    private Map<String, Money> percentiles;
    private Map<String, Money> populationComparison;
    private List<AmountCluster> amountClusters;
    private LocalDateTime analyzedAt;

    @Data
    @Builder
    public static class AmountCluster {
        private Money centerAmount;
        private int transactionCount;
        private String clusterLabel;
    }
}