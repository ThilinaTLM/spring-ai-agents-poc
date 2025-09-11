package com.springagentpoc.api.net.adviser;

import com.springagentpoc.api.models.exception.AppErrorResponse;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import java.time.OffsetDateTime;
import java.util.HashMap;
import java.util.Map;

@RestControllerAdvice
public class ValidationExceptionAdvisor {

    @ExceptionHandler(MethodArgumentNotValidException.class)
    public ResponseEntity<AppErrorResponse> handleValidationExceptions(MethodArgumentNotValidException ex) {
        Map<String, String> errors = new HashMap<>();
        ex.getBindingResult()
                .getFieldErrors()
                .forEach(error -> errors.put(error.getField(), error.getDefaultMessage()));

        return ResponseEntity.status(HttpStatus.BAD_REQUEST)
                .body(AppErrorResponse.builder()
                        .timestamp(OffsetDateTime.now())
                        .message("Validation failed")
                        .errorMap(errors)
                        .build());
    }
}
