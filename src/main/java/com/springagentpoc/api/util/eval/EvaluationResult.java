package com.springagentpoc.api.util.eval;

import lombok.Data;

@Data
public class EvaluationResult {

    private int iteration = 0;
    private EvaluationStatus status;
    private double score;
    private String feedback;

    public enum EvaluationStatus {
        PASS,
        NEEDS_IMPROVEMENT,
    }

}
