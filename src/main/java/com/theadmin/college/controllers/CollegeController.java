package com.theadmin.college.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.theadmin.college.dto.ApiResponse2;
import com.theadmin.college.dto.CollegeOnboardingDTO;
import com.theadmin.college.entities.College;
import com.theadmin.college.services.CollegeService;

import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("api/v1/college")
public class CollegeController {

	@Autowired
	private CollegeService collegeService;

	@PostMapping("/add")
	public @ResponseBody ApiResponse2 createCollege(@RequestBody CollegeOnboardingDTO collegeOnboardingDTO) {
		return collegeService.saveCollege(collegeOnboardingDTO);
	}

	@ApiOperation(value = "View a list of available colleges", response = Iterable.class)
	@GetMapping(value = "/list")
	public @ResponseBody Page<College> getListOfAllPrograms(@RequestParam(value = "page") int page,
			@RequestParam(value = "size") int size, @RequestParam(value = "order") String order) {
		return collegeService.pageListColleges(page, size, order);
	}
}
