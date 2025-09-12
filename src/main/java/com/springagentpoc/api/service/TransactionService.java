package com.springagentpoc.api.service;

import com.google.type.Money;
import com.springagentpoc.api.data.embedded.TransactionStatus;
import com.springagentpoc.api.data.embedded.TransactionType;
import com.springagentpoc.api.data.entity.Transaction;
import com.springagentpoc.api.data.repo.TransactionRepo;
import com.springagentpoc.api.models.common.*;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.ai.tool.annotation.Tool;
import org.springframework.ai.tool.annotation.ToolParam;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.time.LocalDateTime;
import java.util.*;
import java.util.stream.Collectors;

@Service
@Slf4j
@RequiredArgsConstructor
public class TransactionService {

    private final TransactionRepo transactionRepo;

    @Tool(description = "Calculate total income (credit transactions) between two dates.")
    public Money getTotalIncome(
            @ToolParam(description = "Start date for income calculation. eg: 2024-01-01T00:00:00")
            String startDate,

            @ToolParam(description = "End date for income calculation. eg: 2024-12-31T23:59:59")
            String endDate
    ) {
        LocalDateTime start = LocalDateTime.parse(startDate);
        LocalDateTime end = LocalDateTime.parse(endDate);

        BigDecimal totalIncome = transactionRepo.calculateTotalByTypeAndStatusBetweenDates(
                TransactionType.CREDIT,
                TransactionStatus.COMPLETED,
                start,
                end,
                null
        );

        return Money.newBuilder().setCurrencyCode("USD").setUnits(totalIncome.longValue()).build();
    }

    @Tool(description = "Calculate total expenses (debit transactions) for a given period.")
    public Money getTotalExpenses(
            @ToolParam(description = "Start date for expense calculation. eg: 2024-01-01T00:00:00")
            String startDate,

            @ToolParam(description = "End date for expense calculation. eg: 2024-12-31T23:59:59")
            String endDate,

            @ToolParam(description = "Optional user ID to filter by specific user", required = false)
            String userId
    ) {
        LocalDateTime start = LocalDateTime.parse(startDate);
        LocalDateTime end = LocalDateTime.parse(endDate);
        UUID userUuid = userId != null ? UUID.fromString(userId) : null;

        BigDecimal totalExpenses = transactionRepo.calculateTotalByTypeAndStatusBetweenDates(
                TransactionType.DEBIT,
                TransactionStatus.COMPLETED,
                start,
                end,
                userUuid
        );

        return Money.newBuilder().setCurrencyCode("USD").setUnits(totalExpenses.longValue()).build();
    }

    @Tool(description = "Calculate net cash flow (income minus expenses) for a given period.")
    public CashFlowResult getNetCashFlow(
            @ToolParam(description = "Start date for cash flow calculation. eg: 2024-01-01T00:00:00")
            String startDate,

            @ToolParam(description = "End date for cash flow calculation. eg: 2024-12-31T23:59:59")
            String endDate,

            @ToolParam(description = "Optional user ID to filter by specific user", required = false)
            String userId
    ) {
        LocalDateTime start = LocalDateTime.parse(startDate);
        LocalDateTime end = LocalDateTime.parse(endDate);
        UUID userUuid = userId != null ? UUID.fromString(userId) : null;

        BigDecimal totalIncome = transactionRepo.calculateTotalByTypeAndStatusBetweenDates(
                TransactionType.CREDIT,
                TransactionStatus.COMPLETED,
                start,
                end,
                userUuid
        );

        BigDecimal totalExpenses = transactionRepo.calculateTotalByTypeAndStatusBetweenDates(
                TransactionType.DEBIT,
                TransactionStatus.COMPLETED,
                start,
                end,
                userUuid
        );

        BigDecimal netFlow = totalIncome.subtract(totalExpenses);
        BigDecimal cashFlowRatio = totalExpenses.compareTo(BigDecimal.ZERO) == 0 ?
                BigDecimal.ZERO : totalIncome.divide(totalExpenses, 4, RoundingMode.HALF_UP);

        String analysis = generateCashFlowAnalysis(netFlow, cashFlowRatio);
        String period = start.toLocalDate() + " to " + end.toLocalDate();

        return CashFlowResult.builder()
                .totalIncome(Money.newBuilder().setCurrencyCode("USD").setUnits(totalIncome.longValue()).build())
                .totalExpenses(Money.newBuilder().setCurrencyCode("USD").setUnits(totalExpenses.longValue()).build())
                .netFlow(Money.newBuilder().setCurrencyCode("USD").setUnits(netFlow.longValue()).build())
                .cashFlowRatio(cashFlowRatio)
                .analysis(analysis)
                .calculatedAt(LocalDateTime.now())
                .period(period)
                .build();
    }

