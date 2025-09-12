package com.springagentpoc.api.models.dto;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.UUID;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Schema(description = "Request for calculating total income between dates")
public class IncomeRequest {

    @Schema(description = "Start date for income calculation", example = "2024-01-01T00:00:00")
    private LocalDateTime startDate;

    @Schema(description = "End date for income calculation", example = "2024-12-31T23:59:59")
    private LocalDateTime endDate;

    @Schema(description = "Optional user ID to filter transactions. If null, calculates for all users", example = "123e4567-e89b-12d3-a456-426614174000")
    private UUID userId;
}