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
import java.time.temporal.ChronoUnit;
import java.util.*;
import java.util.stream.Collectors;

@Service
@Slf4j
@RequiredArgsConstructor
public class TransactionInsightsService {

    private final TransactionRepo transactionRepo;

    @Tool(description = "Generate comprehensive transaction summaries by time period with growth analysis.")
    public PeriodSummaryResult getTransactionSummaryByPeriod(
            @ToolParam(description = "Time period granularity: DAILY, WEEKLY, MONTHLY")
            String period,

            @ToolParam(description = "Start date for summary. eg: 2024-01-01T00:00:00")
            String startDate,

            @ToolParam(description = "End date for summary. eg: 2024-12-31T23:59:59")
            String endDate,

            @ToolParam(description = "Optional user ID to filter by specific user", required = false)
            String userId
    ) {
        LocalDateTime start = LocalDateTime.parse(startDate);
        LocalDateTime end = LocalDateTime.parse(endDate);
        UUID userUuid = userId != null ? UUID.fromString(userId) : null;

        List<LocalDateTime[]> periods = createTimePeriods(start, end, period);
        List<PeriodSummaryResult.PeriodSummary> periodSummaries = new ArrayList<>();

        PeriodSummaryResult.PeriodSummary previousPeriodData = null;

        for (LocalDateTime[] periodRange : periods) {
            LocalDateTime periodStart = periodRange[0];
            LocalDateTime periodEnd = periodRange[1];

            List<Transaction> periodTransactions = transactionRepo.findUserTransactionsByDateRange(
                    userUuid != null ? userUuid : UUID.randomUUID(), periodStart, periodEnd);

            if (userUuid == null) {
                // If no specific user, get all transactions in range
                periodTransactions = transactionRepo.findByStatusAndDateRange(
                        null, periodStart, periodEnd, null);
            }

            long totalCount = periodTransactions.size();
            BigDecimal totalVolume = periodTransactions.stream()
                    .map(Transaction::getAmount)
                    .reduce(BigDecimal.ZERO, BigDecimal::add);

            Map<String, Long> typeBreakdown = periodTransactions.stream()
                    .collect(Collectors.groupingBy(
                            t -> t.getType().name(),
                            Collectors.counting()
                    ));

            BigDecimal avgAmount = totalCount == 0 ? BigDecimal.ZERO :
                    totalVolume.divide(new BigDecimal(totalCount), 4, RoundingMode.HALF_UP);

            long completedCount = periodTransactions.stream()
                    .mapToLong(t -> t.getStatus() == TransactionStatus.COMPLETED ? 1 : 0)
                    .sum();
            BigDecimal successRate = totalCount == 0 ? BigDecimal.ZERO :
                    new BigDecimal(completedCount).divide(new BigDecimal(totalCount), 4, RoundingMode.HALF_UP)
                            .multiply(new BigDecimal("100"));

            // Calculate growth rate compared to previous period
            BigDecimal growthRate = BigDecimal.ZERO;
            if (previousPeriodData != null && previousPeriodData.getTotalTransactionCount() > 0) {
                BigDecimal currentVolume = totalVolume;
                BigDecimal previousVolume = previousPeriodData.getTotalVolume().getUnits() != 0 ?
                        new BigDecimal(previousPeriodData.getTotalVolume().getUnits()) : BigDecimal.ONE;

                growthRate = currentVolume.subtract(previousVolume)
                        .divide(previousVolume, 4, RoundingMode.HALF_UP)
                        .multiply(new BigDecimal("100"));
            }

            PeriodSummaryResult.PeriodSummary summary = PeriodSummaryResult.PeriodSummary.builder()
                    .period(formatTimePeriod(periodStart, period))
                    .periodStart(periodStart)
                    .periodEnd(periodEnd)
                    .totalTransactionCount(totalCount)
                    .totalVolume(Money.newBuilder().setCurrencyCode("USD").setUnits(totalVolume.longValue()).build())
                    .transactionTypeBreakdown(typeBreakdown)
                    .averageAmount(avgAmount)
                    .successRate(successRate)
                    .growthRate(growthRate)
                    .build();

            periodSummaries.add(summary);
            previousPeriodData = summary;
        }

        // Find peak and low periods
        String peakPeriod = periodSummaries.stream()
                .max(Comparator.comparing(PeriodSummaryResult.PeriodSummary::getTotalTransactionCount))
                .map(PeriodSummaryResult.PeriodSummary::getPeriod)
                .orElse("N/A");

        String lowPeriod = periodSummaries.stream()
                .min(Comparator.comparing(PeriodSummaryResult.PeriodSummary::getTotalTransactionCount))
                .map(PeriodSummaryResult.PeriodSummary::getPeriod)
                .orElse("N/A");

        return PeriodSummaryResult.builder()
                .periodSummaries(periodSummaries)
                .granularity(period)
                .peakPeriod(peakPeriod)
                .lowPeriod(lowPeriod)
                .analyzedAt(LocalDateTime.now())
                .build();
    }

