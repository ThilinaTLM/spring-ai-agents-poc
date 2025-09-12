package com.springagentpoc.api.models.common;

import lombok.Builder;
import lombok.Data;

import java.time.Duration;
import java.time.LocalDateTime;
import java.util.Map;

@Data
@Builder
public class ProcessingTimeResult {
    private Duration meanProcessingTime;
    private Duration medianProcessingTime;
    private Duration percentile95;
    private Duration maxProcessingTime;
    private Map<String, Duration> processingTimeByType;
    private Map<Integer, Duration> processingTimeByHour;
    private String slaCompliance;
    private LocalDateTime analyzedAt;
    private String period;
}