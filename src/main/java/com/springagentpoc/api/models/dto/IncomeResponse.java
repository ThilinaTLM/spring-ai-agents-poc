package com.springagentpoc.api.models.dto;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.UUID;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Schema(description = "Response containing total income calculation results")
public class IncomeResponse {

    @Schema(description = "Total income amount", example = "1500.75")
    private BigDecimal totalIncome;

    @Schema(description = "Currency of the income amount", example = "USD")
    private String currency;

    @Schema(description = "Start date used for calculation", example = "2024-01-01T00:00:00")
    private LocalDateTime startDate;

    @Schema(description = "End date used for calculation", example = "2024-12-31T23:59:59")
    private LocalDateTime endDate;

    @Schema(description = "User ID used for filtering, null if calculated for all users", example = "123e4567-e89b-12d3-a456-426614174000")
    private UUID userId;

    @Schema(description = "Number of transactions included in calculation", example = "25")
    private long transactionCount;
}