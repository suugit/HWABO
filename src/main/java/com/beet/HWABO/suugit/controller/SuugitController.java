package com.beet.HWABO.suugit.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.beet.HWABO.member.model.service.MemberService;
import com.beet.HWABO.member.model.vo.Member;



@Controller
public class SuugitController {
	
private static final Logger logger = LoggerFactory.getLogger(SuugitController.class);


@Autowired
private MemberService mservice;

@Autowired
private BCryptPasswordEncoder bcryptPwdEncoder;

//회원가입 페이지 이동 
@RequestMapping("/mvsign.do")
public String moveSign(){
return "suugit/sign";
}

@RequestMapping(value="/sign.do", method=RequestMethod.POST)
public String insertUser(Member member, Model model){
	logger.info("sign.do 실행...");
	
	//패스워드 암호화 
	member.setUpwd(bcryptPwdEncoder.encode(member.getUpwd()));
	
	int result = mservice.insertUser(member);
	logger.info("회원가입" + member);
	logger.info("ucode" + member.getUcode());
	if(result > 0) {
		return "suugit/login.part";
	}else {
		model.addAttribute("message", "암호화 회원가입 실패!");
		return "suugit/sign.part";
	}

}


@RequestMapping("/sign_team.do")
public String signTeam(){

return "suugit/sign_team.part";
}


//로그인관련 
@RequestMapping("/mvlogin.do")
public String moveLogin(){
return "suugit/login.part";
}

@RequestMapping(value="/login.do", method=RequestMethod.POST)
public String selectLogin(Member member, Model model, HttpServletRequest request){
	logger.info("로그인");
	
	Member loginUser = mservice.selectLogin(member);
	
	String returnPage = null;
	
	if(loginUser != null) {
		if(bcryptPwdEncoder.matches(member.getUpwd(), loginUser.getUpwd())) {
			logger.info("로그인한 회원의 코드 : " + loginUser.getUcode());
			
			HttpSession session=request.getSession();
			session.setAttribute("ucode", loginUser.getUcode());
			session.setAttribute("uname", loginUser.getUname());
			
			returnPage = "red/cards";
		}else {
			model.addAttribute("message", "암호가 일치하지 않습니다.");
			returnPage = "common/error";
		}
	}else {
		model.addAttribute("message", "회원정보가 존재하지 않습니다");
		returnPage = "common/error";
	}
	return returnPage; 

}
//로그아웃
@RequestMapping("logout.do")
public String logout(HttpServletRequest request, Model model) {
	logger.info("로그아웃하는  회원 정보 : " + request.getAttribute("ucode"));
	HttpSession session = request.getSession(false);
	if(session != null) {
		session.invalidate();
		return "welcome";
	}else {
		model.addAttribute("message", "로그인 세션이 존재하지 않습니다");
		return "common/error";
	}
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
