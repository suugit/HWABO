package com.beet.HWABO.cabinet.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.beet.HWABO.bpost.model.service.BpostService;
import com.beet.HWABO.bpost.model.vo.Bpost;
import com.beet.HWABO.cabinet.model.service.CabinetService;
import com.beet.HWABO.cabinet.model.vo.Cabinet;

@Controller
public class CabinetController {

   private static final Logger logger = LoggerFactory.getLogger(CabinetController.class);
   
   @Autowired
   private CabinetService cabinetService;
   
   @Autowired
   private BpostService bpostService;
   
   
   
   @RequestMapping(value="insertcabinet.do", method=RequestMethod.POST)
   //ajax는 뷰 리졸버를 거치지 않고 바로 통로를 만들어 보내므로 보이트처리
   public void insertCabinet(Cabinet cabinet, HttpServletResponse response) throws Exception{
      logger.info("insertcabinet.do run...");
      logger.info("cabinet : " + cabinet);
     
      response.setContentType("text/html; charset=utf-8");      
      PrintWriter out = response.getWriter();      
     
      
      
      if(cabinetService.insertCabinet(cabinet) > 0) {
          logger.info("cabinet 인서트 성공");
          out.append("ok");
          out.flush();
          
          String no = cabinet.getNo();
          
          
          if(no.substring(0, 1).equals("b")) {
        	logger.info("bpost 이퀄스로 업데이트 if 문 들어옴 no 값 :" + no);
        		
        		String bno = no;
        	
        		if(bpostService.updateOpen(bno) > 0) {
        			logger.info("bpost open update 보관함 n으로 설정 완료");
        		}else {
        			logger.info("bpost open update 보관함  실패!!!!!!!!!!");
        		}
        	  
        	  
        	 
          	}else if(no.substring(0, 1).equals("s")) {
        	  
        	  logger.info("spost 이퀄스 비교 셩공!!!!!!!!!!!!!!");  
          	}else if(no.substring(0, 1).equals("c")) {
        	  
        	  logger.info("cpost 이퀄스 비교 셩공!!!!!!!!!!!!!!");
          }
          
  
          
      }else {
         logger.info("cabinet 인서트 실패");
         out.append("fail");
         out.flush();
      }
      out.close();
   
   }
}


