package com.beet.HWABO.khc.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.beet.HWABO.dopost.model.service.DopostService;
import com.beet.HWABO.dopost.model.vo.Dopost;

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
	//mytodo.do = 게시글등록하기위해 만든주소
	@RequestMapping(value = "mytodo.do", method =  RequestMethod.POST )
	public String mytodo(Dopost dopost, Model model) {
		logger.info("mytodo.run ........................");
		logger.info("@@@@@@@@@@@@@dopost" + dopost);
		int result = dopostService.insertdopost(dopost);
	
		if(result > 0) {
			return "khc/insertdoposttest";
		}else {
			model.addAttribute("message", "등록실패");
			return "common/error";
		}
		
	
}
	
	@RequestMapping(value = "dopostupdate.do", method =  RequestMethod.POST )
	public String dopostUpdate(Dopost dopost, Model model) {
		logger.info("mytodo.run ........................");
		logger.info("@@@@@@@@@@@@@dopost" + dopost);
		int result = dopostService.updatedopost(dopost);
	
		if(result > 0) {
			return "khc/index.jsp";
		}else {
			model.addAttribute("message", "수정실패");
			return "common/error";
			}
		}
		
	@RequestMapping(value = "dopostdelte.do", method =  RequestMethod.POST )
		public String dopostDelete(Dopost dopost, Model model) {
			logger.info("mytodo.run ........................");
			logger.info("@@@@@@@@@@@@@dopost" + dopost);
			int result = dopostService.deletedopost(dopost);
		
			if(result > 0) {
				return "khc/index.jsp";
			}else {
				model.addAttribute("message", "삭제실패");
				return "common/error";
			}
		
	
}
	
	//--------------------------------------------------------------------------------------------------------------
	@RequestMapping(value = "movetodojsp.do", method = RequestMethod.GET)
	public String movejspfile(Model model) {
		return "khc/mytodo"; //경로
		
	}
	

	@RequestMapping()
	public String moveselectjspfile(Model model) {
		return "khc/updatemytodo"; //경로
		
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
