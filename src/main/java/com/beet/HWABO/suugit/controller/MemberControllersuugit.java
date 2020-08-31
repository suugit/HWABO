package com.beet.HWABO.suugit.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MemberControllersuugit {
	
private static final Logger logger = LoggerFactory.getLogger(MemberControllersuugit.class);
	
@RequestMapping("/loginpart.do")
public String loginMethod(){

return "suugit/login.part";
}

@RequestMapping("/loginpage.do")
public String loginPage(){

return "suugit/login.page";
}

@RequestMapping("/regipart.do")
public String regiPage(){

return "suugit/regi.part";
}

}
