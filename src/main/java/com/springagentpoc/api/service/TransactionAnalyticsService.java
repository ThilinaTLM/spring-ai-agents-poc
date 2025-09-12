package com.springagentpoc.api.service;

import com.google.type.Money;
import com.springagentpoc.api.data.embedded.TransactionStatus;
import com.springagentpoc.api.data.embedded.TransactionType;
import com.springagentpoc.api.data.entity.Transaction;
import com.springagentpoc.api.data.repo.TransactionRepo;
import com.springagentpoc.api.models.common.FailureAnalysisResult;
import com.springagentpoc.api.models.common.PendingSummaryResult;
import com.springagentpoc.api.models.common.ProcessingTimeResult;
import com.springagentpoc.api.models.common.SuccessRateResult;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.ai.tool.annotation.Tool;
import org.springframework.ai.tool.annotation.ToolParam;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.time.Duration;
import java.time.LocalDateTime;
import java.util.*;
import java.util.stream.Collectors;

@Service
@Slf4j
@RequiredArgsConstructor
public class TransactionAnalyticsService {

    private final TransactionRepo transactionRepo;

    @Tool(description = "Calculate transaction completion rates and success metrics.")
    public SuccessRateResult getTransactionSuccessRate(
            @ToolParam(description = "Start date for success rate calculation. eg: 2024-01-01T00:00:00")
            String startDate,

            @ToolParam(description = "End date for success rate calculation. eg: 2024-12-31T23:59:59")
            String endDate,

            @ToolParam(description = "Optional user ID to filter by specific user", required = false)
            String userId,

            @ToolParam(description = "Optional transaction type filter", required = false)
            String transactionType
    ) {
        LocalDateTime start = LocalDateTime.parse(startDate);
        LocalDateTime end = LocalDateTime.parse(endDate);
        UUID userUuid = userId != null ? UUID.fromString(userId) : null;
        TransactionType type = transactionType != null ? TransactionType.valueOf(transactionType) : null;

        long completedCount = transactionRepo.countByStatusAndDateRange(TransactionStatus.COMPLETED, start, end, userUuid);
        long failedCount = transactionRepo.countByStatusAndDateRange(TransactionStatus.FAILED, start, end, userUuid);
        long cancelledCount = transactionRepo.countByStatusAndDateRange(TransactionStatus.CANCELLED, start, end, userUuid);
        long pendingCount = transactionRepo.countByStatusAndDateRange(TransactionStatus.PENDING, start, end, userUuid);

        long totalProcessed = completedCount + failedCount + cancelledCount;
        long totalAll = totalProcessed + pendingCount;

        BigDecimal successRate = totalProcessed == 0 ? BigDecimal.ZERO :
                new BigDecimal(completedCount).divide(new BigDecimal(totalProcessed), 4, RoundingMode.HALF_UP);
        BigDecimal failureRate = totalAll == 0 ? BigDecimal.ZERO :
                new BigDecimal(failedCount).divide(new BigDecimal(totalAll), 4, RoundingMode.HALF_UP);
        BigDecimal cancellationRate = totalAll == 0 ? BigDecimal.ZERO :
                new BigDecimal(cancelledCount).divide(new BigDecimal(totalAll), 4, RoundingMode.HALF_UP);

        // Compare with a previous period
        LocalDateTime previousStart = start.minus(Duration.between(start, end));
        Map<String, BigDecimal> previousPeriodRates = calculatePreviousPeriodRates(previousStart, start, userUuid);
        String trendAnalysis = analyzeTrend(successRate, previousPeriodRates.get("successRate"));

        String period = start.toLocalDate() + " to " + end.toLocalDate();

        return SuccessRateResult.builder()
                .successRate(successRate.multiply(new BigDecimal("100")))
                .failureRate(failureRate.multiply(new BigDecimal("100")))
                .cancellationRate(cancellationRate.multiply(new BigDecimal("100")))
                .completedCount(completedCount)
                .failedCount(failedCount)
                .cancelledCount(cancelledCount)
                .pendingCount(pendingCount)
                .previousPeriodRates(previousPeriodRates)
                .trendAnalysis(trendAnalysis)
                .analyzedAt(LocalDateTime.now())
                .period(period)
                .build();
    }