    @Tool(description = "Calculate cumulative account balance based on transaction history.")
    public BalanceResult getAccountBalance(
            @ToolParam(description = "User ID to calculate balance for")
            String userId,

            @ToolParam(description = "Optional date to calculate balance as of. eg: 2024-12-31T23:59:59", required = false)
            String asOfDate
    ) {
        UUID userUuid = UUID.fromString(userId);
        LocalDateTime asOf = asOfDate != null ? LocalDateTime.parse(asOfDate) : null;

        List<Transaction> transactions = transactionRepo.findTransactionsForBalanceCalculation(
                userUuid, TransactionStatus.COMPLETED, asOf);

        BigDecimal balance = BigDecimal.ZERO;
        LocalDateTime lastTransactionDate = null;

        for (Transaction transaction : transactions) {
            switch (transaction.getType()) {
                case CREDIT, REFUND -> balance = balance.add(transaction.getAmount());
                case DEBIT -> balance = balance.subtract(transaction.getAmount());
                case TRANSFER -> {
                    // For simplicity, treating transfers as debits
                    balance = balance.subtract(transaction.getAmount());
                }
            }
            lastTransactionDate = transaction.getCreatedAt();
        }

        String balanceStatus = determineBalanceStatus(balance);

        return BalanceResult.builder()
                .currentBalance(Money.newBuilder().setCurrencyCode("USD").setUnits(balance.longValue()).build())
                .totalTransactionCount(transactions.size())
                .asOfDate(asOf != null ? asOf : LocalDateTime.now())
                .lastTransactionDate(lastTransactionDate)
                .balanceStatus(balanceStatus)
                .build();
    }

    @Tool(description = "Analyze spending patterns by extracting categories from transaction descriptions.")
    public SpendingCategoryResult getSpendingByCategory(
            @ToolParam(description = "Start date for spending analysis. eg: 2024-01-01T00:00:00")
            String startDate,

            @ToolParam(description = "End date for spending analysis. eg: 2024-12-31T23:59:59")
            String endDate,

            @ToolParam(description = "Optional user ID to filter by specific user", required = false)
            String userId
    ) {
        LocalDateTime start = LocalDateTime.parse(startDate);
        LocalDateTime end = LocalDateTime.parse(endDate);
        UUID userUuid = userId != null ? UUID.fromString(userId) : null;

        List<Transaction> debitTransactions = transactionRepo.findByStatusAndDateRange(
                        TransactionStatus.COMPLETED, start, end, userUuid)
                .stream()
                .filter(t -> t.getType() == TransactionType.DEBIT)
                .toList();

        Map<String, BigDecimal> categorySpending = new HashMap<>();
        BigDecimal totalSpending = BigDecimal.ZERO;

        for (Transaction transaction : debitTransactions) {
            String category = categorizeTransaction(transaction.getDescription());
            categorySpending.merge(category, transaction.getAmount(), BigDecimal::add);
            totalSpending = totalSpending.add(transaction.getAmount());
        }

        Map<String, Money> categorySpendingMoney = categorySpending.entrySet().stream()
                .collect(Collectors.toMap(
                        Map.Entry::getKey,
                        e -> Money.newBuilder().setCurrencyCode("USD").setUnits(e.getValue().longValue()).build()
                ));

        BigDecimal finalTotalSpending = totalSpending;
        Map<String, BigDecimal> categoryPercentages = categorySpending.entrySet().stream()
                .collect(Collectors.toMap(
                        Map.Entry::getKey,
                        e -> finalTotalSpending.compareTo(BigDecimal.ZERO) == 0 ? BigDecimal.ZERO :
                                e.getValue().divide(finalTotalSpending, 4, RoundingMode.HALF_UP).multiply(new BigDecimal("100"))
                ));

        String topCategory = categorySpending.entrySet().stream()
                .max(Map.Entry.comparingByValue())
                .map(Map.Entry::getKey)
                .orElse("None");

        String period = start.toLocalDate() + " to " + end.toLocalDate();

        return SpendingCategoryResult.builder()
                .categorySpending(categorySpendingMoney)
                .categoryPercentages(categoryPercentages)
                .totalSpending(Money.newBuilder().setCurrencyCode("USD").setUnits(totalSpending.longValue()).build())
                .topCategory(topCategory)
                .analyzedAt(LocalDateTime.now())
                .period(period)
                .build();
    }

