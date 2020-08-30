package com.beet.HWABO.member.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberController {
	
private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
@RequestMapping("/loginpart.do")
public String loginMethod(){

return "member/login.part";
}

@RequestMapping("/loginpage.do")
public String loginPage(){

return "member/login.page";
}


}
