package com.springagentpoc.api.service;

import com.springagentpoc.api.data.repo.TransactionRepo;
import lombok.Builder;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.ai.tool.annotation.Tool;
import org.springframework.ai.tool.annotation.ToolParam;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;

@Service
@Slf4j
@RequiredArgsConstructor
public class TransactionService {

    private final TransactionRepo transactionRepo;

    @Tool(description = "Calculate total income (credit transactions) between two dates.")
    public Income getTotalIncome(
            @ToolParam(description = "Start date for income calculation. eg: 2024-01-01T00:00:00") String startDate,
            @ToolParam(description = "End date for income calculation. eg: 2024-12-31T23:59:59") String endDate
    ) {
        return Income.builder()
                .currency("USD")
                .totalIncome(BigDecimal.valueOf(1000))
                .build();
    }

    @Builder
    public record Income(String currency, BigDecimal totalIncome) {
    }
}
