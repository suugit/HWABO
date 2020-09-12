package com.beet.HWABO.suugit.controller;

import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.List;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.beet.HWABO.cpost.model.service.CpostService;
import com.beet.HWABO.cpost.model.vo.AddOn;
import com.beet.HWABO.cpost.model.vo.Cpost;
import com.beet.HWABO.member.model.service.MailSendService;
import com.beet.HWABO.member.model.service.MemberService;
import com.beet.HWABO.member.model.vo.Member;



@Controller
public class SuugitController {
	
private static final Logger logger = LoggerFactory.getLogger(SuugitController.class);

@Autowired
private CpostService cserivce;

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


//게시글 관련 
@RequestMapping("/incp.do")
public ModelAndView insertCpost(Cpost cpost, ModelAndView mv, HttpServletRequest request, @RequestParam(name="files[]", required=false) MultipartFile files) {
	logger.info("incp.do run....");
	logger.info(cpost.getCcontent());
	logger.info(cpost.getCtitle());
	logger.info(cpost.getCopen());
	logger.info(cpost.getCwriter());
	
	
	
	int result = cserivce.insertCpost(cpost);
	
	if (result > 0) {
		mv.setViewName("suugit/tables");
	} else {
		mv.addObject("message", "게시글등록실패");
		mv.setViewName("common/error");
	}
	return mv;
}

@RequestMapping(value="/upcpfile.do", method=RequestMethod.POST)
public String insertCpost(AddOn addon,MultipartHttpServletRequest request) {
	logger.info("upcpfile.do run...");
	String savePath = request.getSession().getServletContext().getRealPath("/resources/cupfiles");
	String oFileName ="";
	SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss"); 
	
	Iterator<String> files = request.getFileNames();
	MultipartFile mpf = request.getFile(files.next());
	int i = 1;
	List<MultipartFile> fileList = request.getFiles("file");
	logger.info(fileList.get(0).getOriginalFilename());
	if(fileList.size() > 5) {
		System.out.println("파일갯수 초과!");
		return "suugit/tables";
	}
	for(MultipartFile filePart : fileList) {
		if(!fileList.get(i).isEmpty()) {
			String rfileName = sdf.format(new java.sql.Date(System.currentTimeMillis())); 
			oFileName = filePart.getOriginalFilename();
			rfileName += "." + i + oFileName.substring(oFileName.lastIndexOf(".") + 1); 
			oFileName.concat(Integer.toString(i));
			
			if(i == 1) {
				addon.setOfile1(oFileName);
				addon.setRfile1(rfileName);				
				System.out.println("첫번쨰" + oFileName +rfileName );
			}else if(i == 2){
				addon.setOfile2(oFileName);
				addon.setRfile2(rfileName);
				System.out.println("e번쨰" + oFileName +rfileName );
			}else if(i == 3){
				addon.setOfile3(oFileName);
				addon.setRfile3(rfileName);
				System.out.println("3번쨰" + oFileName +rfileName );
			}else {
				System.out.println("파일 갯수 초과");
				return "suugit/tables";
			}

			logger.info("파일 이름 " + oFileName);
			logger.info("바꾼 이름" + rfileName);
		}
	}
	/*for(MultipartFile filePart : fileList) {
		String rfileName = sdf.format(new java.sql.Date(System.currentTimeMillis())); 
		oFileName = filePart.getOriginalFilename();
		rfileName += "." + oFileName.substring(oFileName.lastIndexOf(".") + 1); 
		long fileSize =filePart.getSize();
		
		addon.("setOfile".concat(i))(ofile1);
		addon.setOfile1(ofile1);
		logger.info("파일 이름 " + oFileName);
		logger.info("바꾼 이름" + rfileName);
		if(!oFileName.equals("")) {
			try {
				FileOutputStream fs = new FileOutputStream(savePath+rfileName);
				fs.write(filePart.getBytes());
				fs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			
		}
		
	}*/
	
	
	return "suugit/tables";
}
}
