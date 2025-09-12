package com.springagentpoc.api.models.common;

import com.google.type.Money;
import lombok.Builder;
import lombok.Data;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.Map;

@Data
@Builder
public class SpendingCategoryResult {
    private Map<String, Money> categorySpending;
    private Map<String, BigDecimal> categoryPercentages;
    private Money totalSpending;
    private String topCategory;
    private LocalDateTime analyzedAt;
    private String period;
}