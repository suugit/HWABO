package com.beet.HWABO.abc.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.beet.HWABO.spost.model.service.SpostService;


@Controller
public class abcController {
	
	@Autowired
	private SpostService spostService;
	
	private static final Logger logger = LoggerFactory.getLogger(abcController.class);

//============================================================	
	@RequestMapping("mybpost.do")
	public String TESTtables() {
		
		return "abc/myBPOST";
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
