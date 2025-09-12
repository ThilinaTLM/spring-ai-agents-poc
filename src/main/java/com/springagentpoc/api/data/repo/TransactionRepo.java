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
}
