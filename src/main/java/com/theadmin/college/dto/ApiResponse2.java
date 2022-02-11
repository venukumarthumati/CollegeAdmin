package com.theadmin.college.dto;

import lombok.Data;
import lombok.ToString;

@Data
public class ApiResponse2 {

    private final boolean success;
    private final String message;

    public ApiResponse2() {
        this.success = true;
        this.message = "Success";
    }

    public ApiResponse2(final boolean success, final String message) {
        this.success = success;
        this.message = message;
    }

    public static ApiResponseBuilder builder() {
        return new ApiResponseBuilder();
    }

    @ToString
    public static class ApiResponseBuilder {
        private boolean success = true;
        private String message = "Success";

        public ApiResponseBuilder success(final boolean success) {
            this.success = success;
            return this;
        }

        public ApiResponseBuilder message(final String message) {
            this.message = message;
            return this;
        }

        public ApiResponse2 build() {
            return new ApiResponse2(this.success, this.message);
        }
    }
}
