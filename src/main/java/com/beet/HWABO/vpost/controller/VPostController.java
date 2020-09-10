package com.beet.HWABO.vpost.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.beet.HWABO.spost.model.vo.Spost;
import com.beet.HWABO.vpost.model.service.VPostService;
import com.beet.HWABO.vpost.model.vo.VPost;

@Controller
public class VPostController {
	private static final Logger logger = LoggerFactory.getLogger(VPostController.class);
	
	@RequestMapping("vpostinsert.do")
	public ModelAndView insertSpost(VPost vpost, ModelAndView mav) {
		
		logger.info("vpostinsert.do µµÂø !");
		
		if(VPostService.insertSpost(vpost) > 0) {
			
		}else {
			
		}
		return mav;
	}
}