    @Tool(description = "Compare transaction metrics across different time periods for trend analysis.")
    public PeriodComparisonResult compareTransactionPeriods(
            @ToolParam(description = "Start date of first period. eg: 2024-01-01T00:00:00")
            String period1Start,

            @ToolParam(description = "End date of first period. eg: 2024-01-31T23:59:59")
            String period1End,

            @ToolParam(description = "Start date of second period. eg: 2024-02-01T00:00:00")
            String period2Start,

            @ToolParam(description = "End date of second period. eg: 2024-02-29T23:59:59")
            String period2End,

            @ToolParam(description = "Optional user ID to filter by specific user", required = false)
            String userId
    ) {
        LocalDateTime p1Start = LocalDateTime.parse(period1Start);
        LocalDateTime p1End = LocalDateTime.parse(period1End);
        LocalDateTime p2Start = LocalDateTime.parse(period2Start);
        LocalDateTime p2End = LocalDateTime.parse(period2End);
        UUID userUuid = userId != null ? UUID.fromString(userId) : null;

        PeriodComparisonResult.PeriodMetrics metrics1 = calculatePeriodMetrics(p1Start, p1End, userUuid);
        PeriodComparisonResult.PeriodMetrics metrics2 = calculatePeriodMetrics(p2Start, p2End, userUuid);

        Map<String, BigDecimal> percentageChanges = calculatePercentageChanges(metrics1, metrics2);
        String statisticalSignificance = determineStatisticalSignificance(metrics1, metrics2);
        List<String> keyInsights = generateKeyInsights(metrics1, metrics2, percentageChanges);

        return PeriodComparisonResult.builder()
                .period1Metrics(metrics1)
                .period2Metrics(metrics2)
                .percentageChanges(percentageChanges)
                .statisticalSignificance(statisticalSignificance)
                .keyInsights(keyInsights)
                .analyzedAt(LocalDateTime.now())
                .build();
    }

    @Tool(description = "Identify peak transaction activity periods using statistical analysis.")
    public PeakTimesResult getPeakTransactionTimes(
            @ToolParam(description = "Start date for peak analysis. eg: 2024-01-01T00:00:00")
            String startDate,

            @ToolParam(description = "End date for peak analysis. eg: 2024-12-31T23:59:59")
            String endDate,

            @ToolParam(description = "Analysis granularity: HOURLY, DAILY, WEEKLY")
            String granularity,

            @ToolParam(description = "Optional user ID to filter by specific user", required = false)
            String userId
    ) {
        LocalDateTime start = LocalDateTime.parse(startDate);
        LocalDateTime end = LocalDateTime.parse(endDate);
        UUID userUuid = userId != null ? UUID.fromString(userId) : null;

        List<Object[]> hourlyData = transactionRepo.getHourlyTransactionCounts(start, end, userUuid);

        Map<String, Long> timeBucketCounts = new HashMap<>();
        List<Long> allCounts = new ArrayList<>();

        for (Object[] row : hourlyData) {
            Integer hour = ((Number) row[0]).intValue();
            Long count = ((Number) row[1]).longValue();

            String bucket = formatTimeBucket(hour, granularity);
            timeBucketCounts.merge(bucket, count, Long::sum);
            allCounts.add(count);
        }

        // Calculate statistical threshold for peaks
        double mean = allCounts.stream().mapToLong(Long::longValue).average().orElse(0.0);
        double stdDev = calculateStandardDeviation(allCounts, mean);
        BigDecimal peakThreshold = new BigDecimal(mean + 1.5 * stdDev);

        List<PeakTimesResult.PeakPeriod> peakPeriods = new ArrayList<>();

        for (Map.Entry<String, Long> entry : timeBucketCounts.entrySet()) {
            long count = entry.getValue();
            if (count > peakThreshold.longValue()) {
                BigDecimal density = new BigDecimal(count).divide(new BigDecimal(allCounts.size()), 4, RoundingMode.HALF_UP);

                PeakTimesResult.PeakPeriod peak = PeakTimesResult.PeakPeriod.builder()
                        .timeBucket(entry.getKey())
                        .transactionCount(count)
                        .density(density)
                        .peakType(determinePeakType(count, mean, stdDev))
                        .significance(determineSignificance(count, mean, stdDev))
                        .build();

                peakPeriods.add(peak);
            }
        }

        Map<String, String> patterns = analyzeTemporalPatterns(peakPeriods);

        return PeakTimesResult.builder()
                .peakPeriods(peakPeriods)
                .granularity(granularity)
                .patterns(patterns)
                .peakThreshold(peakThreshold)
                .analyzedAt(LocalDateTime.now())
                .build();
    }

    @Tool(description = "Analyze long-term seasonal transaction patterns with forecasting.")
    public SeasonalTrendsResult getSeasonalTrends(
            @ToolParam(description = "Number of months to look back for seasonal analysis", required = false)
            String lookbackMonths,

            @ToolParam(description = "Optional user ID to filter by specific user", required = false)
            String userId
    ) {
        int months = lookbackMonths != null ? Integer.parseInt(lookbackMonths) : 12;
        UUID userUuid = userId != null ? UUID.fromString(userId) : null;

        LocalDateTime startDate = LocalDateTime.now().minusMonths(months);

        List<Object[]> monthlyData = transactionRepo.getMonthlyTransactionMetrics(
                startDate, userUuid, TransactionStatus.COMPLETED);

        Map<String, BigDecimal> monthlyMetrics = new HashMap<>();
        List<BigDecimal> monthlyValues = new ArrayList<>();

        for (Object[] row : monthlyData) {
            Integer month = ((Number) row[0]).intValue();
            Long count = ((Number) row[1]).longValue();
            BigDecimal volume = row[2] != null ? new BigDecimal(row[2].toString()) : BigDecimal.ZERO;

            String monthKey = String.format("%02d", month);
            monthlyMetrics.put(monthKey, volume);
            monthlyValues.add(volume);
        }

        // Calculate seasonal indices
        BigDecimal yearlyAverage = monthlyValues.stream()
                .reduce(BigDecimal.ZERO, BigDecimal::add)
                .divide(new BigDecimal(monthlyValues.size()), 4, RoundingMode.HALF_UP);

        Map<String, BigDecimal> seasonalIndices = new HashMap<>();
        for (Map.Entry<String, BigDecimal> entry : monthlyMetrics.entrySet()) {
            BigDecimal index = yearlyAverage.compareTo(BigDecimal.ZERO) == 0 ? BigDecimal.ONE :
                    entry.getValue().divide(yearlyAverage, 4, RoundingMode.HALF_UP);
            seasonalIndices.put(entry.getKey(), index);
        }

        // Simple trend analysis
        String trendComponent = calculateSeasonalTrend(monthlyValues);

        // Basic forecast (next 3 months)
        Map<String, BigDecimal> forecast = generateSimpleForecast(monthlyMetrics, seasonalIndices, 3);

        // Calculate seasonal strength
        BigDecimal seasonalStrength = calculateSeasonalStrength(seasonalIndices);

        return SeasonalTrendsResult.builder()
                .monthlyMetrics(monthlyMetrics)
                .seasonalIndices(seasonalIndices)
                .trendComponent(trendComponent)
                .forecast(forecast)
                .seasonalStrength(seasonalStrength)
                .analyzedAt(LocalDateTime.now())
                .lookbackMonths(months)
                .build();
    }