    @Tool(description = "Detect outlier transactions using statistical analysis.")
    public UnusualTransactionResult findUnusualTransactions(
            @ToolParam(description = "User ID to analyze transactions for")
            String userId,

            @ToolParam(description = "Number of days to look back for analysis", required = false)
            String lookbackDays,

            @ToolParam(description = "Z-score threshold for detecting unusual transactions", required = false)
            String threshold
    ) {
        UUID userUuid = UUID.fromString(userId);
        int days = lookbackDays != null ? Integer.parseInt(lookbackDays) : 30;
        BigDecimal zThreshold = threshold != null ? new BigDecimal(threshold) : new BigDecimal("2.0");

        LocalDateTime startDate = LocalDateTime.now().minusDays(days);

        BigDecimal mean = transactionRepo.calculateMeanAmount(userUuid, startDate, TransactionStatus.COMPLETED);
        if (mean == null) mean = BigDecimal.ZERO;

        BigDecimal stdDev = transactionRepo.calculateStandardDeviation(userUuid, startDate, TransactionStatus.COMPLETED, mean);
        if (stdDev == null) stdDev = BigDecimal.ZERO;

        List<Transaction> allTransactions = transactionRepo.findUserTransactionsByDateRange(userUuid, startDate, LocalDateTime.now());
        List<Transaction> unusualTransactions = new ArrayList<>();
        Map<String, String> flagReasons = new HashMap<>();

        for (Transaction transaction : allTransactions) {
            List<String> reasons = new ArrayList<>();

            // Z-score analysis
            if (stdDev.compareTo(BigDecimal.ZERO) > 0) {
                BigDecimal zScore = transaction.getAmount().subtract(mean).divide(stdDev, 4, RoundingMode.HALF_UP).abs();
                if (zScore.compareTo(zThreshold) > 0) {
                    reasons.add("Amount z-score: " + zScore.setScale(2, RoundingMode.HALF_UP));
                }
            }

            // Time-based analysis (midnight to 5am)
            int hour = transaction.getCreatedAt().getHour();
            if (hour <= 5) {
                reasons.add("Unusual time: " + hour + ":00");
            }

            // Description length analysis
            if (transaction.getDescription() != null && transaction.getDescription().length() > 100) {
                reasons.add("Unusually long description (" + transaction.getDescription().length() + " chars)");
            }

            if (!reasons.isEmpty()) {
                unusualTransactions.add(transaction);
                flagReasons.put(transaction.getId().toString(), String.join(", ", reasons));
            }
        }

        return UnusualTransactionResult.builder()
                .unusualTransactions(unusualTransactions)
                .flagReasons(flagReasons)
                .meanAmount(mean)
                .standardDeviation(stdDev)
                .thresholdUsed(zThreshold)
                .totalTransactionsAnalyzed(allTransactions.size())
                .analyzedAt(LocalDateTime.now())
                .build();
    }

