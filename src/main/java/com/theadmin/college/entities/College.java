package com.theadmin.college.entities;

import javax.persistence.Entity;

import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
public class College extends AbstractEntity{
	
	private String collegeName;
	
	private String collegeCode;
	
	private String collegeLocation;
	
	private String phoneNumber;
	
	private String collegeMail;
}