    @Tool(description = "Analyze patterns in failed transactions to identify common issues.")
    public FailureAnalysisResult getFailedTransactionAnalysis(
            @ToolParam(description = "Start date for failure analysis. eg: 2024-01-01T00:00:00")
            String startDate,

            @ToolParam(description = "End date for failure analysis. eg: 2024-12-31T23:59:59")
            String endDate,

            @ToolParam(description = "Optional user ID to filter by specific user", required = false)
            String userId
    ) {
        LocalDateTime start = LocalDateTime.parse(startDate);
        LocalDateTime end = LocalDateTime.parse(endDate);
        UUID userUuid = userId != null ? UUID.fromString(userId) : null;

        List<Transaction> failedTransactions = transactionRepo.findByStatusAndDateRange(
                TransactionStatus.FAILED, start, end, userUuid);

        // Analyze by hour of the day
        Map<Integer, Long> failuresByHour = failedTransactions.stream()
                .collect(Collectors.groupingBy(
                        t -> t.getCreatedAt().getHour(),
                        Collectors.counting()
                ));

        // Analyze by amount ranges
        Map<String, Long> failuresByAmountRange = categorizeByAmountRanges(failedTransactions);

        // Analyze by transaction type
        Map<String, Long> failuresByType = failedTransactions.stream()
                .collect(Collectors.groupingBy(
                        t -> t.getType().name(),
                        Collectors.counting()
                ));

        // Extract common keywords from descriptions
        List<String> commonKeywords = extractFailureKeywords(failedTransactions);

        // Calculate overall failure rate
        long totalTransactions = transactionRepo.countTransactionsByPeriod(userUuid, start, end, null);
        BigDecimal overallFailureRate = totalTransactions == 0 ? BigDecimal.ZERO :
                new BigDecimal(failedTransactions.size()).divide(new BigDecimal(totalTransactions), 4, RoundingMode.HALF_UP);

        List<String> recommendations = generateFailureRecommendations(
                failuresByHour, failuresByAmountRange, commonKeywords);

        String period = start.toLocalDate() + " to " + end.toLocalDate();

        return FailureAnalysisResult.builder()
                .failuresByHour(failuresByHour)
                .failuresByAmountRange(failuresByAmountRange)
                .failuresByTransactionType(failuresByType)
                .commonFailureKeywords(commonKeywords)
                .overallFailureRate(overallFailureRate.multiply(new BigDecimal("100")))
                .recommendations(recommendations)
                .analyzedAt(LocalDateTime.now())
                .period(period)
                .build();
    }

