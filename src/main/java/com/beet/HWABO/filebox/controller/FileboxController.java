package com.beet.HWABO.filebox.controller;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.beet.HWABO.filebox.model.service.FileboxService;
import com.beet.HWABO.filebox.model.vo.Filebox;

@Controller
public class FileboxController {
	
	private static final Logger logger = LoggerFactory.getLogger(FileboxController.class);
	
	
	@Autowired
	private FileboxService fileboxService;
	
	@RequestMapping("Fileboxlist.do")
	public String selectListFilebox(@RequestParam("pnum") String pnum, Model model) {
		logger.info("전달 온 pnum 값 : " + pnum);
		
		ArrayList<Filebox> list = fileboxService.selectList(pnum);
		
		if(list != null) {
			
			logger.info("파일박스 리스트 성공");
			logger.info("파일박스 list"+list);
			model.addAttribute("list", list);
			return "kyukyu/fileboxpage";
		}else {
			
			 model.addAttribute("message", "filebox 리스트 실패");
			 return "comm/error";
		}
		
	}
	
	
	@RequestMapping("FileboxTxtlist.do")
	public String selectListFileboxTxt(@RequestParam("pnum") String pnum, Model model) {
		logger.info("전달 온 pnum 값 : " + pnum);
		
		ArrayList<Filebox> list = fileboxService.selectTxtList(pnum);
		
		if(list != null) {
			
			logger.info("파일박스 Txt 리스트 성공");
			logger.info("파일박스 Txt list"+list);
			model.addAttribute("list", list);
			
			
			return "kyukyu/fileboxTxt";
		}else {
			
			 model.addAttribute("message", "filebox 리스트 실패");
			 return "comm/error";
		}
		
	}
	
	@RequestMapping("FileboxZiplist.do")
	public String selectListFileboxZip(@RequestParam("pnum") String pnum, Model model) {
		logger.info("전달 온 pnum 값 : " + pnum);
		
		ArrayList<Filebox> list = fileboxService.selectZipList(pnum);
		
		if(list != null) {
			
			logger.info("파일박스 zip 리스트 성공");
			logger.info("파일박스 zip list"+list);
			model.addAttribute("list", list);
			

			return "kyukyu/fileboxZip";
		}else {
			
			 model.addAttribute("message", "filebox 리스트 실패");
			 return "comm/error";
		}
		
	}
	
	
	@RequestMapping("FileboxPptlist.do")
	public String selectListFileboxPpt(@RequestParam("pnum") String pnum, Model model) {
		logger.info("전달 온 pnum 값 : " + pnum);
		
		ArrayList<Filebox> list = fileboxService.selectPptList(pnum);
		
		if(list != null) {
			
			logger.info("파일박스 zip 리스트 성공");
			logger.info("파일박스 zip list"+list);
			model.addAttribute("list", list);
			

			return "kyukyu/fileboxPpt";
		}else {
			
			 model.addAttribute("message", "filebox 리스트 실패");
			 return "comm/error";
		}
		
	}
	
	
	@RequestMapping("FileboxEtclist.do")
	public String selectListFileboxEtc(@RequestParam("pnum") String pnum, Model model) {
		logger.info("전달 온 pnum 값 : " + pnum);
		
		ArrayList<Filebox> list = fileboxService.selectEtcList(pnum);
		
		if(list != null) {
			
			logger.info("파일박스 zip 리스트 성공");
			logger.info("파일박스 zip list"+list);
			model.addAttribute("list", list);
			

			return "kyukyu/fileboxEtc";
		}else {
			
			 model.addAttribute("message", "filebox 리스트 실패");
			 return "comm/error";
		}
		
	}
	
	
}
























