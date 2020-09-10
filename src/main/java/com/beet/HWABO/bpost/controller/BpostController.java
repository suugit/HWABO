package com.beet.HWABO.bpost.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.beet.HWABO.bpost.model.service.BpostService;
import com.beet.HWABO.bpost.model.vo.Bpost;



@Controller
public class BpostController {
	private static final Logger logger = LoggerFactory.getLogger(BpostController.class);
	
	@Autowired
	private BpostService bpostService;
	
	 @RequestMapping(value="insertbpost.do", method=RequestMethod.POST)
	public String insertBpost(Bpost bpost, HttpServletRequest request,
			@RequestParam(name = "ofile", required = false) MultipartFile file) {
		
		 logger.info("bpost : " + bpost);
		 logger.info("file : " + file);
		 
		 String fileName = file.getOriginalFilename();
		 
		 String savePath = request.getSession().getServletContext().getRealPath("resources/bupfile");

		 if(file != null) {
			 SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss"); // java.text.SimpleDateFormat
			
			 String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())); // 여기까지 파일명
			renameFileName += "." + fileName.substring(fileName.lastIndexOf(".") + 1); // 원래 파일명 . 뒤에서부터 추출해라

			bpost.setBoriginfile(fileName);
			bpost.setBrenamefile(renameFileName);
			logger.info("renameFileName : " + renameFileName);
			try {
				file.transferTo(new File(savePath + "\\" + renameFileName));
				logger.info("이클립스에 파일 들어감 : " + renameFileName);
			}catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		} /// 업로드파일이 있다면
		 
		 
		 
		 if(bpostService.insertBpost(bpost) > 0) {
			 logger.info("인서트 성공");
			 return "common/main.do";
		 }else {
			 logger.info("인서트 실패");
			 return"common/error.dp";
		 }
		
	}
	
	 
	 
	 
	 
	 
	 
	 
	 
}
