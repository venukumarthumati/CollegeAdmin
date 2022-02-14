package com.theadmin.college.entities;

import javax.persistence.Entity;

import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@NoArgsConstructor
public class College extends AbstractEntity{
	
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
