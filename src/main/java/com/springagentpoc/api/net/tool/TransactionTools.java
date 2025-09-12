package com.springagentpoc.api.net.tool;

import com.springagentpoc.api.data.embedded.TransactionStatus;
import com.springagentpoc.api.data.embedded.TransactionType;
import com.springagentpoc.api.data.repo.TransactionRepo;
import com.springagentpoc.api.models.dto.IncomeRequest;
import com.springagentpoc.api.models.dto.IncomeResponse;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Description;

import java.math.BigDecimal;
import java.util.function.Function;

@Slf4j
@RequiredArgsConstructor
@Configuration(proxyBeanMethods = false)
public class TransactionTools {

    public static final String GET_TOTAL_INCOME = "getTotalIncome";

    private final TransactionRepo transactionRepo;

    @Bean(GET_TOTAL_INCOME)
    @Description("Calculate total income (credit transactions) between two dates. Optionally filter by user ID.")
    public Function<IncomeRequest, IncomeResponse> getTotalIncome() {
        return request -> {
            log.debug("Calculating total income for period {} to {}, userId: {}",
                    request.getStartDate(), request.getEndDate(), request.getUserId());

            try {
                BigDecimal totalIncome = transactionRepo.calculateTotalByTypeAndStatusBetweenDates(
                        TransactionType.CREDIT,
                        TransactionStatus.COMPLETED,
                        request.getStartDate(),
                        request.getEndDate(),
                        request.getUserId()
                );

                long transactionCount = transactionRepo.findAll().stream()
                        .filter(t -> t.getType() == TransactionType.CREDIT)
                        .filter(t -> t.getStatus() == TransactionStatus.COMPLETED)
                        .filter(t -> !t.getCreatedAt().isBefore(request.getStartDate()) &&
                                !t.getCreatedAt().isAfter(request.getEndDate()))
                        .filter(t -> request.getUserId() == null || t.getUserId().equals(request.getUserId()))
                        .count();

                IncomeResponse response = new IncomeResponse();
                response.setTotalIncome(totalIncome);
                response.setCurrency("USD");
                response.setStartDate(request.getStartDate());
                response.setEndDate(request.getEndDate());
                response.setUserId(request.getUserId());
                response.setTransactionCount(transactionCount);

                log.debug("Total income calculated: {} with {} transactions", totalIncome, transactionCount);
                return response;

            } catch (Exception e) {
                log.error("Error calculating total income", e);
                throw new RuntimeException("Failed to calculate total income: " + e.getMessage(), e);
            }
        };
    }
}