    @Tool(description = "Identify recurring transactions by amount and description similarity.")
    public RecurringPatternResult getRecurringPatterns(
            @ToolParam(description = "User ID to analyze recurring patterns for")
            String userId,

            @ToolParam(description = "Minimum number of occurrences to consider as recurring", required = false)
            String minOccurrences,

            @ToolParam(description = "Start date for pattern analysis. eg: 2024-01-01T00:00:00")
            String startDate,

            @ToolParam(description = "End date for pattern analysis. eg: 2024-12-31T23:59:59")
            String endDate
    ) {
        UUID userUuid = UUID.fromString(userId);
        int minOccur = minOccurrences != null ? Integer.parseInt(minOccurrences) : 3;
        LocalDateTime start = LocalDateTime.parse(startDate);
        LocalDateTime end = LocalDateTime.parse(endDate);

        List<Transaction> transactions = transactionRepo.findUserTransactionsByDateRange(userUuid, start, end);

        // Group by rounded amount and normalized description
        Map<String, List<Transaction>> groupedTransactions = new HashMap<>();

        for (Transaction transaction : transactions) {
            BigDecimal roundedAmount = transaction.getAmount().setScale(0, RoundingMode.HALF_UP);
            String normalizedDesc = normalizeDescription(transaction.getDescription());
            String key = roundedAmount + "|" + normalizedDesc;

            groupedTransactions.computeIfAbsent(key, k -> new ArrayList<>()).add(transaction);
        }

        List<RecurringPatternResult.RecurringPattern> patterns = new ArrayList<>();

        for (Map.Entry<String, List<Transaction>> entry : groupedTransactions.entrySet()) {
            List<Transaction> group = entry.getValue();
            if (group.size() >= minOccur) {
                String[] keyParts = entry.getKey().split("\\|");
                BigDecimal amount = new BigDecimal(keyParts[0]);
                String normalizedDesc = keyParts[1];

                // Calculate frequency and patterns
                String frequency = calculateFrequency(group, start, end);
                BigDecimal confidenceScore = calculateConfidenceScore(group);
                BigDecimal amountVariance = calculateAmountVariance(group);
                Map<String, Object> timingPatterns = analyzeTimingPatterns(group);

                RecurringPatternResult.RecurringPattern pattern = RecurringPatternResult.RecurringPattern.builder()
                        .amount(amount)
                        .normalizedDescription(normalizedDesc)
                        .occurrences(group.size())
                        .frequency(frequency)
                        .confidenceScore(confidenceScore)
                        .amountVariance(amountVariance)
                        .timingPatterns(timingPatterns)
                        .build();

                patterns.add(pattern);
            }
        }

        return RecurringPatternResult.builder()
                .patterns(patterns)
                .analyzedAt(LocalDateTime.now())
                .build();
    }