    @Tool(description = "Monitor pending transaction volumes and aging to identify stale transactions.")
    public PendingSummaryResult getPendingTransactionsSummary(
            @ToolParam(description = "Optional user ID to filter by specific user", required = false)
            String userId
    ) {
        UUID userUuid = userId != null ? UUID.fromString(userId) : null;

        List<Transaction> pendingTransactions = transactionRepo.findPendingTransactions(
                TransactionStatus.PENDING, userUuid);

        LocalDateTime now = LocalDateTime.now();
        Map<String, Long> agingBuckets = new HashMap<>();
        Map<String, Money> volumeByBucket = new HashMap<>();
        long stalePendingCount = 0;
        BigDecimal totalVolume = BigDecimal.ZERO;

        // Initialize buckets
        agingBuckets.put("< 1 hour", 0L);
        agingBuckets.put("1-24 hours", 0L);
        agingBuckets.put("1-7 days", 0L);
        agingBuckets.put("> 7 days", 0L);

        for (String bucket : agingBuckets.keySet()) {
            volumeByBucket.put(bucket, Money.newBuilder().setCurrencyCode("USD").setUnits(0).build());
        }

        Map<String, BigDecimal> volumeCalculation = new HashMap<>();
        for (String bucket : agingBuckets.keySet()) {
            volumeCalculation.put(bucket, BigDecimal.ZERO);
        }

        for (Transaction transaction : pendingTransactions) {
            Duration age = Duration.between(transaction.getCreatedAt(), now);
            String bucket = categorizePendingAge(age);

            agingBuckets.merge(bucket, 1L, Long::sum);
            volumeCalculation.merge(bucket, transaction.getAmount(), BigDecimal::add);
            totalVolume = totalVolume.add(transaction.getAmount());

            if (age.toDays() > 7) {
                stalePendingCount++;
            }
        }

        // Convert volume calculations to Money objects
        for (Map.Entry<String, BigDecimal> entry : volumeCalculation.entrySet()) {
            volumeByBucket.put(entry.getKey(),
                    Money.newBuilder().setCurrencyCode("USD").setUnits(entry.getValue().longValue()).build());
        }

        // Analyze by transaction type
        Map<String, Long> countsByType = pendingTransactions.stream()
                .collect(Collectors.groupingBy(
                        t -> t.getType().name(),
                        Collectors.counting()
                ));

        String alertLevel = determineAlertLevel(stalePendingCount, pendingTransactions.size());

        return PendingSummaryResult.builder()
                .agingBuckets(agingBuckets)
                .volumeByBucket(volumeByBucket)
                .countsByTransactionType(countsByType)
                .stalePendingCount(stalePendingCount)
                .totalPendingVolume(Money.newBuilder().setCurrencyCode("USD").setUnits(totalVolume.longValue()).build())
                .alertLevel(alertLevel)
                .analyzedAt(LocalDateTime.now())
                .build();
    }

