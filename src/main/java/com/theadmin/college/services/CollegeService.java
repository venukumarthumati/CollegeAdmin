package com.theadmin.college.services;

import org.springframework.data.domain.Page;

import com.theadmin.college.dto.ApiResponse2;
import com.theadmin.college.dto.CollegeOnboardingDTO;
import com.theadmin.college.entities.College;

public interface CollegeService {
	
	public ApiResponse2 saveCollege(CollegeOnboardingDTO collegeOnboardingDTO);
	
	public Page<College> pageListColleges(int page, int size, String order);
	
}
