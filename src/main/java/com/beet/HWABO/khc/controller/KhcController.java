package com.beet.HWABO.khc.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.beet.HWABO.dopost.model.service.DopostService;
import com.beet.HWABO.dopost.model.vo.Dopost;

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
	public String mytodo(Dopost dopost, Model model) {
		logger.info("mytodo.run ........................");
		
		int result = dopostService.insertdopost(dopost);
		
		if(result > 0) {
			return "khc/insetdoposttest";
		}else {
			model.addAttribute("message", "등록성공");
			return "common/error";
		}
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
