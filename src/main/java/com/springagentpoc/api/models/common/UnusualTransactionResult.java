package com.springagentpoc.api.models.common;

import com.springagentpoc.api.data.entity.Transaction;
import lombok.Builder;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

@Data
@Builder
public class UnusualTransactionResult {
    private List<Transaction> unusualTransactions;
    private Map<String, String> flagReasons;
    private BigDecimal meanAmount;
    private BigDecimal standardDeviation;
    private BigDecimal thresholdUsed;
    private int totalTransactionsAnalyzed;
    private LocalDateTime analyzedAt;
}