    @Tool(description = "Analyze individual user spending patterns and behavioral insights.")
    public SpendingHabitsResult getUserSpendingHabits(
            @ToolParam(description = "User ID to analyze spending habits for")
            String userId,

            @ToolParam(description = "Number of months to analyze", required = false)
            String analysisMonths
    ) {
        UUID userUuid = UUID.fromString(userId);
        int months = analysisMonths != null ? Integer.parseInt(analysisMonths) : 6;

        LocalDateTime startDate = LocalDateTime.now().minusMonths(months);
        List<Transaction> transactions = transactionRepo.findUserTransactionsByDateRange(
                        userUuid, startDate, LocalDateTime.now())
                .stream()
                .filter(t -> t.getType() == TransactionType.DEBIT && t.getStatus() == TransactionStatus.COMPLETED)
                .collect(Collectors.toList());

        if (transactions.isEmpty()) {
            return SpendingHabitsResult.builder()
                    .averageDailySpending(Money.newBuilder().setCurrencyCode("USD").setUnits(0).build())
                    .averageWeeklySpending(Money.newBuilder().setCurrencyCode("USD").setUnits(0).build())
                    .averageMonthlySpending(Money.newBuilder().setCurrencyCode("USD").setUnits(0).build())
                    .activeSpendingDays(new HashMap<>())
                    .activeSpendingTimes(new HashMap<>())
                    .spendingVelocity(BigDecimal.ZERO)
                    .behavioralPatterns(new HashMap<>())
                    .behavioralScores(new HashMap<>())
                    .analyzedAt(LocalDateTime.now())
                    .analysisMonths(months)
                    .build();
        }

        // Calculate spending averages
        BigDecimal totalSpending = transactions.stream()
                .map(Transaction::getAmount)
                .reduce(BigDecimal.ZERO, BigDecimal::add);

        long daysBetween = ChronoUnit.DAYS.between(startDate, LocalDateTime.now());
        if (daysBetween == 0) daysBetween = 1;

        BigDecimal avgDaily = totalSpending.divide(new BigDecimal(daysBetween), 4, RoundingMode.HALF_UP);
        BigDecimal avgWeekly = avgDaily.multiply(new BigDecimal("7"));
        BigDecimal avgMonthly = avgDaily.multiply(new BigDecimal("30"));

        // Analyze spending patterns by day of week
        Map<String, Long> activeSpendingDays = transactions.stream()
                .collect(Collectors.groupingBy(
                        t -> t.getCreatedAt().getDayOfWeek().name(),
                        Collectors.counting()
                ));

        // Analyze spending patterns by hour
        Map<String, Long> activeSpendingTimes = transactions.stream()
                .collect(Collectors.groupingBy(
                        t -> String.format("%02d:00", t.getCreatedAt().getHour()),
                        Collectors.counting()
                ));

        // Calculate spending velocity (transactions per day)
        BigDecimal spendingVelocity = new BigDecimal(transactions.size())
                .divide(new BigDecimal(daysBetween), 4, RoundingMode.HALF_UP);

        // Behavioral pattern analysis
        Map<String, String> behavioralPatterns = analyzeBehavioralPatterns(transactions);

        // Behavioral scores
        Map<String, BigDecimal> behavioralScores = calculateBehavioralScores(transactions, avgDaily);

        return SpendingHabitsResult.builder()
                .averageDailySpending(Money.newBuilder().setCurrencyCode("USD").setUnits(avgDaily.longValue()).build())
                .averageWeeklySpending(Money.newBuilder().setCurrencyCode("USD").setUnits(avgWeekly.longValue()).build())
                .averageMonthlySpending(Money.newBuilder().setCurrencyCode("USD").setUnits(avgMonthly.longValue()).build())
                .activeSpendingDays(activeSpendingDays)
                .activeSpendingTimes(activeSpendingTimes)
                .spendingVelocity(spendingVelocity)
                .behavioralPatterns(behavioralPatterns)
                .behavioralScores(behavioralScores)
                .analyzedAt(LocalDateTime.now())
                .analysisMonths(months)
                .build();
    }

