package com.springagentpoc.api.models.exception;

import com.fasterxml.jackson.annotation.JsonInclude;
import lombok.Builder;
import lombok.Data;

import java.time.OffsetDateTime;
import java.util.List;
import java.util.Map;

@Data
@Builder
@JsonInclude(JsonInclude.Include.NON_NULL)
public class AppErrorResponse {
    private final OffsetDateTime timestamp;
    private final String message;
    private final List<String> errorList;
    private final Map<String, String> errorMap;
    private final String errorCode;
}
