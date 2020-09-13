package com.beet.HWABO.suugit.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
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

import com.beet.HWABO.bpost.model.vo.Bpost;
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
	private CpostService cservice;

	@Autowired
	private MailSendService msserivce;

	@Autowired
	private MemberService mservice;

	@Autowired
	private BCryptPasswordEncoder bcryptPwdEncoder;

//회원가입 페이지 이동 
	@RequestMapping("/mvsign.do")
	public String moveSign() {
		return "suugit/sign";
	}

	@RequestMapping(value = "/sign.do", method = RequestMethod.POST)
	public String insertUser(Member member, Model model) {
		logger.info("sign.do 실행...");

		// 패스워드 암호화
		member.getUemail();
		member.setUpwd(bcryptPwdEncoder.encode(member.getUpwd()));
		logger.info("회원가입한 메일 주소 : " + member.getUemail());
		member.setAccesstoken(msserivce.sendAuthMail(member.getUemail()));
		member.setUimg("resources/profileImg/default.png");
		int result = mservice.insertUser(member);
		logger.info("member 는 " + member);
		if (result > 0) {
			model.addAttribute("message", "인증 메일이 전송되었습니다!");
		} else {
			model.addAttribute("message", "암호화 회원가입 실패!");
		}
		return "suugit/sign.part";

	}

	@GetMapping("/signConfirm.do")
	public ModelAndView signUpConfirm(HttpServletRequest request, ModelAndView mv, Member member) {
		// email, authKey 가 일치할경우 authStatus 업데이트
		member.setUemail(request.getParameter("uemail"));
		member.setAccesstoken(request.getParameter("accesstoken"));
		int result = mservice.updateUst(member);

		if (result > 0) {
			mv.addObject("member", member);
			mv.setViewName("suugit/cards");
		} else {
			mv.addObject("message", "메일인증이 유효하지 않습니다!");
			mv.setViewName("common/error");
		}

		return mv;
	}

	@RequestMapping("/sign_team.do")
	public String signTeam() {

		return "suugit/sign_team.part";
	}

