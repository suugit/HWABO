package com.beet.HWABO.suugit.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.beet.HWABO.cpost.model.service.CpostService;
import com.beet.HWABO.cpost.model.vo.AddOn;
import com.beet.HWABO.cpost.model.vo.Cpost;
import com.beet.HWABO.invite.model.vo.Invite;
import com.beet.HWABO.member.model.service.MailSendService;
import com.beet.HWABO.member.model.service.MemberService;
import com.beet.HWABO.member.model.vo.MailUtils;
import com.beet.HWABO.member.model.vo.Member;
import com.beet.HWABO.member.model.vo.NaverLoginUtil;
import com.beet.HWABO.member.model.vo.PjMember;
import com.beet.HWABO.red.model.vo.Project;
import com.github.scribejava.core.model.OAuth2AccessToken;

@Controller
public class SuugitController {

	private static final Logger logger = LoggerFactory.getLogger(SuugitController.class);

	@Autowired
	private void setNaverLoginUtil(NaverLoginUtil NaverLoginUtil) {
		this.NaverLoginUtil = NaverLoginUtil;
	}

	@Autowired
	private CpostService cservice;

	@Autowired
	private JavaMailSenderImpl mailSender;

	@Autowired
	private MailSendService msserivce;

	@Autowired
	private MemberService mservice;

	@Autowired
	private BCryptPasswordEncoder bcryptPwdEncoder;

//웰컴파일
	@RequestMapping("/welcome.do")
	public String Indexpage() {
		logger.info("사이트 접속!");
		return "welcome";
	}

//회원가입 페이지 이동 
	@RequestMapping("/mvsign.do")
	public String moveSign() {
		return "suugit/sign";
	}

	@RequestMapping("/terms.do")
	public String openTerms() {
		return "suugit/";
	}

	@RequestMapping(value = "/sign.do", method = RequestMethod.POST)
	public ModelAndView insertUser(@Valid Member member, Errors errors, ModelAndView mav) {
		logger.info("sign.do 실행...");
		if (errors.hasErrors()) {
			mav.addObject("message", errors.getFieldError().getDefaultMessage());
			mav.setViewName("suugit/sign");
			return mav;
		}
		Member loginUser = mservice.selectLogin(member);
		if (loginUser != null) {
			mav.addObject("message", "이미 가입한 회원입니다");
			mav.setViewName("suugit/sign");
			return mav;
		}

		// 패스워드 암호화
		member.getUemail();
		member.setUpwd(bcryptPwdEncoder.encode(member.getUpwd()));
		logger.info("회원가입한 메일 주소 : " + member.getUemail());
		member.setAccesstoken(msserivce.sendAuthMail(member.getUemail()));
		member.setUimg("resources/profileImg/default.png");
		int result = mservice.insertUser(member);
		logger.info("member 는 " + member);
		if (result > 0) {
			mav.addObject("message", "인증 메일이 전송되었습니다!");
		} else {
			mav.addObject("message", "회원가입에 실패했습니다");
		}
		mav.setViewName("suugit/login");
		return mav;
	}
//초대 신규유저
//	@RequestMapping(value="/invtnew.do", method=RequestMethod.POST)
//	public String inviteNew(@RequestBody ) {
//		
//	
//		logger.info("신규 플젝멤버 추가!");
//		
//		
//	}
	
	@GetMapping("/terms.do")
	public String TermsPage() {
		return "suugit/hwaboTerms";
	}

	@GetMapping("/signConfirm.do")
	public ModelAndView signUpConfirm(HttpServletRequest request, ModelAndView mv, Member member) {
		// email, authKey 가 일치할경우 authStatus 업데이트
		member.setUemail(request.getParameter("uemail"));
		member.setAccesstoken(request.getParameter("accesstoken"));
		int result = mservice.updateUst(member);

		if (result > 0) {
			mv.addObject("member", member);
			mv.setViewName("redirect:/cards.do");
		} else {
			mv.addObject("message", "메일인증이 유효하지 않습니다!");
			mv.setViewName("common/error");
		}

		return mv;
	}
	
	private NaverLoginUtil NaverLoginUtil;
	private String apiResult = null;
	
//로그인관련 
	@RequestMapping("/mvlogin.do")
	public String moveLogin(Model model, HttpSession session) {
		String naverAuthUrl = NaverLoginUtil.getAuthorizationUrl(session);
		System.out.println("네이버:" + naverAuthUrl);
		// 네이버
		model.addAttribute("url", naverAuthUrl);

		return "suugit/login";
	}

