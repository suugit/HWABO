package com.beet.HWABO.khc.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.beet.HWABO.dopost.model.service.DopostService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class KhcController {

	private static final Logger logger = LoggerFactory.getLogger(KhcController.class);
	
	@Autowired
	private DopostService dopostService;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "mytodo.do", method = {RequestMethod.GET, RequestMethod.POST} )
	public String mytodo(Model model) {
		logger.info("mytodo.run ........................");
		return "khc/mytodo";
}
	
	@RequestMapping(value = "participateproject.do", method = RequestMethod.POST)
	public String participateproject(Model model) {
		return "khc/participateproject";
		
	}
	
	
	@RequestMapping(value = "authorityadmin.do", method = RequestMethod.POST)
	public String authorityadmin(Model model) {
		return "khc/authorityadmin";
	}
	
	@RequestMapping(value = "projectmanagement.do", method = RequestMethod.POST)
	public String projectmanagement(Model model) {
		return "khc/projectmanagement";
	}
	
	
}
