                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                package com.theadmin.college.utils;

import org.apache.commons.lang3.StringUtils;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Component;

import com.theadmin.college.constants.CommonEntityConstants;
import com.theadmin.college.dto.PageDTO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
public final class CommonUtil {

    public static Pageable getPageableInfo(PageDTO pageDTO) {
        final int pageNo = pageDTO.getPage();
        final int pageSize = pageDTO.getSize() != 0 ? pageDTO.getSize() : 20;
        final Sort.Direction direction = StringUtils.isNotEmpty(pageDTO.getOrder()) ? Sort.Direction.valueOf(pageDTO.getOrder()) : Sort.Direction.DESC;
        final String property = StringUtils.isNotEmpty(pageDTO.getProperty()) ? pageDTO.getProperty() : CommonEntityConstants.CREATED_AT;
        return PageRequest.of(pageNo, pageSize, direction, property);
    }
}