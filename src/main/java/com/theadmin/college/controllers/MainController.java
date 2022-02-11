
package com.theadmin.college.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.theadmin.college.utils.UrlMetaData;

@Controller
public class MainController {

	private final UrlMetaData urlMetaData;

	@Autowired
	public MainController(final UrlMetaData urlMetaData) {
		this.urlMetaData = urlMetaData;
	}

	@GetMapping("{page}")
	public String getPage(@PathVariable(value = "page") final String page, final Model model) {

		switch (page.toLowerCase()) {
		case "addcollege":
			model.addAttribute("addCollegeUrl", urlMetaData.ADD_NEW_COLLEGE);
			break;
		default:
			model.addAttribute("url", "http://localhost:8080");
			break;
		}
		return page;
	}
}
