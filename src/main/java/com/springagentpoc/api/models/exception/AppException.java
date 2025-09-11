package com.springagentpoc.api.models.exception;

import lombok.Getter;
import org.springframework.http.HttpStatus;

@Getter
public class AppException extends RuntimeException {

    private final String message;
    private final HttpStatus httpStatus;
    private final AppErrorCode errorCode;

    public AppException(String message, HttpStatus httpStatus, AppErrorCode errorCode) {
        super(message);
        this.message = message;
        this.httpStatus = httpStatus;
        this.errorCode = errorCode;
    }

    public AppException(String message, HttpStatus httpStatus) {
        super(message);
        this.message = message;
        this.httpStatus = httpStatus;
        this.errorCode = null;
    }
}
