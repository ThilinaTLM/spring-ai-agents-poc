package com.springagentpoc.api.net.adviser;

import com.springagentpoc.api.models.exception.AppErrorResponse;
import com.springagentpoc.api.models.exception.AppException;
import org.springframework.core.annotation.Order;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.time.OffsetDateTime;

@RestControllerAdvice
public class AppExceptionAdvisor {

    @ExceptionHandler(AppException.class)
    @Order(1)
    public ResponseEntity<AppErrorResponse> handleAppException(AppException ex) {
        return ResponseEntity.status(ex.getHttpStatus())
                .body(AppErrorResponse.builder()
                        .timestamp(OffsetDateTime.now())
                        .message(ex.getMessage())
                        .errorCode(
                                ex.getErrorCode() == null
                                        ? null
                                        : ex.getErrorCode().toString())
                        .build());
    }
}
