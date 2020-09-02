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

//회원가입
@RequestMapping("/sign.do")
public String regiPage(){

return "suugit/sign.part";
}

@RequestMapping("/sign_team.do")
public String signTeam(){

return "suugit/sign_team.part";
}


//로그인관련 
@RequestMapping("/login.do")
public String loginMethod(){

return "suugit/login.part";
}

@RequestMapping("/forgotpwd.do")
public String forgotPwdPage(){

return "suugit/forgotpwd.part";
}


//내 정보
@RequestMapping("/myinfo.do")
public String myinfoPage(){

return "suugit/myinfo.page";
}

//게시글
@RequestMapping("/gnwrite.do")
public String gnrlBoardWriteFormPage(){

return "suugit/gnrlBoardWriteForm.part";
}

@RequestMapping("/gnview.do")
public String gnrlBoardViewPage(){

return "suugit/gnrlBoardView.part";
}

//모달
@RequestMapping("/modal.do")
public String ModalPage(){

return "suugit/modal.page";
}

//비번찾기
//모달
@RequestMapping("/chnpwd.do")
public String ChnpwdPage(){

return "suugit/chnpwd.part";
}

}