//로그인관련 
	@RequestMapping("/mvlogin.do")
	public String moveLogin() {
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

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String selectLogin(Member member, Model model, HttpServletRequest request, SessionStatus status) {
		logger.info("로그인");

		Member loginUser = mservice.selectLogin(member);

		String returnPage = null;

		if (loginUser != null) {
			if (bcryptPwdEncoder.matches(member.getUpwd(), loginUser.getUpwd())) {
				logger.info("로그인한 회원의 코드 : " + loginUser.getUcode());

				HttpSession session = request.getSession();
				session.setAttribute("uimg", loginUser.getUimg());
				session.setAttribute("ucode", loginUser.getUcode());
				session.setAttribute("uname", loginUser.getUname());
				request.setAttribute("uname", loginUser.getUname());

				status.setComplete(); // 요청성공, 200 전송
				return "redirect:/cards.do";
			} else {
				model.addAttribute("message", "암호가 일치하지 않습니다.");
				returnPage = "common/error";
			}
		} else {
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
		if (session != null) {
			session.invalidate();
			return "welcome";
		} else {
			model.addAttribute("message", "로그인 정보가 존재하지 않습니다!");
			return "common/error";
		}
	}

	@RequestMapping("/forgotpwd.do")
	public String forgotPwdPage() {

		return "suugit/forgotpwd.part";
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
			mav.setViewName("suugit/myinfo");
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
	
	@RequestMapping(value="/uppwd.do", method=RequestMethod.POST)
	public String updatePwd(HttpServletRequest request) {
		Member member = mservice.selectMember((String) request.getSession().getAttribute("ucode"));
		bcryptPwdEncoder.matches(request.getParameter("upwd"), member.getUpwd());
		
		
		return null;
		
		
	}
	
	/*
	 * updateMyinfo(@RequestBody Map<String,Object> params) {
	 * logger.info("정보 변경...");
	 * 
	 * Map<String,Object> resultMap = new HashMap<String,Object>();
	 * System.out.println(params); try {
	 * 
	 * } catch (Exception e) { resultMap.put("message", "업데이트실패"); return resultMap;
	 * } resultMap.put("message", "회원정보가 정상적으로 변경되었습니다"); return resultMap; }
	 */

	@RequestMapping("deluser.do")
	public String deleteUser(@RequestParam("ucode") String ucode, Model model) {
		if (mservice.deleteUser(ucode) > 0) {
			return "redirect:/logout.do";
		} else {
			model.addAttribute("message", "탈퇴에 실패했습니다");
			return "common/error";
		}
	}

//게시글
	@RequestMapping("/gnwrite.do")
	public String gnrlBoardWriteFormPage() {

		return "suugit/gnrlBoardWriteForm.part";
	}

	@RequestMapping("/gnview.do")
	public String gnrlBoardViewPage() {

		return "suugit/gnrlBoardView.part";
	}

//모달
	@RequestMapping("/modal.do")
	public String ModalPage() {

		return "suugit/modal.page";
	}

//비번찾기
//모달
	@RequestMapping("/chnpwd.do")
	public String ChnpwdPage() {

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

//게시글 관련 ====================================================================================================================================================================
//게시글 관련 ====================================================================================================================================================================
//게시글 관련 ====================================================================================================================================================================
//게시글 관련 ====================================================================================================================================================================


	@RequestMapping("/incp.do")
	public ModelAndView insertCpost(Cpost cpost, AddOn addon, ModelAndView mv, MultipartHttpServletRequest request) {
		logger.info("incp.do run....");

		cpost.setCpnum("1"); // 나중에 수정!
		int result2 = cservice.insertCpost(cpost);
		if (result2 > 0) {
			mv.setViewName("suugit/tables");
		} else {
			mv.addObject("message", "게시글등록실패");
			mv.setViewName("common/error");
		}

		Iterator<String> files = request.getFileNames();
		MultipartFile mpf = request.getFile(files.next());

		if (mpf.getSize() > 0) {
			String savePath = request.getSession().getServletContext().getRealPath("resources/cupfiles");
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
						System.out.println("2번째" + oFileName + rfileName);
					} else if (i == 2) {
						addon.setOfile3(oFileName);
						addon.setRfile3(rfileName);
						System.out.println("3번쨰" + oFileName + rfileName);
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
				mv.setViewName("suugit/tables");
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
	public ModelAndView bdetailView(@RequestParam("cno") String cno, ModelAndView mv) {
		Cpost cpost = cservice.selectCpOne(cno);

		if (cpost != null) {
			mv.addObject("cpost", cpost);
			mv.setViewName("suugit/페이지를 안정했어");
		} else {
			mv.addObject("message", cno + "번 글을 조회할 수 없습니다!");
			mv.setViewName("common/error");
		}
		return mv;
	}

	@RequestMapping("upcp.do")
	public ModelAndView updateCpost(Cpost cpost, AddOn addon, MultipartHttpServletRequest request, ModelAndView mav) {

		cpost.setCtitle(request.getParameter("ctitle"));
		cpost.setCcontent(request.getParameter("ccontent"));

		Iterator<String> files = request.getFileNames();
		MultipartFile mpf = request.getFile(files.next());

		if (mpf.getSize() > 0) {
			String savePath = request.getSession().getServletContext().getRealPath("resources/cupfiles");
			String oFileName = "";
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");

			int i = 0;
			List<MultipartFile> fileList = request.getFiles("file");

			if (fileList.size() > 3) {
				System.out.println("파일갯수 초과!");
				mav.setViewName("suugit/tables");
				return mav;
			}

			for (MultipartFile filePart : fileList) {

				if (!fileList.get(i).isEmpty()) {
					String rfileName = sdf.format(new java.sql.Date(System.currentTimeMillis()));
					oFileName = filePart.getOriginalFilename();
					rfileName += i + "." + oFileName.substring(oFileName.lastIndexOf(".") + 1);

					if (i == 0) {
						addon.setOfile1(oFileName);
						addon.setRfile1(rfileName);
						System.out.println("첫번쨰" + oFileName + rfileName);
					} else if (i == 1) {
						addon.setOfile2(oFileName);
						addon.setRfile2(rfileName);
						System.out.println("2번째" + oFileName + rfileName);
					} else if (i == 2) {
						addon.setOfile3(oFileName);
						addon.setRfile3(rfileName);
						System.out.println("3번쨰" + oFileName + rfileName);
					} else {
						mav.addObject("message", "파일개수초과");
						mav.setViewName("suugit/tables");
						return mav;
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
			String cno = cservice.selectCno();
			addon.setCno(cno);
			int result1 = cservice.updateCfile(addon);

			if (result1 > 0) {
				mav.setViewName("suugit/tables");
			} else {
				mav.addObject("message", "첨부파일등록실패");
				mav.setViewName("common/error");
			}
		}
		return mav;
	}

	@RequestMapping("delcp.do")
	public String deleteCpost(@RequestParam("cno") String cno, AddOn addon, Model model, HttpServletRequest request) {
		
		File f = new File(request.getSession().getServletContext().getRealPath("resources/cupfiles"));
		if(f.isDirectory()) {
		    File[] fList = f.listFiles();
		    for(int i=0; i < fList.length; i++)
		    	if(fList[i].getName().contains(cno)) {
		    		System.out.println(fList[i].getName());
		    		fList[i].delete();
		    	}
		}
		
		if (cservice.deleteCpost(cno) > 0) {
			return "suugit/tables";
		}else {
			return "common/error";
		}

	}
}
