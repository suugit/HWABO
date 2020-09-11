package com.beet.HWABO.bpost.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

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
import org.springframework.web.servlet.ModelAndView;

import com.beet.HWABO.bpost.model.service.BpostService;
import com.beet.HWABO.bpost.model.vo.Bpost;



@Controller
public class BpostController {
	private static final Logger logger = LoggerFactory.getLogger(BpostController.class);
	
	@Autowired
	private BpostService bpostService;
	
	 @RequestMapping(value="insertbpost.do", method=RequestMethod.POST)
	public String insertBpost(Bpost bpost, HttpServletRequest request,
			@RequestParam(value = "ofile", required = false) MultipartFile file) {		
		  logger.info("bpost : " + bpost); 
		  logger.info("file : " + file.getOriginalFilename().length());		 
		  if(file != null && file.getOriginalFilename().length() > 0) {
		 String fileName = file.getOriginalFilename();
		 
		 String savePath = request.getSession().getServletContext().getRealPath("resources/bupfile");

		 
			 SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss"); // java.text.SimpleDateFormat
			
			 String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())); // 여기까지 파일명
			renameFileName += "." + fileName.substring(fileName.lastIndexOf(".") + 1); // 원래 파일명 . 뒤에서부터 추출해라

			bpost.setBoriginfile(fileName);
			bpost.setBrenamefile(renameFileName);
			/* logger.info("renameFileName : " + renameFileName); */
			try {
				file.transferTo(new File(savePath + "\\" + renameFileName));
				/* logger.info("이클립스에 파일 들어감 : " + renameFileName); */
			}catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		} /// 업로드파일이 있다면
		 
		 
		 
		 if(bpostService.insertBpost(bpost) > 0) {
			 logger.info("인서트 성공");
			 logger.info("비포스트"+bpost);
			 return "redirect:/bpostlist.do";
		 }else {
			 logger.info("인서트 실패");
			 return"common/error";
		 }
		
	}
	
	 
	 @RequestMapping("bpostlist.do")
	 public String selectListBpost(Model model) {
		 
		 ArrayList<Bpost> list = bpostService.selectList();
		 
		 if(list != null) {
			 logger.info("리스트 성공");
			 logger.info("비포스트 list"+list);
			 model.addAttribute("list", list);
			 return "kyukyu/index";
			 
		 }else {
			 model.addAttribute("message", "업무게시글 리스트 실패");
			 return "comm/error";
		 }
		 
	 }
	 
	 @RequestMapping(value = "bfdown.do")
	 public ModelAndView bpostFileDown(HttpServletRequest request, ModelAndView mv, @RequestParam("rfile") String rename,@RequestParam("ofile") String originname) throws IOException {
		 logger.info(rename);
		 logger.info(originname);
		 
		 String savePath = request.getSession().getServletContext().getRealPath("resources/bupfile");
		 
		 File renameFile = new File(savePath +"\\"+ rename);
			
		 File downFile = new File(savePath + "\\" + originname);  //java.io.File

		 
		 
		 if(!downFile.renameTo(new File(originname))) {
				//renameTo() 메소드가 실패(false)한 경우에는 직접 바꿔야함
				//원본파일의 내용읽어서, 복사복에 기록하고, 완료되면 원본파일 삭제
				//파일이 글, 이미지, 동영상 이니까 outputStream 사용해야한다. 다읽으면 -1이 리턴

				FileInputStream fin = new FileInputStream(renameFile); //rename파일 읽기
				FileOutputStream fout = new FileOutputStream(downFile); //이 파일에 쓸거임
				int data = -1;
				byte[] buffer = new byte[1024]; // read() 에서 한방에 배열로 읽어버리기 위해 선언한 변수 
				while((data = fin.read(buffer, 0 , buffer.length)) != -1) { // 버퍼를 0부터 읽어라 버퍼의 길이만큼
					fout.write(buffer, 0 , buffer.length);
				}
				fin.close();
				fout.close();
				downFile.delete(); //원본파일 삭제
			}//직접이름 바꾸기			

			logger.info("다운파일"+downFile.getName());
			/*	
			ModelAndView(String viewName, String modelName, Object modelObject)
			model = request +response
			modelName = 이름, modelObject = 객체
			request.setAttribute("이름", 객체) 와 같은 의미임
			 
			*/
			// 스프링에서는 파일 다운하려면, View를 상속받은 파일 다운 처리용 뷰클래스를 별도로 작성해야한다
			// DispatcherServlet 에 View class 를 실행 시키는 뷰 리졸버를 등록해야한다.
			return new ModelAndView("filedown", "downFile", downFile);
		}
	 
	 
	 
}















