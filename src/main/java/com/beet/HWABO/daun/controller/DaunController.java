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
	
	@RequestMapping("myhwabo.do")
	public String myHWABO() {
		
		return "daun/myhwabo";
	}
	
	@RequestMapping("yourhwabo.do")
	public String yourHWABO() {
		
		return "daun/yourhwabo";
	}
	
	@RequestMapping("myhwabotest.do")
	public String myHWABOtest() {
		
		return "daun/myhwabotest";
	}
	
	@RequestMapping("tablesred.do")
	public String redtest() {
		
		return "daun/tablesred";
	}
}