	/*
	 * @RequestMapping(value="/idchk.do", method=RequestMethod.POST)
	 * 
	 * @RequestBody public String selectEmailCheck(@RequestParam("uemail") String
	 * uemail) { int result = mservice.selectEmailCheck(uemail);
	 * 
	 * if(result > 0) { return } }
	 */

	@PostMapping
	public String submit(@ModelAttribute @Valid Member member, Errors errors) {
		if (errors.hasErrors())
			return "form";
		return "submit";
	}

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String selectLogin(@Valid Member member, BindingResult theBindingResult, Model model,
			HttpServletRequest request, SessionStatus status) {
		logger.info("로그인");
		member.setSigntype("h");
		Member loginUser = mservice.selectLogin(member);
		
		String returnPage = "suugit/login";
		
		
		if (loginUser != null) {
			
			if (bcryptPwdEncoder.matches(member.getUpwd(), loginUser.getUpwd())) {
				System.out.println(loginUser.getUst());
				if(loginUser.getUst().equals("Y")) {
					logger.info("로그인한 회원의 코드 : " + loginUser.getUcode());

					HttpSession session = request.getSession();
					session.setAttribute("uimg", loginUser.getUimg());
					session.setAttribute("ucode", loginUser.getUcode());
					session.setAttribute("uname", loginUser.getUname());
					session.setAttribute("signtype", loginUser.getSigntype());
					request.setAttribute("uname", loginUser.getUname());
					status.setComplete(); // 요청성공, 200 전송
					returnPage = "redirect:/cards.do";
				}else {
					model.addAttribute("message","인증되지 않은 사용자입니다.<br>이메일을 확인해주세요");
					returnPage = "suugit/login";
					return returnPage;
				}
				
			} else {
				model.addAttribute("message", "암호가 일치하지 않습니다.");
			}
		} else {
			model.addAttribute("message", "회원정보가 존재하지 않습니다");
			
		}
		
		return returnPage;
	}

//snsObject 
	@RequestMapping("mvsnslogin.do")
	public String snsloginResult() {
		logger.info("소셜로그인1");
		return "suugit/loginResult";
	}

	/* NaverLoginUtil */


	/*
	 * //로그인 첫 화면 요청 메소드
	 * 
	 * @RequestMapping(value = "/snslogin.do", method = { RequestMethod.GET,
	 * RequestMethod.POST }) public String login(Model model, HttpSession session) {
	 * 네이버아이디로 인증 URL을 생성하기 위하여 NaverLoginUtil클래스의 getAuthorizationUrl메소드 호출 String
	 * naverAuthUrl = NaverLoginUtil.getAuthorizationUrl(session);
	 * //https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***
	 * ************&
	 * //redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&
	 * state=e68c269c-5ba9-4c31-85da-54c16c658125 System.out.println("네이버:" +
	 * naverAuthUrl); //네이버 model.addAttribute("url", naverAuthUrl); return
	 * "suugit/login"; }
	 */
	// 네이버 로그인 성공시 callback호출 메소드
	
