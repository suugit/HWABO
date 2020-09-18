package com.beet.HWABO.khc.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.beet.HWABO.dopost.model.service.DopostService;
import com.beet.HWABO.dopost.model.vo.Dopost;
import com.beet.HWABO.member.model.vo.Member;

/**
 * Handles requests for the application home page.
 */
@Controller
public class KhcController {

	private static final Logger logger = LoggerFactory.getLogger(KhcController.class);

	@Autowired
	private DopostService dopostService;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	// mytodo.do = 게시글등록하기위해 만든주소
	@RequestMapping(value = "mytodo.do", method = RequestMethod.POST)
	public String mytodo(Dopost dopost, HttpServletRequest request, Model model) {
		logger.info("mytodo.run ........................");
		logger.info("@@@@@@@@@@@@@dopost" + dopost);
		int result = dopostService.insertdopost(dopost);

		if (result > 0) {
			return "khc/insertdoposttest";
		} else {
			model.addAttribute("message", "등록실패");
			return "common/error";
		}
	}	
	 
	@RequestMapping(value="dopostselectone.do")
	public String selectone(@RequestParam("dno") String dno, Model model) {
		logger.info("dopostselectone.run......");
		
		Dopost dopost = dopostService.selectonedopost(dno);
		
		if(dopost != null) {
			model.addAttribute("dopost", dopost);
			return "khc/dopostselectone";
		}else {
			model.addAttribute("message", "실패!!");
			return "common/error";
		}
	}
	
	/*
	 * @RequestMapping(value = "dopostupdateview.do") public ModelAndView
	 * selectAll(@RequestParam("uemail") String uemail, ModelAndView mav){
	 * logger.info("dopostselectall.run...");
	 * 
	 * Member member = dopostService.selectMember(uemail);
	 * 
	 * if(member != null) { mav.setViewName("khc/updatemytodo");
	 * mav.addObject("member", member); }else { mav.addObject("message", uemail +
	 * "에 대한 수정페이지 이동 실패 !"); mav.setViewName("common/error"); } return mav; }
	 */

	@RequestMapping(value = "updatemytodo.do", method = RequestMethod.POST)
	public String dopostUpdate(Dopost dopost, Model model) {
		logger.info("updatemytodo.run ........................");
		logger.info("***!!!!!!dopost" + dopost);
		int result = dopostService.updatedopost(dopost);

		if (result > 0) {
			return "khc/index.jsp";
		} else {
			model.addAttribute("message", "수정실패");
			return "common/error";
		}
	}

	

	// --------------------------------------------------------------------------------------------------------------
	@RequestMapping(value = "movetodojsp.do", method = RequestMethod.GET)
	public String movejspfile(Model model) {
		return "khc/mytodo"; // 경로

	}
	
	@RequestMapping(value= "dopostupdate.do", method = RequestMethod.GET)
	public String updatetodo(Model model) {
		return "khc/updatemytodo";
	}

	@RequestMapping(value = "participateproject.do", method = RequestMethod.GET)
	public String participateproject(Model model) {
		return "khc/participateproject";

	}

	@RequestMapping(value = "authorityadmin.do", method = RequestMethod.POST)
	public String authorityadmin(Model model) {
		return "khc/authorityadmin";
	}

	@RequestMapping(value = "projectmanagement.do", method = RequestMethod.POST)
	public String projectmanagement(Model model) {
		return "khc/projectmanagement";
	}

}
