package com.beet.HWABO.cabinet.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


import com.beet.HWABO.cabinet.model.service.CabinetService;
import com.beet.HWABO.cabinet.model.vo.Cabinet;



@Controller
public class CabinetController {

   private static final Logger logger = LoggerFactory.getLogger(CabinetController.class);
   
   @Autowired
   private CabinetService cabinetService;
   

   
   @RequestMapping(value="deletecabinet.do", method=RequestMethod.POST)
   public void deletecabinet(Cabinet cabinet, HttpServletResponse response)throws Exception {
	   logger.info("deletecabinet.do run...");
	      logger.info("cabinet : " + cabinet);
	     
	      response.setContentType("text/html; charset=utf-8");      
	      PrintWriter out = response.getWriter();      
	     
	     
	   
	   if(cabinetService.deleteCabinet(cabinet) > 0) {
		   logger.info("보관함 삭제 성공!");
		   out.append("ok");
	       out.flush();
	   
	       
	   }else {
	        logger.info("cabinet 인서트 실패");
	        out.append("fail");
	        out.flush();
	        }
	        out.close();
		   
		   
	   }
	   
   

   
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
          

          
      }else {
         logger.info("cabinet 인서트 실패");
         out.append("fail");
         out.flush();
      }
      out.close();
   
   }
   
   
   @RequestMapping(value="cabinetList.do", method = RequestMethod.POST)
   @ResponseBody 
   public String cabinetList(Cabinet cabinet, HttpServletResponse response) throws IOException{
	 
		logger.info("cabinetk : "+ cabinet);
	  
	   ArrayList<Cabinet> list = cabinetService.selectUser(cabinet);
	
	   JSONObject sendJson = new JSONObject();

		JSONArray jarr = new JSONArray();
		
		
		for(Cabinet c : list) {
			JSONObject job = new JSONObject();
			job.put("no", URLEncoder.encode(c.getNo(), "utf-8"));
			
			jarr.add(job);
			
		}
		sendJson.put("list", jarr);
		return sendJson.toString();
   }
   
   
   
}







































