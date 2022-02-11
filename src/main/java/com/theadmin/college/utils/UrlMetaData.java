package com.theadmin.college.utils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
public class UrlMetaData {
	
    public final String GET_COLLEGE_LIST;
    public final String ADD_NEW_COLLEGE;

    @Autowired
    public UrlMetaData(@Value("${api.version}") final String apiVersion,
    		 		   @Value("${url.context.college-admin.service}") final String collegeContext) {
		this.GET_COLLEGE_LIST = collegeContext + apiVersion + "/college/list";
		this.ADD_NEW_COLLEGE = collegeContext + apiVersion + "/college/add";
    }
}