package com.springagentpoc.api.models.common;

import com.google.type.Money;
import lombok.Builder;
import lombok.Data;

import java.time.LocalDateTime;
import java.util.Map;

@Data
@Builder
public class PendingSummaryResult {
    private Map<String, Long> agingBuckets;
    private Map<String, Money> volumeByBucket;
    private Map<String, Long> countsByTransactionType;
    private long stalePendingCount;
    private Money totalPendingVolume;
    private String alertLevel;
    private LocalDateTime analyzedAt;
}