    @Tool(description = "Analyze transaction frequency trends over time.")
    public FrequencyAnalysisResult getTransactionFrequency(
            @ToolParam(description = "User ID to analyze frequency for")
            String userId,

            @ToolParam(description = "Time granularity: DAILY, WEEKLY, MONTHLY")
            String granularity,

            @ToolParam(description = "Start date for frequency analysis. eg: 2024-01-01T00:00:00")
            String startDate,

            @ToolParam(description = "End date for frequency analysis. eg: 2024-12-31T23:59:59")
            String endDate
    ) {
        UUID userUuid = UUID.fromString(userId);
        LocalDateTime start = LocalDateTime.parse(startDate);
        LocalDateTime end = LocalDateTime.parse(endDate);

        List<Transaction> transactions = transactionRepo.findUserTransactionsByDateRange(userUuid, start, end);

        List<FrequencyAnalysisResult.PeriodData> periodData = new ArrayList<>();

        // Create periods based on granularity
        List<LocalDateTime[]> periods = createPeriods(start, end, granularity);

        for (LocalDateTime[] period : periods) {
            LocalDateTime periodStart = period[0];
            LocalDateTime periodEnd = period[1];

            List<Transaction> periodTransactions = transactions.stream()
                    .filter(t -> t.getCreatedAt().isAfter(periodStart) && t.getCreatedAt().isBefore(periodEnd))
                    .toList();

            long transactionCount = periodTransactions.size();
            BigDecimal averageAmount = periodTransactions.isEmpty() ? BigDecimal.ZERO :
                    periodTransactions.stream()
                            .map(Transaction::getAmount)
                            .reduce(BigDecimal.ZERO, BigDecimal::add)
                            .divide(new BigDecimal(periodTransactions.size()), 4, RoundingMode.HALF_UP);

            Map<String, Long> typeBreakdown = periodTransactions.stream()
                    .collect(Collectors.groupingBy(
                            t -> t.getType().name(),
                            Collectors.counting()
                    ));

            FrequencyAnalysisResult.PeriodData data = FrequencyAnalysisResult.PeriodData.builder()
                    .period(formatPeriod(periodStart, granularity))
                    .transactionCount(transactionCount)
                    .averageAmount(averageAmount)
                    .transactionTypeBreakdown(typeBreakdown)
                    .periodStart(periodStart)
                    .periodEnd(periodEnd)
                    .build();

            periodData.add(data);
        }

        // Calculate trend
        String trendDirection = calculateTrend(periodData);
        BigDecimal trendSlope = calculateTrendSlope(periodData);

        return FrequencyAnalysisResult.builder()
                .periodData(periodData)
                .trendDirection(trendDirection)
                .trendSlope(trendSlope)
                .granularity(granularity)
                .analyzedAt(LocalDateTime.now())
                .build();
    }

    @Tool(description = "Find potential duplicate transactions.")
    public DuplicateDetectionResult detectDuplicateTransactions(
            @ToolParam(description = "User ID to analyze for duplicates")
            String userId,

            @ToolParam(description = "Time window in minutes to check for duplicates", required = false)
            String timeWindowMinutes,

            @ToolParam(description = "Similarity threshold (0.0-1.0)", required = false)
            String similarityThreshold
    ) {
        UUID userUuid = UUID.fromString(userId);
        int timeWindow = timeWindowMinutes != null ? Integer.parseInt(timeWindowMinutes) : 60;
        BigDecimal threshold = similarityThreshold != null ? new BigDecimal(similarityThreshold) : new BigDecimal("0.8");

        LocalDateTime endTime = LocalDateTime.now();
        LocalDateTime startTime = endTime.minusHours(24); // Look back 24 hours

        List<Transaction> recentTransactions = transactionRepo.findRecentTransactions(userUuid, startTime, endTime);
        List<DuplicateDetectionResult.DuplicatePair> duplicatePairs = new ArrayList<>();

        for (int i = 0; i < recentTransactions.size(); i++) {
            Transaction t1 = recentTransactions.get(i);

            for (int j = i + 1; j < recentTransactions.size(); j++) {
                Transaction t2 = recentTransactions.get(j);

                // Check if within time window
                long minutesDiff = Math.abs(java.time.Duration.between(t1.getCreatedAt(), t2.getCreatedAt()).toMinutes());
                if (minutesDiff > timeWindow) {
                    continue;
                }

                BigDecimal similarity = calculateSimilarity(t1, t2);

                if (similarity.compareTo(threshold) > 0) {
                    DuplicateDetectionResult.DuplicatePair pair = DuplicateDetectionResult.DuplicatePair.builder()
                            .transaction1(t1)
                            .transaction2(t2)
                            .similarityScore(similarity)
                            .similarityDetails(generateSimilarityDetails(t1, t2))
                            .build();

                    duplicatePairs.add(pair);
                }
            }
        }

        return DuplicateDetectionResult.builder()
                .duplicatePairs(duplicatePairs)
                .timeWindowMinutes(timeWindow)
                .similarityThreshold(threshold)
                .analyzedAt(LocalDateTime.now())
                .build();
    }

