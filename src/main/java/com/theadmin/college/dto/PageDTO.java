package com.theadmin.college.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import org.springframework.data.domain.Sort;

public class PageDTO {

	@ApiModelProperty(notes = "Page size", example = "20", dataType = "integer")
	private int size = 20;
	@ApiModelProperty(notes = "Page number", example = "0", dataType = "integer")
	private int page = 0;
	@ApiModelProperty(notes = "Property order", example = "DESC", allowableValues = "DESC,ASC", dataType = "string")
	private String order = Sort.Direction.DESC.name();
	@ApiModelProperty(notes = "Property name", example = "createdAt", allowableValues = "createdAt", dataType = "string")
	private String property = "createdAt";
	private String clientHashId;
	private String startDate;
	private String endDate;
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public String getOrder() {
		return order;
	}
	public void setOrder(String order) {
		this.order = order;
	}
	public String getProperty() {
		return property;
	}
	public void setProperty(String property) {
		this.property = property;
	}
	public String getClientHashId() {
		return clientHashId;
	}
	public void setClientHashId(String clientHashId) {
		this.clientHashId = clientHashId;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

}