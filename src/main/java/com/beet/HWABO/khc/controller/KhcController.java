package com.beet.HWABO.khc.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class KhcController {

	private static final Logger logger = LoggerFactory.getLogger(KhcController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "mytodo.do", method = RequestMethod.GET)
	public String mytodo(Model model) {
		return "khc/mytodo";
}
	
	@RequestMapping(value = "participateproject.do", method = RequestMethod.GET)
	public String participateproject(Model model) {
		return "khc/participateproject";
		
	}
	
	@RequestMapping(value = "searchmember.do", method = RequestMethod.GET)
	public String searchmember(Model model) {
		return "khc/searchmember";
	}
	
	@RequestMapping(value = "authorityadmin.do", method = RequestMethod.GET)
	public String authorityadmin(Model model) {
		return "khc/authorityadmin";
	}
	
	@RequestMapping(value = "projectmanagement.do", method = RequestMethod.GET)
	public String projectmanagement(Model model) {
		return "khc/projectmanagement";
	}
	
	
}
