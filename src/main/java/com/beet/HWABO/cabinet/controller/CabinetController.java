package com.beet.HWABO.cabinet.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.beet.HWABO.cabinet.model.service.CabinetService;
import com.beet.HWABO.cabinet.model.vo.Cabinet;

@Controller
public class CabinetController {

	private static final Logger logger = LoggerFactory.getLogger(CabinetController.class);
	
	@Autowired
	private CabinetService cabinetService;
	
	
	@RequestMapping(value="insertcabinet.do", method=RequestMethod.POST)
	//ajax는 뷰 리졸버를 거치지 않고 바로 통로를 만들어 보내므로 보이트처리
	public void insertCabinet(Cabinet cabinet, HttpServletRequest request, HttpServletResponse response) throws Exception{
		logger.info("insertcabinet.do run...");
		logger.info("cabinet : " + cabinet);
		
		cabinet.setNo(request.getParameter("no"));
		cabinet.setUcode(request.getParameter("ucode"));
		cabinet.setPnum(request.getParameter("pnum"));
		
		response.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		
		if(cabinetService.insertCabinet(cabinet) > 0) {
			 logger.info("cabinet 인서트 성공");
			 out.append("ok");
			 out.flush();
		}else {
			logger.info("cabinet 인서트 실패");
			out.append("fail");
			out.flush();
		}
		out.close();
	
	}
	
	
	
	
}
