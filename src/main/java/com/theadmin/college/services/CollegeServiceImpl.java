package com.theadmin.college.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.theadmin.college.dto.ApiResponse2;
import com.theadmin.college.dto.CollegeOnboardingDTO;
import com.theadmin.college.dto.PageDTO;
import com.theadmin.college.entities.College;
import com.theadmin.college.repositories.CollegeRepository;
import com.theadmin.college.utils.CommonUtil;

@Service
public class CollegeServiceImpl implements CollegeService {

	@Autowired
	private CollegeRepository collegeRepository;

	@Override
	public ApiResponse2 saveCollege(CollegeOnboardingDTO collegeOnboardingDTO) {
		College toBeSaved = new College();
		toBeSaved.setCollegeName(collegeOnboardingDTO.getCollegeName());
		toBeSaved.setCollegeCode(collegeOnboardingDTO.getCollegeCode());
		toBeSaved.setCollegeLocation(collegeOnboardingDTO.getCollegeLocation());
		toBeSaved.setCollegeMail(collegeOnboardingDTO.getCollegeMail());
		toBeSaved.setPhoneNumber(collegeOnboardingDTO.getPhoneNumber());
		collegeRepository.save(toBeSaved);
		return ApiResponse2.builder().message("College has been succesfully created").build();
	}

	@Override
	public Page<College> pageListColleges(int page, int size, String order) {
		 	PageDTO pageDTO = new PageDTO();
	        pageDTO.setSize(size);
	        pageDTO.setPage(page);
	        pageDTO.setOrder(order);
	        Pageable pageable = CommonUtil.getPageableInfo(pageDTO);
	        return collegeRepository.findAll(pageable);
	}

}
