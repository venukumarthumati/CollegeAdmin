package com.theadmin.college.dto;

import lombok.Data;


public class CollegeOnboardingDTO {

	private String collegeName;

	private String collegeCode;

	private String collegeLocation;

	private String phoneNumber;

	private String collegeMail;

	public String getCollegeName() {
		return collegeName;
	}

	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}

	public String getCollegeCode() {
		return collegeCode;
	}

	public void setCollegeCode(String collegeCode) {
		this.collegeCode = collegeCode;
	}

	public String getCollegeLocation() {
		return collegeLocation;
	}

	public void setCollegeLocation(String collegeLocation) {
		this.collegeLocation = collegeLocation;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getCollegeMail() {
		return collegeMail;
	}

	public void setCollegeMail(String collegeMail) {
		this.collegeMail = collegeMail;
	}

}
