package com.beet.HWABO.cabinet.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.beet.HWABO.bpost.model.service.BpostService;
import com.beet.HWABO.cabinet.model.service.CabinetService;
import com.beet.HWABO.cabinet.model.vo.Cabinet;
import com.beet.HWABO.cpost.model.service.CpostService;
import com.beet.HWABO.spost.model.service.SpostService;

@Controller
public class CabinetController {

   private static final Logger logger = LoggerFactory.getLogger(CabinetController.class);
   
   @Autowired
   private CabinetService cabinetService;
   
   @Autowired
   private BpostService bpostService;
   
   @Autowired
   private CpostService cpostService;
   
   @Autowired
   private SpostService spostService;
   
   
   
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
	       
	       String no = cabinet.getNo();
	       
	          
	          if(no.substring(0, 1).equals("b")) {
	        	logger.info("bpost 이퀄스로 업데이트 if 문 들어옴 no 값 :" + no);
	        		
	        		String bno = no;
	        	
	        		if(bpostService.updateOpen(bno) > 0) {
	        			logger.info("bpost open update 보관함 y로 설정 완료");
	        		}else {
	        			logger.info("bpost open update 보관함  실패");
	        		}
	        	  
	        	  
	        	 
	          	}else if(no.substring(0, 1).equals("s")) {
	          		logger.info("spost if 문 들어온 no 값 : " + no);  
	        		String sno = no;
		        	
	        		if(spostService.updateOpen(sno) > 0) {
	        			logger.info("spost open update 보관함 y로 설정 완료");
	        		}else {
	        			logger.info("spost open update 보관함  실패");
	        		}
	        
	        		
	        		
	        		
	          	}else if(no.substring(0, 1).equals("c")) {
	          		logger.info("cpost if 문 들어온 no 값 : " + no);
	        		String cno = no;
		        	
	        		if(cpostService.updateOpen(cno) > 0) {
	        			logger.info("cpost open update 보관함 y로 설정 완료");
	        		}else {
	        			logger.info("cpost open update 보관함  실패");
	        		}
	        	  
	        	  
	          }
	 
	       
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
          
          String no = cabinet.getNo();
          
          
          if(no.substring(0, 1).equals("b")) {
        	logger.info("bpost 이퀄스로 업데이트 if 문 들어옴 no 값 :" + no);
        		
        		String bno = no;
        	
        		if(bpostService.updateOpen(bno) > 0) {
        			logger.info("bpost open update 보관함 n으로 설정 완료");
        		}else {
        			logger.info("bpost open update 보관함  실패");
        		}
        	  
        	  
        	 
          	}else if(no.substring(0, 1).equals("s")) {
          		logger.info("spost 이퀄스로 업데이트 if 문 들어옴 no 값 :" + no);
        	
          		String sno = no;
            	
        		if(spostService.updateOpen(sno) > 0) {
        			logger.info("spost open update 보관함 n으로 설정 완료");
        		}else {
        			logger.info("spost open update 보관함  실패");
        		}
        	  
          		
          	}else if(no.substring(0, 1).equals("c")) {
          		logger.info("cpost 이퀄스로 업데이트 if 문 들어옴 no 값 :" + no);
            	
          		String cno = no;
            	
        		if(cpostService.updateOpen(cno) > 0) {
        			logger.info("cpost open update 보관함 n으로 설정 완료");
        		}else {
        			logger.info("cpost open update 보관함  실패");
        		}
          }
          
  
          
      }else {
         logger.info("cabinet 인서트 실패");
         out.append("fail");
         out.flush();
      }
      out.close();
   
   }
}


