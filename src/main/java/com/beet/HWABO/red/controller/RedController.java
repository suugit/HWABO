package com.beet.HWABO.red.controller;

import java.io.IOException;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.beet.HWABO.red.model.service.RedService;
import com.beet.HWABO.red.model.vo.Project;
import com.beet.HWABO.red.model.vo.Star;
import com.beet.HWABO.red.model.vo.UserProject;

@Controller
public class RedController {
	
	private static final Logger logger = LoggerFactory.getLogger(RedController.class);

	@Autowired
	private RedService redService;
	
	@RequestMapping(value = "createProject.do", method = RequestMethod.POST)
	public ModelAndView createPro(UserProject project, ModelAndView mv) {
		logger.info("[RedController]createProject.do 실행됨...." + project);
		
		if (redService.insertProject(project) > 0) {
			logger.info("[RedController] 프로젝트 생성 성공 (1/2)");
			if (redService.insertProject2(project) > 0) {
				logger.info("[RedController] 프로젝트 생성 성공 (2/2)");
				mv.setViewName("redirect:/cards.do");
			} else {
				mv.setViewName("redirect:/red404.do");
				mv.addObject("message", "프로젝트 생성 실패...");
				logger.info("[RedController] 프로젝트 생성 실패");
			}
		} else {
			mv.setViewName("redirect:/red404.do");
			mv.addObject("message", "프로젝트 생성 실패...");
			logger.info("[RedController] 프로젝트 생성 실패");
		}
		return mv;
	}
	@RequestMapping(value = "cards.do", method = RequestMethod.GET)
	public ModelAndView plist(ModelAndView mv) {
		logger.info("[RedController]cards2.do 실행됨....");
		
		mv.setViewName("red/ProjectSessionCheck");
		
		return mv;

	}
	@RequestMapping(value = "cards2.do", method = RequestMethod.GET)
	public ModelAndView plist(@RequestParam("ucode") String ucode, 
			ModelAndView mv) {
		logger.info("[RedController]cards.do 실행됨....");
		
		ArrayList<UserProject> project = null;
		
		if(ucode != null) {
		 project = redService.selectList(ucode);
		}
		if(project != null) {
			mv.setViewName("red/cards");
			mv.addObject("project",project);
		}else {
			mv.addObject("message", "프로젝트 페이지 조회 실패...");
			mv.setViewName("red/cards");
		}
		
		return mv;

	}
	@RequestMapping(value = "createP.do", method = RequestMethod.GET)
	public ModelAndView pCreate(@RequestParam("ucode") String ucode, ModelAndView mv) {
		logger.info("[RedController]createP.do 실행됨....");
		ArrayList<UserProject> project = null;
		
		if(ucode != null) {
		 project = redService.selectList(ucode);
		}
		if(project != null) {
			mv.setViewName("red/create");
			mv.addObject("project",project);
		}else {
			mv.addObject("message", "프로젝트 페이지 조회 실패...");
			mv.setViewName("red/cards");
		}
		
		return mv;

	}
	@RequestMapping(value = "deleteProject.do", method = RequestMethod.GET)
	public ModelAndView pDelete(@RequestParam("projectNumber") String projectNumber, ModelAndView mv) {
		logger.info("[RedController]deleteProject.do 실행됨....");
		if(redService.deleteProject(projectNumber) > 0) {
			mv.setViewName("redirect:/cards.do");
		}else {
			mv.addObject("message", "프로젝트 삭제 실패...");
			mv.setViewName("redirect:/red404.do");
		}
		
		return mv;
		
	}
	@RequestMapping(value = "delStar.do", method = RequestMethod.GET)
	public ModelAndView starDelete(UserProject up, ModelAndView mv) {
		logger.info("[RedController]delStar.do 실행됨....");
		if(redService.delStar(up) > 0) {
			mv.setViewName("redirect:/cards.do");
		}else {
			mv.addObject("message", "프로젝트 삭제 실패...");
			mv.setViewName("redirect:/cards.do");
		}
		
		return mv;
		
	}
	@RequestMapping(value = "starProject.do", method = RequestMethod.POST)
	public ModelAndView pStar(
			Star star, ModelAndView mv) {
		logger.info("[RedController]deleteProject.do 실행됨....star : " + star);
		if( ((ArrayList<UserProject>)redService.selectCheckStar(star)).size() == 0 &&
				redService.insertProjectStar(star) > 0) {
			mv.setViewName("redirect:/cards.do");
		}else {
			mv.setViewName("redirect:/cards.do");
		}
		
		return mv;
		
	}
	@RequestMapping(value = "starList.do", method = RequestMethod.POST)
	@ResponseBody 
	public String sssListStar(@RequestParam("ucode") String ucode
			,HttpServletResponse response) throws IOException {
		logger.info("즐겨찾기 불러오기 run....");
		
		ArrayList<UserProject> list =  redService.selectStar(ucode);
		
		JSONObject sendJson = new JSONObject();

		JSONArray jarr = new JSONArray();

		for (UserProject project : list) {
			JSONObject job = new JSONObject();
			job.put("ucode", URLEncoder.encode(project.getUcode(), "utf-8"));
			job.put("star", URLEncoder.encode(project.getStar(), "utf-8"));
			job.put("name", URLEncoder.encode(project.getName(), "utf-8"));
			jarr.add(job);
		}

		sendJson.put("list5", jarr);

		return sendJson.toJSONString();
	}

////views start//////////////////////////////	
	@RequestMapping(value = "suugit.do", method = RequestMethod.GET)
	public String suugitIndex(Model model) {
		
		return "welcome";
	}
	
