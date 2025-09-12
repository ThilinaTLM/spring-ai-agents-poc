package com.springagentpoc.api.data.repo;

import com.springagentpoc.api.data.embedded.TransactionStatus;
import com.springagentpoc.api.data.embedded.TransactionType;
import com.springagentpoc.api.data.entity.Transaction;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

@Repository
public interface TransactionRepo extends JpaRepository<Transaction, UUID> {

    @Query("SELECT COALESCE(SUM(t.amount), 0) FROM Transaction t " +
            "WHERE t.type = :type AND t.status = :status " +
            "AND t.createdAt >= :startDate AND t.createdAt <= :endDate " +
            "AND (:userId IS NULL OR t.userId = :userId)")
    BigDecimal calculateTotalByTypeAndStatusBetweenDates(
            @Param("type") TransactionType type,
            @Param("status") TransactionStatus status,
            @Param("startDate") LocalDateTime startDate,
            @Param("endDate") LocalDateTime endDate,
            @Param("userId") UUID userId
    );

    // Account balance calculation
    @Query("SELECT t FROM Transaction t WHERE t.userId = :userId AND t.status = :status " +
            "AND (:asOfDate IS NULL OR t.createdAt <= :asOfDate) " +
            "ORDER BY t.createdAt ASC")
    List<Transaction> findTransactionsForBalanceCalculation(
            @Param("userId") UUID userId,
            @Param("status") TransactionStatus status,
            @Param("asOfDate") LocalDateTime asOfDate
    );

    // Statistical analysis for unusual transactions
    @Query("SELECT AVG(t.amount) FROM Transaction t WHERE t.userId = :userId " +
            "AND t.createdAt >= :startDate AND t.status = :status")
    BigDecimal calculateMeanAmount(
            @Param("userId") UUID userId,
            @Param("startDate") LocalDateTime startDate,
            @Param("status") TransactionStatus status
    );

    @Query("SELECT SQRT(AVG((t.amount - :mean) * (t.amount - :mean))) FROM Transaction t " +
            "WHERE t.userId = :userId AND t.createdAt >= :startDate AND t.status = :status")
    BigDecimal calculateStandardDeviation(
            @Param("userId") UUID userId,
            @Param("startDate") LocalDateTime startDate,
            @Param("status") TransactionStatus status,
            @Param("mean") BigDecimal mean
    );

    // Transaction frequency analysis
    @Query("SELECT COUNT(t) FROM Transaction t WHERE t.userId = :userId " +
            "AND t.createdAt >= :startDate AND t.createdAt <= :endDate " +
            "AND (:status IS NULL OR t.status = :status)")
    Long countTransactionsByPeriod(
            @Param("userId") UUID userId,
            @Param("startDate") LocalDateTime startDate,
            @Param("endDate") LocalDateTime endDate,
            @Param("status") TransactionStatus status
    );

    // Status analysis
    @Query("SELECT COUNT(t) FROM Transaction t WHERE t.status = :status " +
            "AND t.createdAt >= :startDate AND t.createdAt <= :endDate " +
            "AND (:userId IS NULL OR t.userId = :userId)")
    Long countByStatusAndDateRange(
            @Param("status") TransactionStatus status,
            @Param("startDate") LocalDateTime startDate,
            @Param("endDate") LocalDateTime endDate,
            @Param("userId") UUID userId
    );

    // Failed transaction analysis
    @Query("SELECT t FROM Transaction t WHERE t.status = :status " +
            "AND t.createdAt >= :startDate AND t.createdAt <= :endDate " +
            "AND (:userId IS NULL OR t.userId = :userId)")
    List<Transaction> findByStatusAndDateRange(
            @Param("status") TransactionStatus status,
            @Param("startDate") LocalDateTime startDate,
            @Param("endDate") LocalDateTime endDate,
            @Param("userId") UUID userId
    );

    // Pending transactions with aging
    @Query("SELECT t FROM Transaction t WHERE t.status = :status " +
            "AND (:userId IS NULL OR t.userId = :userId)")
    List<Transaction> findPendingTransactions(
            @Param("status") TransactionStatus status,
            @Param("userId") UUID userId
    );

    // Processing time analysis
    @Query("SELECT t FROM Transaction t WHERE t.status = :status " +
            "AND t.createdAt >= :startDate AND t.createdAt <= :endDate " +
            "AND t.updatedAt IS NOT NULL " +
            "AND (:type IS NULL OR t.type = :type)")
    List<Transaction> findCompletedTransactionsForProcessingTime(
            @Param("status") TransactionStatus status,
            @Param("startDate") LocalDateTime startDate,
            @Param("endDate") LocalDateTime endDate,
            @Param("type") TransactionType type
    );

    // Pattern detection for recurring transactions
    @Query("SELECT t FROM Transaction t WHERE t.userId = :userId " +
            "AND t.createdAt >= :startDate AND t.createdAt <= :endDate " +
            "ORDER BY t.createdAt ASC")
    List<Transaction> findUserTransactionsByDateRange(
            @Param("userId") UUID userId,
            @Param("startDate") LocalDateTime startDate,
            @Param("endDate") LocalDateTime endDate
    );

    // Duplicate detection
    @Query("SELECT t FROM Transaction t WHERE t.userId = :userId " +
            "AND t.createdAt >= :startTime AND t.createdAt <= :endTime " +
            "ORDER BY t.createdAt DESC")
    List<Transaction> findRecentTransactions(
            @Param("userId") UUID userId,
            @Param("startTime") LocalDateTime startTime,
            @Param("endTime") LocalDateTime endTime
    );

    // Peak time analysis
    @Query("SELECT EXTRACT(HOUR FROM t.createdAt) as hour, COUNT(t) FROM Transaction t " +
            "WHERE t.createdAt >= :startDate AND t.createdAt <= :endDate " +
            "AND (:userId IS NULL OR t.userId = :userId) " +
            "GROUP BY EXTRACT(HOUR FROM t.createdAt) " +
            "ORDER BY hour")
    List<Object[]> getHourlyTransactionCounts(
            @Param("startDate") LocalDateTime startDate,
            @Param("endDate") LocalDateTime endDate,
            @Param("userId") UUID userId
    );

    // Seasonal trend analysis  
    @Query("SELECT EXTRACT(MONTH FROM t.createdAt) as month, COUNT(t), SUM(t.amount) " +
            "FROM Transaction t WHERE t.createdAt >= :startDate " +
            "AND (:userId IS NULL OR t.userId = :userId) AND t.status = :status " +
            "GROUP BY EXTRACT(MONTH FROM t.createdAt) ORDER BY month")
    List<Object[]> getMonthlyTransactionMetrics(
            @Param("startDate") LocalDateTime startDate,
            @Param("userId") UUID userId,
            @Param("status") TransactionStatus status
    );

    // User behavior analysis
    @Query("SELECT t FROM Transaction t WHERE t.userId = :userId " +
            "AND t.type = :type AND t.status = :status " +
            "AND t.createdAt >= :startDate ORDER BY t.createdAt DESC")
    List<Transaction> findUserTransactionsByType(
            @Param("userId") UUID userId,
            @Param("type") TransactionType type,
            @Param("status") TransactionStatus status,
            @Param("startDate") LocalDateTime startDate
    );
}
