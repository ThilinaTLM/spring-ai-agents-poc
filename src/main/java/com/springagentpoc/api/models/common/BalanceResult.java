package com.springagentpoc.api.models.common;

import com.google.type.Money;
import lombok.Builder;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@Builder
public class BalanceResult {
    private Money currentBalance;
    private long totalTransactionCount;
    private LocalDateTime asOfDate;
    private LocalDateTime lastTransactionDate;
    private String balanceStatus;
}