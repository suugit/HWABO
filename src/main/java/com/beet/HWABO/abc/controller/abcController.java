package com.beet.HWABO.abc.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class abcController {
	
	private static final Logger logger = LoggerFactory.getLogger(abcController.class);
	
	@RequestMapping("tablesTEST.do")
	public String TESTtables() {
		
		return "abc/tablesTEST";
	}
	
	@RequestMapping("myhwabo.do")
	public String myHWABO() {
		
		return "abc/myhwabo";
	}
	
	@RequestMapping("yourhwabo.do")
	public String yourHWABO() {
		
		return "abc/yourhwabo";
	}
	
	@RequestMapping("myhwabotest.do")
	public String myHWABOtest() {
		
		return "abc/myhwabotest";
	}
	
	@RequestMapping("scheduleboard.do")
	public String redtest() {
		
		return "abc/scheduleboard";
	}
	
}
