package com.beet.HWABO.red.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.beet.HWABO.HomeController;

@Controller
public class RedController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "suugit.do", method = RequestMethod.GET)
	public String suugitIndex(Model model) {
		
		return "WEB-INF/views/welcome";
	}
	
	@RequestMapping(value = "red.do", method = RequestMethod.GET)
	public String redIndex(Model model) {
		
		return "red/index";
	}
}