	@RequestMapping(value = "/snsloginrslt.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
			throws IOException, ParseException {
		System.out.println("네이버 로그인성공!");
		OAuth2AccessToken oauthToken;
		oauthToken = NaverLoginUtil.getAccessToken(session, code, state);
		// 1. 로그인 사용자 정보를 읽어온다.
		apiResult = NaverLoginUtil.getUserProfile(oauthToken); // String형식의 json데이터

		// 2. String형식인 apiResult를 json형태로 바꿈
		JSONParser parser = new JSONParser();
		Object obj = parser.parse(apiResult);
		JSONObject jsonObj = (JSONObject) obj;
		
		// 3. 데이터 파싱
		JSONObject response_obj = (JSONObject) jsonObj.get("response");
		
		Member member = new Member();
		
		member.setUemail((String) response_obj.get("email"));
		member.setUname((String) response_obj.get("nickname"));
		member.setUimg((String) response_obj.get("profile_image"));
		member.setSigntype("n");
		
		int result1 = mservice.insertSnsUser(member);
		
			member = mservice.selectLogin(member);
			session.setAttribute("ucode", member.getUcode());
			session.setAttribute("uname", member.getUname());
			session.setAttribute("uimg", member.getUimg());
			session.setAttribute("signtype", member.getSigntype());
			return "redirect:/cards.do";
	}

//로그아웃
	@RequestMapping("logout.do")
	public String logout(HttpSession session, HttpServletRequest request, Model model) {
		logger.info("로그아웃하는  회원 정보 : " + session.getAttribute("uname"));
		String returnPage = "";
		
		if (session != null) {
			session.invalidate();
			returnPage = "welcome";
		}else {
			model.addAttribute("message", "로그인 정보가 존재하지 않습니다!");
			returnPage = "common/error";
		}

		return returnPage;
	}

//비번찾기
	@RequestMapping("/mvforgotpwd.do")
	public String forgotPwdPage() {

		return "suugit/forgotpwd";
	}

	@RequestMapping("/forgotpwd.do")
	public void updatefotgotpwd(@RequestParam String uemail, Member member, ModelAndView mav) {
		logger.info("비밀번호 찾기 요청...");
		int result = mservice.selectEmailCheck(uemail);

		if (result > 0) {
			// member.setAccesstoken(msserivce.sendAuthMail(uemail));
			SecureRandom random = new SecureRandom();
			StringBuffer sbf = new StringBuffer();
			for (int i = 0; i < 6; i++) {
				if (random.nextBoolean()) {
					sbf.append((char) ((int) (random.nextInt(26)) + 97));
				} else {
					sbf.append(random.nextInt(10));
				}
			}
			try {
				MailUtils sendMail = new MailUtils(mailSender);
				sendMail.setSubject("[HWABO] 임시 비밀번호 발급");
				sendMail.setText(new StringBuffer().append("<h1>[HWABO] 임시 비밀번호 </h1><br><br>")
						.append("<p>아래의 임시코드를 사용하여 로그인 후 비밀번호를 변경해주세요.</p>")
						.append("<br><br><h3> 임시 비밀번호 : " + sbf + "</h3><br><br><br>").append("새 비밀번호를 이용하여 로그인하러가기")
						.append("<a href='http://localhost:8282/hwabo/mvlogin.do'")
						.append(" target='_blenk'><img src='https://files.slack.com/files-pri/T01724B8QMC-F01BR631W2C/______2.png'/></a>")
						.toString());
				sendMail.setFrom("hwabo49@gmail.com", "HWABO");
				sendMail.setTo(uemail);
				sendMail.send();
			} catch (Exception e) {
				e.printStackTrace();

			}
			member.setUpwd(bcryptPwdEncoder.encode(sbf));

			if (mservice.updateTmpPwd(member) > 0) {
				logger.info(uemail + "임시비밀번호 발급 완료");
			} else {
				logger.info(uemail + "임시 비밀번호 발급 실패");
			}

		} else {
			mav.addObject("message", "일치하는 정보가 존재하지 않습니다");
		}
	}

//내 정보
	@RequestMapping("/myinfo1.do")
	public String myinfoPag1e() {

		return "suugit/tables2";
	}

	@RequestMapping("/myinfo.do")
	public ModelAndView myinfoPage(@RequestParam("ucode") String ucode, ModelAndView mav) {
		logger.info("내정보로 이동...");
		Member member = mservice.selectMember(ucode);
		if (member != null) {
			System.out.println(member);
			mav.addObject("member", member);
			mav.setViewName("suugit/myinfo");
		} else {
			mav.addObject("message", ucode + "에 대한 정보조회 실패");
			mav.setViewName("common/error");
		}
		return mav;
	}

	@RequestMapping(value = "/upinfo.do", method = RequestMethod.POST)
	public ModelAndView updateInfo(Member member, ModelAndView mav) {

		int result = mservice.updateInfo(member);

		if (member != null) {
			mav.addObject("member", member);
			mav.addObject("message", "회원정보가 정상적으로 변경되었습니다");
			mav.setViewName("redirect:/myinfo.do?ucode=" + member.getUcode());
		} else {
			mav.addObject("message", "회원정보 수정 실패");
			mav.setViewName("common/error");
		}
		return mav;
	}

	@RequestMapping(value = "/upuimg.do", method = RequestMethod.POST)
	public ModelAndView updateUimg(Member member, MultipartHttpServletRequest request, ModelAndView mav) {
		logger.info("사진 변경~");

		MultipartFile file = request.getFile("file");
		String ucode = request.getParameter("ucode");
		String savePath = request.getSession().getServletContext().getRealPath("resources/profileImg");

		if (file.getSize() > 0) {

			File originFile = new File(file.getOriginalFilename());
			originFile.delete();

			member.setUimg("resources/profileImg/" + ucode + file.getOriginalFilename());

			try {
				file.transferTo(new File(savePath + "\\" + ucode + file.getOriginalFilename()));
				mav.setViewName("redirect:/myinfo.do?ucode=" + ucode);

			} catch (Exception e) {
				e.printStackTrace();
				mav.setViewName("common/error");
			}
		} else {
			member.setUimg("resources/profileImg/default.png");
			mav.setViewName("redirect:/myinfo.do?ucode=" + ucode);
		}

		int result = mservice.updateImg(member);

		return mav;

	}

	@RequestMapping(value = "/uppwd.do", method = RequestMethod.POST)
	public ModelAndView updatePwd(HttpServletRequest request, ModelAndView mav, HttpServletResponse response) {
		String ucode = request.getParameter("ucode");
		Member member = mservice.selectMember(ucode);
		if (bcryptPwdEncoder.matches(request.getParameter("oldpwd"), member.getUpwd())) {
			logger.info("비밀번호 일치! 비밀번호 변경 요청...");
			member.setUpwd(bcryptPwdEncoder.encode(request.getParameter("newpwd")));
			int result = mservice.updatePwd(member);
			if (result > 0) {
				mav.addObject("message", "비밀번호를 변경했습니다");
			} else {
				mav.addObject("message", "비밀번호 변경에 실패했습니다!");
			}
		} else {
			logger.info("비번 불일치!");
			mav.addObject("message", "현재 비밀번호가 일치하지 않습니다!");
		}
		mav.setViewName("redirect:/myinfo.do?ucode=" + ucode);
		return mav;
	}

	@RequestMapping("deluser.do")
	public String deleteUser(@RequestParam("ucode") String ucode, Model model) {
		if (mservice.deleteUser(ucode) > 0) {
			return "redirect:/logout.do";
		} else {
			model.addAttribute("message", "탈퇴에 실패했습니다");
			return "common/error";
		}
	}

//모달
	@RequestMapping("/modal.do")
	public String ModalPage() {

		return "suugit/modal.page";
	}

	@RequestMapping("/top1.do")
	public String testpage2() {
		return "suugit/topbar";
	}

//프로젝트 초대하기 ( 신규유저) 
	@RequestMapping("/invtnew.do")
	public ResponseEntity<String> invtNew(HttpSession session, @RequestBody String param, Invite invt)
			throws ParseException {
		logger.info("신규 초대!");
		JSONParser jparse = new JSONParser();

		JSONArray fileData = (JSONArray) jparse.parse(param);
		invt.setUcode((String) session.getAttribute("ucode"));
		invt.setPnum((String) session.getAttribute("pnum"));
		for (int i = 0; i < fileData.size(); i++) {
			invt.setInvtkey("i" + Integer.toString((int) Math.floor(Math.random() * 100000 + 1)));
			invt.setInvtemail((String) fileData.get(i));

			try {
				MailUtils sendMail = new MailUtils(mailSender);
				sendMail.setSubject("HWABO로 초대합니다");
				sendMail.setText(new StringBuffer().append("<h1>[HWABO 이메일 인증]</h1>")
						.append("<p>아래 링크를 클릭하시면 프로젝트에 가입할 수 있습니다.</p>")
						.append("<a href='http://localhost:8282/hwabo/invtConfirm.do?uemail=")
						.append(invt.getInvtemail()).append("&pnum=")
						.append(invt.getPnum()).append("&invtkey=")
						.append(invt.getInvtkey()).append("' target='_blenk'>초대장 인증 확인</a>").toString());
				sendMail.setFrom("hwabo49@gmail.com", "HWABO");
				sendMail.setTo(invt.getInvtemail());
				sendMail.send();
			} catch (MessagingException e) {
				e.printStackTrace();
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}

			int result = mservice.insertInvtNew(invt);
		}

		return new ResponseEntity<String>("success", HttpStatus.OK);
	}

	@GetMapping("/invtConfirm.do")
	public ModelAndView invtConfirm(HttpServletRequest request, ModelAndView mv, Member member, Invite invt, PjMember pjmember) {

		String uemail = request.getParameter("uemail");
		String pnum = request.getParameter("pnum");
		invt = mservice.selectInvtChk(request.getParameter("invtkey"));
		Date today = new Date();

		if(invt == null) {
			mv.addObject("message", "인증되지 않은 초대장 입니다");
			mv.setViewName("common/error");
		}else {
			if(invt.getExprtdate().compareTo(today) < 0){
				logger.info("1");
				mv.addObject("message", "초대 유효기간이 지났습니다!");
			}
			if(invt.getInvtuse().equals("Y")) {
				logger.info("2");
				mv.addObject("message", "이미 초대가 완료되었습니다");
			}
		}
		member = mservice.selectEmailMember(uemail);
		if(member != null) {
			pjmember.setUcode(member.getUcode());
			pjmember.setPnum(request.getParameter("pnum"));
			if(mservice.insertPjMember(pjmember) > 0 ) {
				mv.addObject("ucode",member.getUcode());
				mv.addObject("pnum",request.getParameter("pnum"));
				mv.setViewName("redirect:/ftables2.do");
			}else {
				mv.addObject("message", "프로젝트 가입에 실패했습니다");
				mv.setViewName("redirect:/cards.do");
			}
		}else {
			mv.addObject("message", "회원가입 후 이용할 수 있습니다");
			mv.addObject("uemail", uemail);
			mv.setViewName("suugit/sign");
		}
		return mv;
		
	}


	@PostMapping("/invtee.do")
	@ResponseBody
	public JSONArray selectNmList(HttpSession session, ModelAndView mav) {
		String pnum = (String) session.getAttribute("pnum");
		ArrayList<Member> nmlist = mservice.selectNotMember(pnum);

		JSONObject obj = new JSONObject();

		JSONArray jarr = new JSONArray();

		try {

			for (int i = 0; i < nmlist.size(); i++) {
				System.out.println(nmlist.get(i));
				JSONObject job = new JSONObject();
				job.put("ucode", nmlist.get(i).getUcode());
				job.put("uname", nmlist.get(i).getUname());
				job.put("ugroup", nmlist.get(i).getUgroup());
				job.put("urole", nmlist.get(i).getUrole());
				job.put("uimg", nmlist.get(i).getUimg());

				jarr.add(job);
			}
			mav.addObject("nmlist", jarr);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return jarr;
	}
	
	
	@PostMapping("/pmlist.do")
	@ResponseBody
	public JSONArray selectpmlist(HttpSession session, ModelAndView mav) {
		String pnum = (String) session.getAttribute("pnum");
		System.out.println(pnum);
		ArrayList<Member> nmlist = mservice.selectPMember(pnum);
			
		JSONObject obj = new JSONObject();

		JSONArray jarr = new JSONArray();

		try {

			for (int i = 0; i < nmlist.size(); i++) {
				JSONObject job = new JSONObject();
				job.put("ucode", nmlist.get(i).getUcode());
				job.put("uname", nmlist.get(i).getUname());
				job.put("uemail", nmlist.get(i).getUemail());
				job.put("uphone", nmlist.get(i).getUphone());
				job.put("ugroup", nmlist.get(i).getUgroup());
				job.put("urole", nmlist.get(i).getUrole());
				job.put("uimg", nmlist.get(i).getUimg());
				job.put("pjadmin", nmlist.get(i).getPjadmin());

				jarr.add(job);
			}
			mav.addObject("nmlist", jarr);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return jarr;
	}
//초대목록
//	selectInvtList	
	@PostMapping("invtlist.do")
	@ResponseBody
	public JSONArray selectInvtList(HttpSession session, ModelAndView mav) {
		ArrayList<Invite> invtlist = mservice.selectInvtList((String)session.getAttribute("pnum"));
		JSONObject obj = new JSONObject();

		JSONArray jarr = new JSONArray();

		try {

			for (int i = 0; i < invtlist.size(); i++) {
				JSONObject job = new JSONObject();

				job.put("invtkey", invtlist.get(i).getInvtkey());
				job.put("invtemail", invtlist.get(i).getInvtemail());
				job.put("invtuse", invtlist.get(i).getInvtuse());
				job.put("exprtdate", invtlist.get(i).getExprtdate().toString());

				jarr.add(job);
			}
			mav.addObject("invtlist", jarr);

		} catch (Exception e) {
			e.printStackTrace();
		}
		return jarr;
	}
	
	
//초대관리페이지
	@RequestMapping("/invtadmin.do")
	public String InviteManage() {

		return "suugit/invtmanage";
	}

//멤버 권한 변경 
	@PostMapping("/chnrole.do")
	public void updateProle(PjMember pjm,HttpSession session, HttpServletResponse response) throws IOException {
		pjm.setPnum((String)session.getAttribute("pnum"));
		int r = mservice.updatepjadmin(pjm);
		
	}
	
	@RequestMapping("invtcancle.do")
	public void deleteInvt(@RequestParam("invtkey") String invtkey) {
		int r = mservice.deleteInvt(invtkey);
	}
//게시글 관련 ====================================================================================================================================================================
//게시글 관련 ====================================================================================================================================================================
//게시글 관련 ====================================================================================================================================================================
//게시글 관련 ====================================================================================================================================================================
	@RequestMapping("/mvcpost.do")
	public String testpage() {
		return "suugit/tables";
	}

	@RequestMapping("/incp.do")
	public ModelAndView insertCpost(Cpost cpost, AddOn addon, ModelAndView mv, MultipartHttpServletRequest request) {
		logger.info("incp.do run....");
		
		System.out.println(cpost.getCpnum());
		System.out.println(cpost.getCwriter());
		System.out.println(cpost.getCucode());
		System.out.println(cpost.getCcontent());
		System.out.println(cpost.getCtitle());
		int result2 = cservice.insertCpost(cpost);
		if (result2 > 0) {
			mv.setViewName("redirect:/ftables.do?project_num=" + cpost.getCpnum());
		} else {
			mv.addObject("message", "게시글등록실패");
			mv.setViewName("common/error");
		}

		Iterator<String> files = request.getFileNames();
		MultipartFile mpf = request.getFile(files.next());

		if (mpf.getSize() > 0) {
			String savePath = request.getSession().getServletContext().getRealPath("resources/bupfile");
			String oFileName = "";
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");

//		Iterator<String> files = request.getFileNames();
//		MultipartFile mpf = request.getFile(files.next());

			int i = 0;
			List<MultipartFile> fileList = request.getFiles("file");

			if (fileList.size() > 3) {
				System.out.println("파일갯수 초과!");
				mv.setViewName("suugit/tables");
				return mv;
			}
			String cno = cservice.selectCno();
			addon.setCno(cno);

			for (MultipartFile filePart : fileList) {

				if (!fileList.get(i).isEmpty()) {
					String rfileName = cno + sdf.format(new java.sql.Date(System.currentTimeMillis()));
					oFileName = filePart.getOriginalFilename();
					rfileName += i + "." + oFileName.substring(oFileName.lastIndexOf(".") + 1);

					if (i == 0) {
						addon.setOfile1(oFileName);
						addon.setRfile1(rfileName);
						System.out.println("첫번쨰" + oFileName + rfileName);
					} else if (i == 1) {
						addon.setOfile2(oFileName);
						addon.setRfile2(rfileName);
						System.out.println("두번쨰" + oFileName + rfileName);
					} else if (i == 2) {
						addon.setOfile3(oFileName);
						addon.setRfile3(rfileName);
						System.out.println("세번쨰" + oFileName + rfileName);
					} else {
						mv.addObject("message", "파일개수초과");
						mv.setViewName("suugit/tables");
						return mv;
					}

					if (!oFileName.equals("")) {
						try {
							FileOutputStream fs = new FileOutputStream(savePath + "\\" + rfileName);
							fs.write(filePart.getBytes());
							fs.close();
						} catch (Exception e) {
							e.printStackTrace();
						}

					}
					logger.info("파일 이름 " + oFileName);
					logger.info("바꾼 이름" + rfileName);
				}
				i++;
			}

			int result1 = cservice.updateCfile(addon);

			if (result1 > 0) {
				mv.setViewName("redirect:/ftables.do?project_num=" + cpost.getCpnum());
			} else {
				mv.addObject("message", "첨부파일등록실패");
				mv.setViewName("common/error");
			}
		}

		return mv;
	}

	@RequestMapping("selcplist.do")
	public String selectCpList(Model model) {

		ArrayList<Cpost> list = cservice.selectCpList();

		if (list != null) {
			model.addAttribute("list", list);
			return "suugit/tables";
		} else {
			model.addAttribute("message", "게시글 조회 실패!");
			return "comm/error";
		}

	}

	@RequestMapping("selcpone.do")
	public ModelAndView selectCpOne(HttpServletRequest request, ModelAndView mv) {

		logger.info(request.getParameter("cno"));
		Cpost cpost = cservice.selectCpOne(request.getParameter("cno"));

		if (cpost != null) {
			mv.addObject("c", cpost);
			mv.setViewName("suugit/tables2");
		} else {
			mv.addObject("message", "글을 조회할 수 없습니다!");
			mv.setViewName("common/error");
		}
		return mv;
	}

	@RequestMapping("mvupcp.do")
	public String moveUpdateCpost(Cpost cpost, Model model) {
		model.addAttribute("cpost", cpost);
		return "suugit/cpostUpdateForm";

	}

	@PostMapping("upcp.do")
	@ResponseBody
	public String updateCpost(Cpost cpost, AddOn addon, ModelAndView mav, MultipartHttpServletRequest request) throws UnsupportedEncodingException {
		logger.info("게시글 수정");

		String cno = addon.getCno();
		logger.info(request.getParameter("cflist"));
		logger.info(addon.getRfile1());
		logger.info(addon.getRfile2());
		logger.info(addon.getRfile3());
		String savePath = request.getSession().getServletContext().getRealPath("resources/bupfile");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss"); 
		  
		List<MultipartFile> fileList = request.getFiles("file");
			
	
		String oFileName = "";
		
		for (MultipartFile filePart : fileList) {
			
		int i = 0;		
		while(!filePart.isEmpty()) {
			System.out.println("시작");
			String rfileName = cno + sdf.format(new java.sql.Date(System.currentTimeMillis()));
			oFileName = filePart.getOriginalFilename();
			rfileName += i + "." + oFileName.substring(oFileName.lastIndexOf(".") + 1);
		
			logger.info("파일 이름 " + oFileName);
			logger.info("바꾼 이름" + rfileName);
			
			if (!oFileName.equals("")) {
				try {
					FileOutputStream fs = new FileOutputStream(savePath + "\\" + rfileName);
					fs.write(filePart.getBytes());
					fs.close();
					System.out.println("글쓰는중");
				} catch (Exception e) {
					e.printStackTrace();
				}

			}
			if(addon.getRfile1() == null) {
				addon.setOfile1(oFileName);
				addon.setRfile1(rfileName);
				logger.info("첫번째 추가 ");
				System.out.println("첫번쨰" + oFileName + rfileName);
				break;
			}else if(addon.getRfile2() == null) {
				addon.setOfile2(oFileName);
				addon.setRfile2(rfileName);
				logger.info("두번째 추가");
				System.out.println("e번쨰" + oFileName + rfileName);
				break;
			}else if (addon.getRfile3() == null) {
				addon.setOfile3(oFileName);
				addon.setRfile3(rfileName);
				System.out.println("3번쨰" + oFileName + rfileName);
				logger.info("세번째 추가");
				break;
			}

			
		}
		}
		int r = cservice.updateCpost(cpost);
		int result1 = cservice.updateCfile(addon);
		
		cpost = cservice.selectCpOne(request.getParameter("cno"));
		JSONObject obj = new JSONObject();
		obj.put("ctitle", cpost.getCtitle());
		obj.put("ccontent", cpost.getCcontent());
		obj.put("ofile1", cpost.getOfile1());
		obj.put("rfile1", cpost.getRfile1());
		obj.put("ofile2", cpost.getOfile2());
		obj.put("rfile2", cpost.getRfile2());
		obj.put("ofile3", cpost.getOfile3());
		obj.put("rfile3", URLEncoder.encode(cpost.getRfile3(),"utf-8"));
		return obj.toJSONString();
}


	@RequestMapping("delcp.do")
	public String deleteCpost(@RequestParam("cno") String cno, AddOn addon, Model model, HttpServletRequest request) {

		File f = new File(request.getSession().getServletContext().getRealPath("resources/bupfile"));
		if (f.isDirectory()) {
			File[] fList = f.listFiles();
			for (int i = 0; i < fList.length; i++)
				if (fList[i].getName().contains(cno)) {
					System.out.println(fList[i].getName());
					fList[i].delete();
				}
		}
		cservice.deleteCpost(cno);
		return "redirect:/ftables2.do?ucode="+request.getSession().getAttribute("ucode")+"&pnum="+request.getSession().getAttribute("pnum");

	}
	
	@RequestMapping("/pjdetail.do")
	@ResponseBody
	public Project selectPjdetail(HttpSession session) {
		Project p = mservice.selectPjdetail((String)session.getAttribute("pnum"));
	
		return p;
	}
	
	
}