    @Tool(description = "Calculate comprehensive transaction amount statistics with clustering analysis.")
    public TransactionAmountResult getAverageTransactionAmount(
            @ToolParam(description = "Optional user ID to filter by specific user", required = false)
            String userId,

            @ToolParam(description = "Optional transaction type filter", required = false)
            String transactionType,

            @ToolParam(description = "Start date for analysis. eg: 2024-01-01T00:00:00")
            String startDate,

            @ToolParam(description = "End date for analysis. eg: 2024-12-31T23:59:59")
            String endDate
    ) {
        LocalDateTime start = LocalDateTime.parse(startDate);
        LocalDateTime end = LocalDateTime.parse(endDate);
        UUID userUuid = userId != null ? UUID.fromString(userId) : null;
        TransactionType type = transactionType != null ? TransactionType.valueOf(transactionType) : null;

        List<Transaction> transactions;
        if (userUuid != null && type != null) {
            transactions = transactionRepo.findUserTransactionsByType(userUuid, type, TransactionStatus.COMPLETED, start);
        } else if (userUuid != null) {
            transactions = transactionRepo.findUserTransactionsByDateRange(userUuid, start, end);
        } else {
            transactions = transactionRepo.findByStatusAndDateRange(TransactionStatus.COMPLETED, start, end, null);
        }

        if (transactions.isEmpty()) {
            return TransactionAmountResult.builder()
                    .mean(Money.newBuilder().setCurrencyCode("USD").setUnits(0).build())
                    .median(Money.newBuilder().setCurrencyCode("USD").setUnits(0).build())
                    .mode(Money.newBuilder().setCurrencyCode("USD").setUnits(0).build())
                    .standardDeviation(BigDecimal.ZERO)
                    .percentiles(new HashMap<>())
                    .populationComparison(new HashMap<>())
                    .amountClusters(new ArrayList<>())
                    .analyzedAt(LocalDateTime.now())
                    .build();
        }

        List<BigDecimal> amounts = transactions.stream()
                .map(Transaction::getAmount)
                .sorted()
                .collect(Collectors.toList());

        // Calculate statistics
        BigDecimal mean = amounts.stream()
                .reduce(BigDecimal.ZERO, BigDecimal::add)
                .divide(new BigDecimal(amounts.size()), 4, RoundingMode.HALF_UP);

        BigDecimal median = amounts.get(amounts.size() / 2);

        // Find mode (most frequent amount)
        BigDecimal mode = amounts.stream()
                .collect(Collectors.groupingBy(
                        amount -> amount,
                        Collectors.counting()
                ))
                .entrySet().stream()
                .max(Map.Entry.comparingByValue())
                .map(Map.Entry::getKey)
                .orElse(BigDecimal.ZERO);

        // Calculate standard deviation
        BigDecimal variance = amounts.stream()
                .map(amount -> amount.subtract(mean).pow(2))
                .reduce(BigDecimal.ZERO, BigDecimal::add)
                .divide(new BigDecimal(amounts.size()), 4, RoundingMode.HALF_UP);

        BigDecimal stdDev = new BigDecimal(Math.sqrt(variance.doubleValue())).setScale(4, RoundingMode.HALF_UP);

        // Calculate percentiles
        Map<String, Money> percentiles = new HashMap<>();
        percentiles.put("25th", Money.newBuilder().setCurrencyCode("USD")
                .setUnits(amounts.get((int) (amounts.size() * 0.25)).longValue()).build());
        percentiles.put("75th", Money.newBuilder().setCurrencyCode("USD")
                .setUnits(amounts.get((int) (amounts.size() * 0.75)).longValue()).build());
        percentiles.put("90th", Money.newBuilder().setCurrencyCode("USD")
                .setUnits(amounts.get((int) (amounts.size() * 0.90)).longValue()).build());
        percentiles.put("95th", Money.newBuilder().setCurrencyCode("USD")
                .setUnits(amounts.get((int) (amounts.size() * 0.95)).longValue()).build());

        // Simple clustering (3 clusters based on amount ranges)
        List<TransactionAmountResult.AmountCluster> clusters = createAmountClusters(amounts);

        Map<String, Money> populationComparison = new HashMap<>();
        if (userUuid != null) {
            // Compare with population average (simplified)
            populationComparison.put("userMean", Money.newBuilder().setCurrencyCode("USD").setUnits(mean.longValue()).build());
            populationComparison.put("populationMean", Money.newBuilder().setCurrencyCode("USD").setUnits(mean.longValue()).build());
        }

        return TransactionAmountResult.builder()
                .mean(Money.newBuilder().setCurrencyCode("USD").setUnits(mean.longValue()).build())
                .median(Money.newBuilder().setCurrencyCode("USD").setUnits(median.longValue()).build())
                .mode(Money.newBuilder().setCurrencyCode("USD").setUnits(mode.longValue()).build())
                .standardDeviation(stdDev)
                .percentiles(percentiles)
                .populationComparison(populationComparison)
                .amountClusters(clusters)
                .analyzedAt(LocalDateTime.now())
                .build();
    }