	@RequestMapping(value = "red.do", method = RequestMethod.GET)
	public String redIndex(Model model) {
		
		return "sample/index";
	}
	@RequestMapping(value = "abc.do", method = RequestMethod.GET)
	public String abcabcIndex(Model model) {
		
		return "abc/index";
	}
	@RequestMapping(value = "kyukyu.do", method = RequestMethod.GET)
	public String kyukyuIndex(Model model) {
		
		return "kyukyu/index";
	}
	@RequestMapping(value = "khc.do", method = RequestMethod.GET)
	public String khcIndex(Model model) {
		
		return "khc/index";
	}
	@RequestMapping(value = "plz.do", method = RequestMethod.GET)
	public String plzIndex(Model model) {
		
		return "yeongmin/index";
	}
	@RequestMapping(value = "sample.do", method = RequestMethod.GET)
	public String sampleIndex(Model model) {
		
		return "sample/index";
	}
	@RequestMapping(value = "404.do", method = RequestMethod.GET)
	public String go404(Model model) {
		
		return "sample/error404";
	}
	@RequestMapping(value = "red404.do", method = RequestMethod.GET)
	public String goRed404(Model model) {
		
		return "red/error404";
	}
	@RequestMapping(value = "blank.do", method = RequestMethod.GET)
	public String blank(Model model) {
		
		return "sample/blank";
	}
	@RequestMapping(value = "buttons.do", method = RequestMethod.GET)
	public String buttons(Model model) {
		
		return "sample/buttons";
	}
	
	@RequestMapping(value = "scards.do", method = RequestMethod.GET)
	public String scards(Model model) {
		
		return "sample/cards";
	}
	@RequestMapping(value = "charts.do", method = RequestMethod.GET)
	public String charts(Model model) {
		
		return "sample/charts";
	}
	@RequestMapping(value = "fpassword.do", method = RequestMethod.GET)
	public String fpassword(Model model) {
		
		return "sample/forgot-password";
	}
	@RequestMapping(value = "flogin.do", method = RequestMethod.GET)
	public String login(Model model) {
		
		return "sample/login";
	}
	@RequestMapping(value = "fregister.do", method = RequestMethod.GET)
	public String register(Model model) {
		
		return "sample/register";
	}
	@RequestMapping(value = "ftables.do", method = RequestMethod.GET)
	public String table(Model model) {
		
		return "red/tables";
	}
	@RequestMapping(value = "sftables.do", method = RequestMethod.GET)
	public String stable(Model model) {
		
		return "sample/tables";
	}
	@RequestMapping(value = "fanimation.do", method = RequestMethod.GET)
	public String animation(Model model) {
		
		return "sample/utilities-animation";
	}
	@RequestMapping(value = "fborder.do", method = RequestMethod.GET)
	public String border(Model model) {
		
		return "red/utilities-border";
	}
	@RequestMapping(value = "fborder2.do", method = RequestMethod.GET)
	public String border2(Model model) {
		
		return "red/utilities-border2";
	}
	@RequestMapping(value = "sfborder.do", method = RequestMethod.GET)
	public String sborder(Model model) {
		
		return "sample/utilities-border";
	}
	@RequestMapping(value = "fcolor.do", method = RequestMethod.GET)
	public String color(Model model) {
		
		return "sample/utilities-color";
	}
	@RequestMapping(value = "fother.do", method = RequestMethod.GET)
	public String other(Model model) {
		
		return "red/utilities-other";
	}
	@RequestMapping(value = "sfother.do", method = RequestMethod.GET)
	public String sother(Model model) {
		
		return "sample/utilities-other";
	}
	@RequestMapping(value = "writeB.do", method = RequestMethod.GET)
	public String writeB(Model model) {
		
		return "red/write";
	}
////views end//////////////////////////////
	
}
