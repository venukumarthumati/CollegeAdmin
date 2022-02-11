package com.theadmin.college.exceptions;

import org.springframework.core.NestedRuntimeException;
import org.springframework.http.HttpStatus;

public class ApiException extends NestedRuntimeException {

    private final String code;
    private final HttpStatus status;

    public ApiException(final String code, final String message, final HttpStatus status) {
        super(message);
        this.code = code;
        this.status = status;
    }

    public String getCode() {
        return code;
    }

    public HttpStatus getStatus() {
        return status;
    }
}