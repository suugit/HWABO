package com.beet.HWABO.vpost.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.beet.HWABO.vpost.model.service.VPostService;
import com.beet.HWABO.vpost.model.vo.VPost;


@Controller
public class VPostController {
	private static final Logger logger = LoggerFactory.getLogger(VPostController.class);
	
	@Autowired
	private VPostService vpostservice;
	
	@RequestMapping(value="vpostinsert.do", method=RequestMethod.POST)
	public String vpostInsert(VPost vpost, Model model){
		
		
		logger.info("vpostinsert ����");
		logger.info("�� : " + vpost);
		
		int result = vpostservice.insertvpost(vpost);
		
		if(result > 0) {
			model.addAttribute("vpost",vpost);
			return "yeongmin/insertvposttest";
		}else {
			model.addAttribute("message", "��ǥ ��� ����  !");
			return "common/error";
		}
	}
	
	@RequestMapping(value="vpostupdate.do" , method=RequestMethod.POST)
	public String vpostUpdate(VPost vpost , Model model) {
		
		logger.info("vpostupdate 입장  !");
		logger.info("수정하기전 vpost "+ vpost);
		
		int result = vpostservice.updatevpost(vpost);
		
		if(result >0) {
			return "yeongmin/index.jsp";
			
		}else {
			model.addAttribute("message","회원 수정 실패");
			return "common/error";
		}
		
		
	}
	
}
