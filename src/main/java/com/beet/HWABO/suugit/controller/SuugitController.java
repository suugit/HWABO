package com.beet.HWABO.suugit.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SuugitController {
	
private static final Logger logger = LoggerFactory.getLogger(SuugitController.class);
	
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


@RequestMapping("/myinfopage.do")
public String myinfoPage(){

return "suugit/myinfo.page";
}

@RequestMapping("/signpart.do")
public String signPart(){

return "suugit/sign.part";
}

@RequestMapping("/sign_teampart.do")
public String signTeamPart(){

return "suugit/sign_team.part";
}


}
