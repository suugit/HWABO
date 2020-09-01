package com.beet.HWABO.daun.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class DaunController {
	
	private static final Logger logger = LoggerFactory.getLogger(DaunController.class);
	
	@RequestMapping("tablesTEST.do")
	public String TESTtables() {
		
		return "daun/tablesTEST";
	}
}