    private String generateCashFlowAnalysis(BigDecimal netFlow, BigDecimal cashFlowRatio) {
        if (netFlow.compareTo(BigDecimal.ZERO) > 0) {
            return "Positive cash flow. Income exceeds expenses by $" + netFlow +
                    ". Cash flow ratio: " + cashFlowRatio.setScale(2, RoundingMode.HALF_UP);
        } else if (netFlow.compareTo(BigDecimal.ZERO) < 0) {
            return "Negative cash flow. Expenses exceed income by $" + netFlow.abs() +
                    ". Consider reviewing spending patterns.";
        } else {
            return "Balanced cash flow. Income equals expenses.";
        }
    }

    private String determineBalanceStatus(BigDecimal balance) {
        if (balance.compareTo(BigDecimal.ZERO) > 0) {
            return "Positive";
        } else if (balance.compareTo(BigDecimal.ZERO) < 0) {
            return "Negative";
        } else {
            return "Zero";
        }
    }

    private String categorizeTransaction(String description) {
        if (description == null) {
            return "Other";
        }

        String desc = description.toLowerCase();

        // Define category patterns
        Map<String, List<String>> categoryPatterns = Map.of(
                "Food & Dining", Arrays.asList("restaurant", "cafe", "food", "dining", "pizza", "burger", "starbucks", "mcdonald"),
                "Gas & Fuel", Arrays.asList("gas", "fuel", "shell", "exxon", "bp", "chevron", "mobil"),
                "Shopping", Arrays.asList("amazon", "walmart", "target", "shopping", "store", "mall", "retail"),
                "Groceries", Arrays.asList("grocery", "supermarket", "safeway", "kroger", "costco", "whole foods"),
                "Transportation", Arrays.asList("uber", "lyft", "taxi", "bus", "train", "parking", "toll"),
                "Entertainment", Arrays.asList("movie", "cinema", "theater", "netflix", "spotify", "game", "entertainment"),
                "Health & Medical", Arrays.asList("pharmacy", "doctor", "hospital", "medical", "health", "cvs", "walgreens"),
                "Utilities", Arrays.asList("electric", "water", "internet", "cable", "phone", "utility"),
                "Banking & Finance", Arrays.asList("bank", "atm", "fee", "interest", "loan", "credit", "finance")
        );

        for (Map.Entry<String, List<String>> entry : categoryPatterns.entrySet()) {
            for (String keyword : entry.getValue()) {
                if (desc.contains(keyword)) {
                    return entry.getKey();
                }
            }
        }

        return "Other";
    }

    // Helper methods for pattern analysis
    private String normalizeDescription(String description) {
        if (description == null) return "unknown";
        return description.toLowerCase().replaceAll("[^a-zA-Z0-9\\s]", "").trim();
    }

    private String calculateFrequency(List<Transaction> transactions, LocalDateTime start, LocalDateTime end) {
        long daysBetween = java.time.Duration.between(start, end).toDays();
        if (daysBetween == 0) daysBetween = 1;

        double transactionsPerDay = (double) transactions.size() / daysBetween;

        if (transactionsPerDay >= 1) return "Daily";
        else if (transactionsPerDay >= 0.14) return "Weekly";  // 1/7
        else if (transactionsPerDay >= 0.03) return "Monthly"; // 1/30
        else return "Irregular";
    }

