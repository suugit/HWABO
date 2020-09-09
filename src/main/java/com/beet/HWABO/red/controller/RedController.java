package com.beet.HWABO.red.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.beet.HWABO.HomeController;

@Controller
public class RedController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
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
	@RequestMapping(value = "blank.do", method = RequestMethod.GET)
	public String blank(Model model) {
		
		return "sample/blank";
	}
	@RequestMapping(value = "buttons.do", method = RequestMethod.GET)
	public String buttons(Model model) {
		
		return "sample/buttons";
	}
	@RequestMapping(value = "cards.do", method = RequestMethod.GET)
	public String cards(Model model) {
		
		return "red/cards";
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
	@RequestMapping(value = "createP.do", method = RequestMethod.GET)
	public String creatP(Model model) {
		
		return "red/create";
	}
	@RequestMapping(value = "writeB.do", method = RequestMethod.GET)
	public String writeB(Model model) {
		
		return "red/write";
	}
}
