package com.beet.HWABO.suugit.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.beet.HWABO.member.model.service.MailSendService;
import com.beet.HWABO.member.model.service.MemberService;
import com.beet.HWABO.member.model.vo.Member;



@Controller
public class SuugitController {
	
private static final Logger logger = LoggerFactory.getLogger(SuugitController.class);


@Autowired
private MailSendService msserivce;

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
	member.getUemail();
	member.setUpwd(bcryptPwdEncoder.encode(member.getUpwd()));
	logger.info("회원가입한 메일 주소 : " + member.getUemail()); 
	member.setAccesstoken(msserivce.sendAuthMail(member.getUemail()));

	int result = mservice.insertUser(member);
	logger.info("member 는 " + member);
	if(result > 0) {
		model.addAttribute("message", "인증 메일이 전송되었습니다!");
	}else {
		model.addAttribute("message", "암호화 회원가입 실패!");
	}
	return "suugit/sign.part";

}


@GetMapping("/signConfirm.do")
public ModelAndView signUpConfirm(HttpServletRequest request, ModelAndView mv, Member member){
   //email, authKey 가 일치할경우 authStatus 업데이트
	member.setUemail(request.getParameter("uemail"));
	member.setAccesstoken(request.getParameter("accesstoken"));
	int result = mservice.updateUst(member);
	
	if(result > 0) {
		mv.addObject("member", member);
		mv.setViewName("suugit/cards");
	}else {
		mv.addObject("message", "메일인증이 유효하지 않습니다!");
		mv.setViewName("common/error");
	}
	
   return mv;
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

	
	/*
	 * @RequestMapping(value="/idchk.do", method=RequestMethod.POST)
	 * 
	 * @RequestBody public String selectEmailCheck(@RequestParam("uemail") String
	 * uemail) { int result = mservice.selectEmailCheck(uemail);
	 * 
	 * if(result > 0) { return } }
	 */
 

@RequestMapping(value="/login.do", method=RequestMethod.POST)
public String selectLogin(Member member, Model model, HttpServletRequest request, SessionStatus status){
	logger.info("로그인");
	
	Member loginUser = mservice.selectLogin(member);
	
	String returnPage = null;
	
	if(loginUser != null) {
		if(bcryptPwdEncoder.matches(member.getUpwd(), loginUser.getUpwd())) {
			logger.info("로그인한 회원의 코드 : " + loginUser.getUcode());
			
			HttpSession session=request.getSession();
				
				  session.setAttribute("ucode", loginUser.getUcode());
				  session.setAttribute("uname", loginUser.getUname());
				  request.setAttribute("uname", loginUser.getUname());
				 
	
			status.setComplete(); // 요청성공, 200 전송
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
	
//snsObject 


//로그아웃
@RequestMapping("logout.do")
public String logout(HttpServletRequest request, Model model) {
	logger.info("로그아웃하는  회원 정보 : " + request.getAttribute("uname"));
	HttpSession session = request.getSession(false);
	if(session != null) {
		session.invalidate();
		return "welcome";
	}else {
		model.addAttribute("message", "로그인 정보가 존재하지 않습니다!");
		return "common/error";
	}
}




@RequestMapping("/forgotpwd.do")
public String forgotPwdPage(){

return "suugit/forgotpwd.part";
}


//내 정보
@RequestMapping("/myinfo1.do")
public String myinfoPag1e(){

return "suugit/myinfo.page";
}

@RequestMapping("/myinfo.do")
public String myinfoPage(){

return "suugit/myinfo";
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

@RequestMapping("/mvcpost.do")
public String testpage() {
	return "suugit/tables";
}

@RequestMapping("/top1.do")
public String testpage2() {
	return "suugit/topbar";
}


}