    private BigDecimal calculateConfidenceScore(List<Transaction> transactions) {
        if (transactions.size() < 2) return BigDecimal.ZERO;

        // Simple confidence based on regularity and amount consistency
        BigDecimal avgAmount = transactions.stream()
                .map(Transaction::getAmount)
                .reduce(BigDecimal.ZERO, BigDecimal::add)
                .divide(new BigDecimal(transactions.size()), 4, RoundingMode.HALF_UP);

        BigDecimal variance = transactions.stream()
                .map(t -> t.getAmount().subtract(avgAmount).pow(2))
                .reduce(BigDecimal.ZERO, BigDecimal::add)
                .divide(new BigDecimal(transactions.size()), 4, RoundingMode.HALF_UP);

        // Lower variance = higher confidence
        BigDecimal confidence = BigDecimal.ONE.subtract(variance.divide(avgAmount.add(BigDecimal.ONE), 4, RoundingMode.HALF_UP));
        return confidence.max(BigDecimal.ZERO).min(BigDecimal.ONE);
    }

    private BigDecimal calculateAmountVariance(List<Transaction> transactions) {
        if (transactions.size() < 2) return BigDecimal.ZERO;

        BigDecimal avg = transactions.stream()
                .map(Transaction::getAmount)
                .reduce(BigDecimal.ZERO, BigDecimal::add)
                .divide(new BigDecimal(transactions.size()), 4, RoundingMode.HALF_UP);

        return transactions.stream()
                .map(t -> t.getAmount().subtract(avg).pow(2))
                .reduce(BigDecimal.ZERO, BigDecimal::add)
                .divide(new BigDecimal(transactions.size()), 4, RoundingMode.HALF_UP);
    }

    private Map<String, Object> analyzeTimingPatterns(List<Transaction> transactions) {
        Map<String, Object> patterns = new HashMap<>();

        Map<Integer, Long> hourCounts = transactions.stream()
                .collect(Collectors.groupingBy(
                        t -> t.getCreatedAt().getHour(),
                        Collectors.counting()
                ));

        Map<Integer, Long> dayCounts = transactions.stream()
                .collect(Collectors.groupingBy(
                        t -> t.getCreatedAt().getDayOfWeek().getValue(),
                        Collectors.counting()
                ));

        patterns.put("mostCommonHour", hourCounts.entrySet().stream()
                .max(Map.Entry.comparingByValue())
                .map(Map.Entry::getKey).orElse(0));

        patterns.put("mostCommonDay", dayCounts.entrySet().stream()
                .max(Map.Entry.comparingByValue())
                .map(Map.Entry::getKey).orElse(1));

        return patterns;
    }

    private List<LocalDateTime[]> createPeriods(LocalDateTime start, LocalDateTime end, String granularity) {
        List<LocalDateTime[]> periods = new ArrayList<>();
        LocalDateTime current = start;

        while (current.isBefore(end)) {
            LocalDateTime periodEnd;
            switch (granularity.toUpperCase()) {
                case "DAILY" -> periodEnd = current.plusDays(1);
                case "WEEKLY" -> periodEnd = current.plusWeeks(1);
                case "MONTHLY" -> periodEnd = current.plusMonths(1);
                default -> periodEnd = current.plusDays(1);
            }

            if (periodEnd.isAfter(end)) periodEnd = end;
            periods.add(new LocalDateTime[]{current, periodEnd});
            current = periodEnd;
        }

        return periods;
    }

    private String formatPeriod(LocalDateTime periodStart, String granularity) {
        switch (granularity.toUpperCase()) {
            case "DAILY" -> {
                return periodStart.toLocalDate().toString();
            }
            case "WEEKLY" -> {
                return "Week of " + periodStart.toLocalDate();
            }
            case "MONTHLY" -> {
                return periodStart.getYear() + "-" + String.format("%02d", periodStart.getMonthValue());
            }
            default -> {
                return periodStart.toLocalDate().toString();
            }
        }
    }

    private String calculateTrend(List<FrequencyAnalysisResult.PeriodData> periodData) {
        if (periodData.size() < 2) return "Insufficient data";

        long firstCount = periodData.get(0).getTransactionCount();
        long lastCount = periodData.get(periodData.size() - 1).getTransactionCount();

        if (lastCount > firstCount * 1.1) return "Increasing";
        else if (lastCount < firstCount * 0.9) return "Decreasing";
        else return "Stable";
    }

