package com.beet.HWABO.bpost.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.beet.HWABO.bpost.model.service.BpostService;
import com.beet.HWABO.bpost.model.vo.Bpost;



@Controller
public class BpostController {
	private static final Logger logger = LoggerFactory.getLogger(BpostController.class);
	
	@Autowired
	private BpostService bpostService;
	
	 @RequestMapping(value="insertbpost.do", method=RequestMethod.POST)
	public String insertBpost(Bpost bpost, Model model) {
		
		 logger.info("bpost : " + bpost);
		 
		 if(bpostService.insertBpost(bpost) > 0) {
			 
			 return "common/main";
		 }else {
			 
			 return"common/error";
		 }
		
	}
	
}