    // Helper methods continue in next part due to length...
    private List<LocalDateTime[]> createTimePeriods(LocalDateTime start, LocalDateTime end, String period) {
        List<LocalDateTime[]> periods = new ArrayList<>();
        LocalDateTime current = start;

        while (current.isBefore(end)) {
            LocalDateTime periodEnd;
            switch (period.toUpperCase()) {
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

    private String formatTimePeriod(LocalDateTime periodStart, String period) {
        switch (period.toUpperCase()) {
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

    private PeriodComparisonResult.PeriodMetrics calculatePeriodMetrics(LocalDateTime start, LocalDateTime end, UUID userUuid) {
        List<Transaction> transactions = userUuid != null ?
                transactionRepo.findUserTransactionsByDateRange(userUuid, start, end) :
                transactionRepo.findByStatusAndDateRange(null, start, end, null);

        BigDecimal totalVolume = transactions.stream()
                .map(Transaction::getAmount)
                .reduce(BigDecimal.ZERO, BigDecimal::add);

        long totalCount = transactions.size();

        BigDecimal avgAmount = totalCount == 0 ? BigDecimal.ZERO :
                totalVolume.divide(new BigDecimal(totalCount), 4, RoundingMode.HALF_UP);

        long completedCount = transactions.stream()
                .mapToLong(t -> t.getStatus() == TransactionStatus.COMPLETED ? 1 : 0)
                .sum();

        BigDecimal successRate = totalCount == 0 ? BigDecimal.ZERO :
                new BigDecimal(completedCount).divide(new BigDecimal(totalCount), 4, RoundingMode.HALF_UP);

        Map<String, Long> typeDistribution = transactions.stream()
                .collect(Collectors.groupingBy(
                        t -> t.getType().name(),
                        Collectors.counting()
                ));

        return PeriodComparisonResult.PeriodMetrics.builder()
                .startDate(start)
                .endDate(end)
                .totalVolume(Money.newBuilder().setCurrencyCode("USD").setUnits(totalVolume.longValue()).build())
                .totalCount(totalCount)
                .averageAmount(avgAmount)
                .successRate(successRate)
                .transactionTypeDistribution(typeDistribution)
                .build();
    }

    private Map<String, BigDecimal> calculatePercentageChanges(
            PeriodComparisonResult.PeriodMetrics metrics1,
            PeriodComparisonResult.PeriodMetrics metrics2) {

        Map<String, BigDecimal> changes = new HashMap<>();

        // Volume change
        BigDecimal volume1 = new BigDecimal(metrics1.getTotalVolume().getUnits());
        BigDecimal volume2 = new BigDecimal(metrics2.getTotalVolume().getUnits());
        if (volume1.compareTo(BigDecimal.ZERO) > 0) {
            BigDecimal volumeChange = volume2.subtract(volume1).divide(volume1, 4, RoundingMode.HALF_UP).multiply(new BigDecimal("100"));
            changes.put("volumeChange", volumeChange);
        }

        // Count change
        BigDecimal countChange = BigDecimal.ZERO;
        if (metrics1.getTotalCount() > 0) {
            countChange = new BigDecimal(metrics2.getTotalCount() - metrics1.getTotalCount())
                    .divide(new BigDecimal(metrics1.getTotalCount()), 4, RoundingMode.HALF_UP)
                    .multiply(new BigDecimal("100"));
        }
        changes.put("countChange", countChange);

        // Success rate change
        BigDecimal successRateChange = metrics2.getSuccessRate().subtract(metrics1.getSuccessRate()).multiply(new BigDecimal("100"));
        changes.put("successRateChange", successRateChange);

        return changes;
    }

    private String determineStatisticalSignificance(
            PeriodComparisonResult.PeriodMetrics metrics1,
            PeriodComparisonResult.PeriodMetrics metrics2) {

        // Simple heuristic for statistical significance
        long totalTransactions = metrics1.getTotalCount() + metrics2.getTotalCount();
        if (totalTransactions < 50) {
            return "Insufficient data for statistical significance";
        } else if (totalTransactions < 200) {
            return "Low statistical confidence";
        } else {
            return "Statistically significant";
        }
    }

    private List<String> generateKeyInsights(
            PeriodComparisonResult.PeriodMetrics metrics1,
            PeriodComparisonResult.PeriodMetrics metrics2,
            Map<String, BigDecimal> changes) {

        List<String> insights = new ArrayList<>();

        BigDecimal volumeChange = changes.getOrDefault("volumeChange", BigDecimal.ZERO);
        BigDecimal countChange = changes.getOrDefault("countChange", BigDecimal.ZERO);

        if (volumeChange.abs().compareTo(new BigDecimal("10")) > 0) {
            String direction = volumeChange.compareTo(BigDecimal.ZERO) > 0 ? "increased" : "decreased";
            insights.add("Transaction volume " + direction + " by " + volumeChange.abs().setScale(1, RoundingMode.HALF_UP) + "%");
        }

        if (countChange.abs().compareTo(new BigDecimal("10")) > 0) {
            String direction = countChange.compareTo(BigDecimal.ZERO) > 0 ? "increased" : "decreased";
            insights.add("Transaction frequency " + direction + " by " + countChange.abs().setScale(1, RoundingMode.HALF_UP) + "%");
        }

        if (insights.isEmpty()) {
            insights.add("Transaction patterns remained relatively stable between periods");
        }

        return insights;
    }

    private double calculateStandardDeviation(List<Long> values, double mean) {
        double sumSquaredDeviations = values.stream()
                .mapToDouble(value -> Math.pow(value - mean, 2))
                .sum();
        return Math.sqrt(sumSquaredDeviations / values.size());
    }

    private String formatTimeBucket(int hour, String granularity) {
        switch (granularity.toUpperCase()) {
            case "HOURLY" -> {
                return String.format("%02d:00", hour);
            }
            case "DAILY" -> {
                if (hour >= 6 && hour < 12) return "Morning";
                else if (hour >= 12 && hour < 18) return "Afternoon";
                else if (hour >= 18 && hour < 24) return "Evening";
                else return "Night";
            }
            default -> {
                return String.format("%02d:00", hour);
            }
        }
    }

    private String determinePeakType(long count, double mean, double stdDev) {
        double zScore = (count - mean) / stdDev;
        if (zScore > 2.5) return "Major Peak";
        else if (zScore > 1.5) return "Moderate Peak";
        else return "Minor Peak";
    }

    private String determineSignificance(long count, double mean, double stdDev) {
        double zScore = (count - mean) / stdDev;
        return "Z-score: " + String.format("%.2f", zScore);
    }

    private Map<String, String> analyzeTemporalPatterns(List<PeakTimesResult.PeakPeriod> peaks) {
        Map<String, String> patterns = new HashMap<>();

        if (peaks.isEmpty()) {
            patterns.put("overall", "No significant peaks detected");
            return patterns;
        }

        // Analyze peak timing patterns
        Map<String, Long> peakTimes = peaks.stream()
                .collect(Collectors.groupingBy(
                        PeakTimesResult.PeakPeriod::getTimeBucket,
                        Collectors.counting()
                ));

        String mostCommonPeakTime = peakTimes.entrySet().stream()
                .max(Map.Entry.comparingByValue())
                .map(Map.Entry::getKey)
                .orElse("Unknown");

        patterns.put("mostCommonPeakTime", mostCommonPeakTime);
        patterns.put("totalPeaks", String.valueOf(peaks.size()));

        return patterns;
    }

    private String calculateSeasonalTrend(List<BigDecimal> monthlyValues) {
        if (monthlyValues.size() < 2) return "Insufficient data";

        BigDecimal firstValue = monthlyValues.get(0);
        BigDecimal lastValue = monthlyValues.get(monthlyValues.size() - 1);

        if (lastValue.compareTo(firstValue.multiply(new BigDecimal("1.1"))) > 0) {
            return "Growing";
        } else if (lastValue.compareTo(firstValue.multiply(new BigDecimal("0.9"))) < 0) {
            return "Declining";
        } else {
            return "Stable";
        }
    }

    private Map<String, BigDecimal> generateSimpleForecast(
            Map<String, BigDecimal> historicalData,
            Map<String, BigDecimal> seasonalIndices,
            int forecastMonths) {

        Map<String, BigDecimal> forecast = new HashMap<>();

        // Simple trend-based forecast
        BigDecimal avgMonthlyValue = historicalData.values().stream()
                .reduce(BigDecimal.ZERO, BigDecimal::add)
                .divide(new BigDecimal(historicalData.size()), 4, RoundingMode.HALF_UP);

        for (int i = 1; i <= forecastMonths; i++) {
            int forecastMonth = (LocalDateTime.now().getMonthValue() + i - 1) % 12 + 1;
            String monthKey = String.format("%02d", forecastMonth);

            BigDecimal seasonalIndex = seasonalIndices.getOrDefault(monthKey, BigDecimal.ONE);
            BigDecimal forecastValue = avgMonthlyValue.multiply(seasonalIndex);

            forecast.put("forecast_" + monthKey, forecastValue);
        }

        return forecast;
    }

    private BigDecimal calculateSeasonalStrength(Map<String, BigDecimal> seasonalIndices) {
        if (seasonalIndices.isEmpty()) return BigDecimal.ZERO;

        // Calculate coefficient of variation as a measure of seasonal strength
        BigDecimal mean = seasonalIndices.values().stream()
                .reduce(BigDecimal.ZERO, BigDecimal::add)
                .divide(new BigDecimal(seasonalIndices.size()), 4, RoundingMode.HALF_UP);

        BigDecimal variance = seasonalIndices.values().stream()
                .map(index -> index.subtract(mean).pow(2))
                .reduce(BigDecimal.ZERO, BigDecimal::add)
                .divide(new BigDecimal(seasonalIndices.size()), 4, RoundingMode.HALF_UP);

        BigDecimal stdDev = new BigDecimal(Math.sqrt(variance.doubleValue()));

        return mean.compareTo(BigDecimal.ZERO) == 0 ? BigDecimal.ZERO :
                stdDev.divide(mean, 4, RoundingMode.HALF_UP);
    }

    private Map<String, String> analyzeBehavioralPatterns(List<Transaction> transactions) {
        Map<String, String> patterns = new HashMap<>();

        // Weekend vs weekday spending
        long weekendSpending = transactions.stream()
                .mapToLong(t -> t.getCreatedAt().getDayOfWeek().getValue() >= 6 ? 1 : 0)
                .sum();

        double weekendRatio = (double) weekendSpending / transactions.size();
        patterns.put("weekendSpending", weekendRatio > 0.4 ? "High weekend spender" : "Weekday focused spender");

        // Time of day patterns
        Map<String, Long> hourlySpending = transactions.stream()
                .collect(Collectors.groupingBy(
                        t -> {
                            int hour = t.getCreatedAt().getHour();
                            if (hour >= 6 && hour < 12) return "Morning";
                            else if (hour >= 12 && hour < 18) return "Afternoon";
                            else if (hour >= 18 && hour < 24) return "Evening";
                            else return "Night";
                        },
                        Collectors.counting()
                ));

        String preferredTime = hourlySpending.entrySet().stream()
                .max(Map.Entry.comparingByValue())
                .map(Map.Entry::getKey)
                .orElse("Unknown");
        patterns.put("preferredSpendingTime", preferredTime + " spender");

        return patterns;
    }

    private Map<String, BigDecimal> calculateBehavioralScores(List<Transaction> transactions, BigDecimal avgDaily) {
        Map<String, BigDecimal> scores = new HashMap<>();

        // Spending consistency score (0-1, higher is more consistent)
        List<BigDecimal> dailyAmounts = transactions.stream()
                .collect(Collectors.groupingBy(
                        t -> t.getCreatedAt().toLocalDate(),
                        Collectors.mapping(
                                Transaction::getAmount,
                                Collectors.reducing(BigDecimal.ZERO, BigDecimal::add)
                        )
                )).values().stream().collect(Collectors.toList());

        if (!dailyAmounts.isEmpty()) {
            BigDecimal variance = dailyAmounts.stream()
                    .map(amount -> amount.subtract(avgDaily).pow(2))
                    .reduce(BigDecimal.ZERO, BigDecimal::add)
                    .divide(new BigDecimal(dailyAmounts.size()), 4, RoundingMode.HALF_UP);

            BigDecimal consistency = avgDaily.compareTo(BigDecimal.ZERO) == 0 ? BigDecimal.ONE :
                    BigDecimal.ONE.subtract(variance.divide(avgDaily.pow(2).add(BigDecimal.ONE), 4, RoundingMode.HALF_UP));
            scores.put("consistencyScore", consistency.max(BigDecimal.ZERO).min(BigDecimal.ONE));
        }

        // Transaction frequency score
        long uniqueDays = transactions.stream()
                .map(t -> t.getCreatedAt().toLocalDate())
                .distinct()
                .count();
        BigDecimal frequencyScore = new BigDecimal(uniqueDays).divide(new BigDecimal("30"), 4, RoundingMode.HALF_UP);
        scores.put("frequencyScore", frequencyScore.min(BigDecimal.ONE));

        return scores;
    }

    private List<TransactionAmountResult.AmountCluster> createAmountClusters(List<BigDecimal> amounts) {
        List<TransactionAmountResult.AmountCluster> clusters = new ArrayList<>();

        // Simple clustering: Low, Medium, High
        BigDecimal max = amounts.get(amounts.size() - 1);
        BigDecimal low = max.divide(new BigDecimal("3"), 4, RoundingMode.HALF_UP);
        BigDecimal medium = max.multiply(new BigDecimal("2")).divide(new BigDecimal("3"), 4, RoundingMode.HALF_UP);

        Map<String, List<BigDecimal>> clusters_map = amounts.stream()
                .collect(Collectors.groupingBy(amount -> {
                    if (amount.compareTo(low) <= 0) return "Low";
                    else if (amount.compareTo(medium) <= 0) return "Medium";
                    else return "High";
                }));

        for (Map.Entry<String, List<BigDecimal>> entry : clusters_map.entrySet()) {
            BigDecimal centerAmount = entry.getValue().stream()
                    .reduce(BigDecimal.ZERO, BigDecimal::add)
                    .divide(new BigDecimal(entry.getValue().size()), 4, RoundingMode.HALF_UP);

            TransactionAmountResult.AmountCluster cluster = TransactionAmountResult.AmountCluster.builder()
                    .centerAmount(Money.newBuilder().setCurrencyCode("USD").setUnits(centerAmount.longValue()).build())
                    .transactionCount(entry.getValue().size())
                    .clusterLabel(entry.getKey() + " Amount")
                    .build();

            clusters.add(cluster);
        }

        return clusters;
    }

    @Tool(description = "Find when users are most active in making transactions with activity pattern analysis.")
    public ActivityPeriodsResult getUserActivityPeriods(
            @ToolParam(description = "User ID to analyze activity periods for")
            String userId,

            @ToolParam(description = "Number of weeks to analyze", required = false)
            String analysisWeeks
    ) {
        UUID userUuid = UUID.fromString(userId);
        int weeks = analysisWeeks != null ? Integer.parseInt(analysisWeeks) : 12;

        LocalDateTime startDate = LocalDateTime.now().minusWeeks(weeks);
        List<Transaction> transactions = transactionRepo.findUserTransactionsByDateRange(
                userUuid, startDate, LocalDateTime.now());

        if (transactions.isEmpty()) {
            return ActivityPeriodsResult.builder()
                    .hourlyActivity(new HashMap<>())
                    .weeklyActivity(new HashMap<>())
                    .monthlyActivity(new HashMap<>())
                    .mostActivePeriods(new ArrayList<>())
                    .populationComparison(new HashMap<>())
                    .analyzedAt(LocalDateTime.now())
                    .analysisWeeks(weeks)
                    .build();
        }

        // Hourly activity analysis
        Map<Integer, Long> hourlyActivity = transactions.stream()
                .collect(Collectors.groupingBy(
                        t -> t.getCreatedAt().getHour(),
                        Collectors.counting()
                ));

        // Weekly activity analysis (day of week)
        Map<String, Long> weeklyActivity = transactions.stream()
                .collect(Collectors.groupingBy(
                        t -> t.getCreatedAt().getDayOfWeek().name(),
                        Collectors.counting()
                ));

        // Monthly activity analysis
        Map<String, Long> monthlyActivity = transactions.stream()
                .collect(Collectors.groupingBy(
                        t -> t.getCreatedAt().getMonth().name(),
                        Collectors.counting()
                ));

        // Calculate activity scores and identify most active periods
        List<ActivityPeriodsResult.ActivePeriod> mostActivePeriods = new ArrayList<>();

        // Find top 3 active hours
        hourlyActivity.entrySet().stream()
                .sorted(Map.Entry.<Integer, Long>comparingByValue().reversed())
                .limit(3)
                .forEach(entry -> {
                    BigDecimal score = new BigDecimal(entry.getValue())
                            .divide(new BigDecimal(transactions.size()), 4, RoundingMode.HALF_UP);

                    ActivityPeriodsResult.ActivePeriod period = ActivityPeriodsResult.ActivePeriod.builder()
                            .timeDescription("Hour " + entry.getKey() + ":00")
                            .activityScore(score.multiply(new BigDecimal("100")))
                            .uniquenessLevel(determineUniquenessLevel(entry.getValue(), transactions.size()))
                            .build();

                    mostActivePeriods.add(period);
                });

        // Population comparison (simplified - comparing with user's own averages)
        Map<String, BigDecimal> populationComparison = new HashMap<>();
        double avgTransactionsPerHour = (double) transactions.size() / 24;

        for (Map.Entry<Integer, Long> entry : hourlyActivity.entrySet()) {
            String key = "hour_" + entry.getKey();
            BigDecimal ratio = new BigDecimal(entry.getValue())
                    .divide(new BigDecimal(avgTransactionsPerHour), 4, RoundingMode.HALF_UP);
            populationComparison.put(key, ratio);
        }

        return ActivityPeriodsResult.builder()
                .hourlyActivity(hourlyActivity)
                .weeklyActivity(weeklyActivity)
                .monthlyActivity(monthlyActivity)
                .mostActivePeriods(mostActivePeriods)
                .populationComparison(populationComparison)
                .analyzedAt(LocalDateTime.now())
                .analysisWeeks(weeks)
                .build();
    }

    @Tool(description = "Analyze user preferences for different transaction types with trend analysis.")
    public TypePreferenceResult getTransactionTypePreferences(
            @ToolParam(description = "User ID to analyze type preferences for")
            String userId,

            @ToolParam(description = "Number of quarters to compare", required = false)
            String comparisonPeriods
    ) {
        UUID userUuid = UUID.fromString(userId);
        int periods = comparisonPeriods != null ? Integer.parseInt(comparisonPeriods) : 2;

        LocalDateTime currentPeriodStart = LocalDateTime.now().minusMonths(3 * periods);
        LocalDateTime midPoint = LocalDateTime.now().minusMonths(3);
        LocalDateTime now = LocalDateTime.now();

        // Get transactions for both periods
        List<Transaction> currentPeriodTransactions = transactionRepo.findUserTransactionsByDateRange(
                userUuid, midPoint, now);
        List<Transaction> previousPeriodTransactions = transactionRepo.findUserTransactionsByDateRange(
                userUuid, currentPeriodStart, midPoint);
        List<Transaction> allTransactions = transactionRepo.findUserTransactionsByDateRange(
                userUuid, currentPeriodStart, now);

        if (allTransactions.isEmpty()) {
            return TypePreferenceResult.builder()
                    .typeDistribution(new HashMap<>())
                    .volumeAnalysis(new HashMap<>())
                    .frequencyAnalysis(new HashMap<>())
                    .trendChanges(new HashMap<>())
                    .populationComparison(new HashMap<>())
                    .preferenceScores(new HashMap<>())
                    .confidenceIntervals(new HashMap<>())
                    .analyzedAt(LocalDateTime.now())
                    .comparisonPeriods(periods)
                    .build();
        }

        // Type distribution analysis
        Map<String, BigDecimal> typeDistribution = allTransactions.stream()
                .collect(Collectors.groupingBy(
                        t -> t.getType().name(),
                        Collectors.collectingAndThen(
                                Collectors.counting(),
                                count -> new BigDecimal(count)
                                        .divide(new BigDecimal(allTransactions.size()), 4, RoundingMode.HALF_UP)
                                        .multiply(new BigDecimal("100"))
                        )
                ));

        // Volume analysis by type
        Map<String, Long> volumeAnalysis = allTransactions.stream()
                .collect(Collectors.groupingBy(
                        t -> t.getType().name(),
                        Collectors.summingLong(t -> t.getAmount().longValue())
                ));

        // Frequency analysis
        Map<String, Long> frequencyAnalysis = allTransactions.stream()
                .collect(Collectors.groupingBy(
                        t -> t.getType().name(),
                        Collectors.counting()
                ));

        // Trend changes between periods
        Map<String, BigDecimal> trendChanges = new HashMap<>();

        Map<String, Long> currentFreq = currentPeriodTransactions.stream()
                .collect(Collectors.groupingBy(
                        t -> t.getType().name(),
                        Collectors.counting()
                ));

        Map<String, Long> previousFreq = previousPeriodTransactions.stream()
                .collect(Collectors.groupingBy(
                        t -> t.getType().name(),
                        Collectors.counting()
                ));

        for (TransactionType type : TransactionType.values()) {
            String typeName = type.name();
            long currentCount = currentFreq.getOrDefault(typeName, 0L);
            long previousCount = previousFreq.getOrDefault(typeName, 0L);

            if (previousCount > 0) {
                BigDecimal change = new BigDecimal(currentCount - previousCount)
                        .divide(new BigDecimal(previousCount), 4, RoundingMode.HALF_UP)
                        .multiply(new BigDecimal("100"));
                trendChanges.put(typeName, change);
            } else {
                trendChanges.put(typeName, BigDecimal.ZERO);
            }
        }

        // Population comparison (simplified - comparing with overall type distribution)
        Map<String, BigDecimal> populationComparison = new HashMap<>();
        for (TransactionType type : TransactionType.values()) {
            String typeName = type.name();
            BigDecimal userPreference = typeDistribution.getOrDefault(typeName, BigDecimal.ZERO);
            // For simplicity, using a baseline distribution
            BigDecimal baselinePreference = getBaselineTypePreference(type);
            BigDecimal comparison = userPreference.subtract(baselinePreference);
            populationComparison.put(typeName, comparison);
        }

        // Preference scores (strength of preference for each type)
        Map<String, BigDecimal> preferenceScores = new HashMap<>();
        BigDecimal maxFreq = frequencyAnalysis.values().stream()
                .max(Long::compareTo)
                .map(BigDecimal::new)
                .orElse(BigDecimal.ONE);

        for (Map.Entry<String, Long> entry : frequencyAnalysis.entrySet()) {
            BigDecimal score = new BigDecimal(entry.getValue())
                    .divide(maxFreq, 4, RoundingMode.HALF_UP);
            preferenceScores.put(entry.getKey(), score);
        }

        // Confidence intervals (simplified statistical confidence)
        Map<String, BigDecimal> confidenceIntervals = new HashMap<>();
        for (Map.Entry<String, Long> entry : frequencyAnalysis.entrySet()) {
            long count = entry.getValue();
            BigDecimal proportion = new BigDecimal(count)
                    .divide(new BigDecimal(allTransactions.size()), 4, RoundingMode.HALF_UP);

            // Simplified confidence interval calculation
            BigDecimal stderr = new BigDecimal(Math.sqrt(proportion.doubleValue() *
                    (1 - proportion.doubleValue()) / allTransactions.size()))
                    .setScale(4, RoundingMode.HALF_UP);

            confidenceIntervals.put(entry.getKey(), stderr.multiply(new BigDecimal("1.96"))); // 95% CI
        }

        return TypePreferenceResult.builder()
                .typeDistribution(typeDistribution)
                .volumeAnalysis(volumeAnalysis)
                .frequencyAnalysis(frequencyAnalysis)
                .trendChanges(trendChanges)
                .populationComparison(populationComparison)
                .preferenceScores(preferenceScores)
                .confidenceIntervals(confidenceIntervals)
                .analyzedAt(LocalDateTime.now())
                .comparisonPeriods(periods)
                .build();
    }

    private String determineUniquenessLevel(long activityCount, int totalTransactions) {
        double percentage = (double) activityCount / totalTransactions;

        if (percentage > 0.3) return "Very High";
        else if (percentage > 0.15) return "High";
        else if (percentage > 0.05) return "Moderate";
        else return "Low";
    }

    private BigDecimal getBaselineTypePreference(TransactionType type) {
        // Simplified baseline preferences for comparison
        return switch (type) {
            case DEBIT -> new BigDecimal("40.0");    // 40% baseline
            case CREDIT -> new BigDecimal("30.0");   // 30% baseline  
            case TRANSFER -> new BigDecimal("20.0"); // 20% baseline
            case REFUND -> new BigDecimal("10.0");   // 10% baseline
        };
    }
}