    @Tool(description = "Calculate transaction processing duration metrics and SLA compliance.")
    public ProcessingTimeResult getAverageProcessingTime(
            @ToolParam(description = "Start date for processing time analysis. eg: 2024-01-01T00:00:00")
            String startDate,

            @ToolParam(description = "End date for processing time analysis. eg: 2024-12-31T23:59:59")
            String endDate,

            @ToolParam(description = "Optional transaction type filter", required = false)
            String transactionType
    ) {
        LocalDateTime start = LocalDateTime.parse(startDate);
        LocalDateTime end = LocalDateTime.parse(endDate);
        TransactionType type = transactionType != null ? TransactionType.valueOf(transactionType) : null;

        List<Transaction> completedTransactions = transactionRepo.findCompletedTransactionsForProcessingTime(
                TransactionStatus.COMPLETED, start, end, type);

        List<Duration> processingTimes = completedTransactions.stream()
                .filter(t -> t.getUpdatedAt() != null)
                .map(t -> Duration.between(t.getCreatedAt(), t.getUpdatedAt()))
                .sorted()
                .toList();

        if (processingTimes.isEmpty()) {
            return ProcessingTimeResult.builder()
                    .meanProcessingTime(Duration.ZERO)
                    .medianProcessingTime(Duration.ZERO)
                    .percentile95(Duration.ZERO)
                    .maxProcessingTime(Duration.ZERO)
                    .processingTimeByType(new HashMap<>())
                    .processingTimeByHour(new HashMap<>())
                    .slaCompliance("No data available")
                    .analyzedAt(LocalDateTime.now())
                    .period(start.toLocalDate() + " to " + end.toLocalDate())
                    .build();
        }

        // Calculate statistics
        Duration meanProcessingTime = Duration.ofMillis(
                (long) processingTimes.stream()
                        .mapToLong(Duration::toMillis)
                        .average()
                        .orElse(0)
        );

        Duration medianProcessingTime = processingTimes.get(processingTimes.size() / 2);

        Duration percentile95 = processingTimes.get((int) (processingTimes.size() * 0.95));

        Duration maxProcessingTime = processingTimes.get(processingTimes.size() - 1);

        // Group by transaction type
        Map<String, Duration> processingTimeByType = completedTransactions.stream()
                .filter(t -> t.getUpdatedAt() != null)
                .collect(Collectors.groupingBy(
                        t -> t.getType().name(),
                        Collectors.collectingAndThen(
                                Collectors.mapping(
                                        t -> Duration.between(t.getCreatedAt(), t.getUpdatedAt()),
                                        Collectors.toList()
                                ),
                                list -> Duration.ofMillis((long) list.stream()
                                        .mapToLong(Duration::toMillis)
                                        .average()
                                        .orElse(0))
                        )
                ));

        // Group by hour of day
        Map<Integer, Duration> processingTimeByHour = completedTransactions.stream()
                .filter(t -> t.getUpdatedAt() != null)
                .collect(Collectors.groupingBy(
                        t -> t.getCreatedAt().getHour(),
                        Collectors.collectingAndThen(
                                Collectors.mapping(
                                        t -> Duration.between(t.getCreatedAt(), t.getUpdatedAt()),
                                        Collectors.toList()
                                ),
                                list -> Duration.ofMillis((long) list.stream()
                                        .mapToLong(Duration::toMillis)
                                        .average()
                                        .orElse(0))
                        )
                ));

        // SLA compliance (assuming 2 hours as SLA)
        Duration slaThreshold = Duration.ofHours(2);
        long withinSlaCount = processingTimes.stream()
                .mapToLong(duration -> duration.compareTo(slaThreshold) <= 0 ? 1 : 0)
                .sum();
        BigDecimal slaCompliance = new BigDecimal(withinSlaCount)
                .divide(new BigDecimal(processingTimes.size()), 4, RoundingMode.HALF_UP)
                .multiply(new BigDecimal("100"));

        String period = start.toLocalDate() + " to " + end.toLocalDate();

        return ProcessingTimeResult.builder()
                .meanProcessingTime(meanProcessingTime)
                .medianProcessingTime(medianProcessingTime)
                .percentile95(percentile95)
                .maxProcessingTime(maxProcessingTime)
                .processingTimeByType(processingTimeByType)
                .processingTimeByHour(processingTimeByHour)
                .slaCompliance(slaCompliance.setScale(2, RoundingMode.HALF_UP) + "% within 2-hour SLA")
                .analyzedAt(LocalDateTime.now())
                .period(period)
                .build();
    }

    // Helper methods for analytics
    private Map<String, BigDecimal> calculatePreviousPeriodRates(LocalDateTime start, LocalDateTime end, UUID userId) {
        long completedCount = transactionRepo.countByStatusAndDateRange(TransactionStatus.COMPLETED, start, end, userId);
        long failedCount = transactionRepo.countByStatusAndDateRange(TransactionStatus.FAILED, start, end, userId);
        long cancelledCount = transactionRepo.countByStatusAndDateRange(TransactionStatus.CANCELLED, start, end, userId);

        long totalProcessed = completedCount + failedCount + cancelledCount;

        BigDecimal successRate = totalProcessed == 0 ? BigDecimal.ZERO :
                new BigDecimal(completedCount).divide(new BigDecimal(totalProcessed), 4, RoundingMode.HALF_UP);

        Map<String, BigDecimal> rates = new HashMap<>();
        rates.put("successRate", successRate.multiply(new BigDecimal("100")));
        rates.put("failureRate", totalProcessed == 0 ? BigDecimal.ZERO :
                new BigDecimal(failedCount).divide(new BigDecimal(totalProcessed), 4, RoundingMode.HALF_UP)
                        .multiply(new BigDecimal("100")));

        return rates;
    }

    private String analyzeTrend(BigDecimal currentRate, BigDecimal previousRate) {
        if (previousRate == null) return "No comparison data";

        BigDecimal change = currentRate.subtract(previousRate);
        if (change.abs().compareTo(new BigDecimal("0.05")) < 0) {
            return "Stable";
        } else if (change.compareTo(BigDecimal.ZERO) > 0) {
            return "Improving +" + change.setScale(2, RoundingMode.HALF_UP) + "%";
        } else {
            return "Declining " + change.setScale(2, RoundingMode.HALF_UP) + "%";
        }
    }