    private BigDecimal calculateTrendSlope(List<FrequencyAnalysisResult.PeriodData> periodData) {
        if (periodData.size() < 2) return BigDecimal.ZERO;

        // Simple linear regression slope calculation
        double sumX = 0, sumY = 0, sumXY = 0, sumXX = 0;
        int n = periodData.size();

        for (int i = 0; i < n; i++) {
            double y = periodData.get(i).getTransactionCount();
            sumX += i;
            sumY += y;
            sumXY += (double) i * y;
            sumXX += (double) i * (double) i;
        }

        double slope = (n * sumXY - sumX * sumY) / (n * sumXX - sumX * sumX);
        return new BigDecimal(slope).setScale(4, RoundingMode.HALF_UP);
    }

    private BigDecimal calculateSimilarity(Transaction t1, Transaction t2) {
        BigDecimal similarity = BigDecimal.ZERO;

        // Amount exact match: +0.4
        if (t1.getAmount().compareTo(t2.getAmount()) == 0) {
            similarity = similarity.add(new BigDecimal("0.4"));
        }

        // Description similarity: +0.4
        if (t1.getDescription() != null && t2.getDescription() != null) {
            double descSimilarity = calculateLevenshteinSimilarity(t1.getDescription(), t2.getDescription());
            similarity = similarity.add(new BigDecimal(descSimilarity * 0.4).setScale(4, RoundingMode.HALF_UP));
        }

        // Same reference/merchant: +0.2
        if (t1.getReferenceId() != null && t2.getReferenceId() != null &&
                t1.getReferenceId().equals(t2.getReferenceId())) {
            similarity = similarity.add(new BigDecimal("0.2"));
        }

        return similarity.setScale(4, RoundingMode.HALF_UP);
    }

    private double calculateLevenshteinSimilarity(String s1, String s2) {
        if (s1 == null || s2 == null) return 0.0;

        int distance = levenshteinDistance(s1.toLowerCase(), s2.toLowerCase());
        int maxLen = Math.max(s1.length(), s2.length());

        if (maxLen == 0) return 1.0;
        return 1.0 - (double) distance / maxLen;
    }

    private int levenshteinDistance(String s1, String s2) {
        int[][] dp = new int[s1.length() + 1][s2.length() + 1];

        for (int i = 0; i <= s1.length(); i++) {
            for (int j = 0; j <= s2.length(); j++) {
                if (i == 0) {
                    dp[i][j] = j;
                } else if (j == 0) {
                    dp[i][j] = i;
                } else if (s1.charAt(i - 1) == s2.charAt(j - 1)) {
                    dp[i][j] = dp[i - 1][j - 1];
                } else {
                    dp[i][j] = 1 + Math.min(dp[i - 1][j], Math.min(dp[i][j - 1], dp[i - 1][j - 1]));
                }
            }
        }

        return dp[s1.length()][s2.length()];
    }

    private String generateSimilarityDetails(Transaction t1, Transaction t2) {
        List<String> details = new ArrayList<>();

        if (t1.getAmount().compareTo(t2.getAmount()) == 0) {
            details.add("Exact amount match");
        }

        if (t1.getDescription() != null && t2.getDescription() != null) {
            double similarity = calculateLevenshteinSimilarity(t1.getDescription(), t2.getDescription());
            if (similarity > 0.7) {
                details.add("Similar descriptions (" + Math.round(similarity * 100) + "% match)");
            }
        }

        if (t1.getReferenceId() != null && t2.getReferenceId() != null &&
                t1.getReferenceId().equals(t2.getReferenceId())) {
            details.add("Same reference ID");
        }

        long minutesDiff = Math.abs(java.time.Duration.between(t1.getCreatedAt(), t2.getCreatedAt()).toMinutes());
        details.add("Time difference: " + minutesDiff + " minutes");

        return String.join(", ", details);
    }

}
