package com.springagentpoc.api.models.common;

import com.google.type.Money;
import lombok.Builder;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@Data
@Builder
public class CashFlowResult {
    private Money totalIncome;
    private Money totalExpenses;
    private Money netFlow;
    private BigDecimal cashFlowRatio;
    private String analysis;
    private LocalDateTime calculatedAt;
    private String period;
}