    private Map<String, Long> categorizeByAmountRanges(List<Transaction> transactions) {
        Map<String, Long> ranges = new HashMap<>();
        ranges.put("$0-$50", 0L);
        ranges.put("$50-$200", 0L);
        ranges.put("$200-$1000", 0L);
        ranges.put("$1000+", 0L);

        for (Transaction transaction : transactions) {
            BigDecimal amount = transaction.getAmount();
            String range;

            if (amount.compareTo(new BigDecimal("50")) <= 0) {
                range = "$0-$50";
            } else if (amount.compareTo(new BigDecimal("200")) <= 0) {
                range = "$50-$200";
            } else if (amount.compareTo(new BigDecimal("1000")) <= 0) {
                range = "$200-$1000";
            } else {
                range = "$1000+";
            }

            ranges.merge(range, 1L, Long::sum);
        }

        return ranges;
    }

    private List<String> extractFailureKeywords(List<Transaction> failedTransactions) {
        Map<String, Long> keywordCounts = new HashMap<>();

        for (Transaction transaction : failedTransactions) {
            if (transaction.getDescription() != null) {
                String[] words = transaction.getDescription().toLowerCase().split("\\s+");
                for (String word : words) {
                    if (word.length() > 3) { // Only consider meaningful words
                        keywordCounts.merge(word, 1L, Long::sum);
                    }
                }
            }
        }

        return keywordCounts.entrySet().stream()
                .filter(entry -> entry.getValue() >= 3) // Appear at least 3 times
                .sorted(Map.Entry.<String, Long>comparingByValue().reversed())
                .limit(10)
                .map(Map.Entry::getKey)
                .collect(Collectors.toList());
    }

    private List<String> generateFailureRecommendations(
            Map<Integer, Long> failuresByHour,
            Map<String, Long> failuresByAmount,
            List<String> commonKeywords) {

        List<String> recommendations = new ArrayList<>();

        // Time-based recommendations
        Integer peakFailureHour = failuresByHour.entrySet().stream()
                .max(Map.Entry.comparingByValue())
                .map(Map.Entry::getKey)
                .orElse(null);

        if (peakFailureHour != null && failuresByHour.get(peakFailureHour) > 5) {
            recommendations.add("High failure rate observed at " + peakFailureHour + ":00. " +
                    "Consider system monitoring during this time.");
        }

        // Amount-based recommendations
        failuresByAmount.entrySet().stream()
                .max(Map.Entry.comparingByValue())
                .map(Map.Entry::getKey).ifPresent(highestFailureRange -> recommendations.add("Highest failures in " + highestFailureRange + " range. " +
                        "Review validation rules for this amount category."));

        // Keyword-based recommendations
        if (!commonKeywords.isEmpty()) {
            recommendations.add("Common failure keywords: " + String.join(", ", commonKeywords.subList(0, Math.min(3, commonKeywords.size()))) +
                    ". Consider targeted error handling.");
        }

        if (recommendations.isEmpty()) {
            recommendations.add("No specific patterns detected. Continue monitoring for trends.");
        }

        return recommendations;
    }

    private String categorizePendingAge(Duration age) {
        if (age.toHours() < 1) {
            return "< 1 hour";
        } else if (age.toHours() < 24) {
            return "1-24 hours";
        } else if (age.toDays() < 7) {
            return "1-7 days";
        } else {
            return "> 7 days";
        }
    }

    private String determineAlertLevel(long staleCount, int totalPending) {
        if (totalPending == 0) return "NONE";

        double stalePercentage = (double) staleCount / totalPending;

        if (stalePercentage > 0.2) return "HIGH";
        else if (stalePercentage > 0.1) return "MEDIUM";
        else if (staleCount > 0) return "LOW";
        else return "NONE";
    }
}