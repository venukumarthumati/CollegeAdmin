package com.theadmin.college.dto;

import com.fasterxml.jackson.annotation.JsonPropertyOrder;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@JsonPropertyOrder(value = {"errorCode", "errorMessage"})
public class ApplicationErrorResponseDTO {
    private String errorMessage;
    private int errorCode;
}