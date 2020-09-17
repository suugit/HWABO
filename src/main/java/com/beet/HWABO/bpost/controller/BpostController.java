package com.beet.HWABO.bpost.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
import com.beet.HWABO.filebox.model.vo.Filebox;

@Controller
public class BpostController {
	private static final Logger logger = LoggerFactory.getLogger(BpostController.class);

	@Autowired
	private BpostService bpostService;

	@RequestMapping(value = "insertbpost.do", method = RequestMethod.POST)
	public String insertBpost(Bpost bpost, Filebox filebox, HttpServletRequest request,
			@RequestParam(value = "ofile", required = false) MultipartFile file) {
		logger.info("bpost : " + bpost);
		logger.info("file : " + file.getOriginalFilename().length());
		logger.info("file" + file);

		if (file != null && file.getOriginalFilename().length() > 0) {
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
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		} /// 업로드파일이 있다면

		if (bpostService.insertBpost(bpost) > 0) {
			logger.info("인서트 성공");
			logger.info("비포스트" + bpost);
			return "redirect:/bpostlist.do";
		} else {
			logger.info("인서트 실패");
			return "common/error";
		}

	}

	@RequestMapping("bpostlist.do")
	public String selectListBpost(Model model) {

		ArrayList<Bpost> list = bpostService.selectList();

		if (list != null) {
			logger.info("리스트 성공");
			logger.info("비포스트 list" + list);
			model.addAttribute("list", list);
			return "kyukyu/index";

		} else {
			model.addAttribute("message", "업무게시글 리스트 실패");
			return "comm/error";
		}

	}

	@RequestMapping(value = "bfdown.do")
	public void bpostFileDown(HttpServletRequest request, HttpServletResponse response, ModelAndView mv,
			@RequestParam("rfile") String rename, @RequestParam("ofile") String originname) throws IOException {

		BufferedInputStream buffer = null;
		ServletOutputStream serout = null;

		logger.info("originname" + originname);
		logger.info("rename" + rename);

		String dir = request.getSession().getServletContext().getRealPath("resources/bupfile");
		File savedFile = new File(dir + "/" + rename);
		try {
			FileInputStream fis = new FileInputStream(savedFile);
			buffer = new BufferedInputStream(fis);
			serout = response.getOutputStream();

			String resFilename = "";
			boolean isMSIE = request.getHeader("user-agent").indexOf("MSIE") != -1
					|| request.getHeader("user-agent").indexOf("Trident") != -1;
			if (isMSIE) {
				resFilename = URLEncoder.encode(originname, "UTF-8");
				resFilename = resFilename.replaceAll("\\+", "%20");
			} else {
				resFilename = new String(originname.getBytes("UTF-8"), "ISO-8859-1");

			}
			response.setContentType("application/octet-stream;charset=utf-8");
			response.addHeader("Content-Disposition", "attachment;filename=\"" + resFilename + "\"");
			// 파일길이 설정
			response.setContentLength((int) savedFile.length());

			int read = 0;
			while ((read = buffer.read()) != -1) {
				serout.write(read);
			}
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			try {
				serout.close();
				buffer.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
	}
//
//	 @RequestMapping(value = "bfdown.do")
//	    public ModelAndView bpostFileDown(HttpServletRequest request, ModelAndView mv, @RequestParam("rfile") String rename,@RequestParam("ofile") String originname) throws IOException {
//	       logger.info(rename);
//	       logger.info(originname);
//	       
//	       String savePath = request.getSession().getServletContext().getRealPath("resources/bupfile");
//	       
//	       File renameFile = new File(savePath +"\\"+ rename);
//	         
//	       File downFile = new File(savePath + "\\" + originname);  //java.io.File
//
//	       
//	       
//	       if(!downFile.renameTo(new File(originname))) {
//	            //renameTo() 메소드가 실패(false)한 경우에는 직접 바꿔야함
//	            //원본파일의 내용읽어서, 복사복에 기록하고, 완료되면 원본파일 삭제
//	            //파일이 글, 이미지, 동영상 이니까 outputStream 사용해야한다. 다읽으면 -1이 리턴
//
//	            FileInputStream fin = new FileInputStream(renameFile); //rename파일 읽기
//	            FileOutputStream fout = new FileOutputStream(downFile); //이 파일에 쓸거임
//	            int data = -1;
//	            byte[] buffer = new byte[1024]; // read() 에서 한방에 배열로 읽어버리기 위해 선언한 변수 
//	            while((data = fin.read(buffer, 0 , buffer.length)) != -1) { // 버퍼를 0부터 읽어라 버퍼의 길이만큼
//	               fout.write(buffer, 0 , buffer.length);
//	            }
//	            fin.close();
//	            fout.close();
//	            downFile.delete(); //원본파일 삭제
//	         }//직접이름 바꾸기         
//
//	         logger.info("다운파일"+downFile.getName());
//	         /*   
//	         ModelAndView(String viewName, String modelName, Object modelObject)
//	         model = request +response
//	         modelName = 이름, modelObject = 객체
//	         request.setAttribute("이름", 객체) 와 같은 의미임
//	          
//	         */
//	         // 스프링에서는 파일 다운하려면, View를 상속받은 파일 다운 처리용 뷰클래스를 별도로 작성해야한다
//	         // DispatcherServlet 에 View class 를 실행 시키는 뷰 리졸버를 등록해야한다.
//	         return new ModelAndView("filedown", "downFile", downFile);
//	      }
//	    
//	    
	    
	    
	
	
	@RequestMapping(value = "deletebpost.do")
	public String bpostDelete(Bpost bpost, Model model, HttpServletRequest request) {
		if (bpostService.deleteBpost(bpost) > 0) {
			String brenamefilename = bpost.getBrenamefile();
			logger.info("controller brenamefilename : " + brenamefilename);

			if (brenamefilename != null && !brenamefilename.isEmpty()) {

				String savePath = request.getSession().getServletContext().getRealPath("resources/bupfile");
				new File(savePath + "\\" + brenamefilename).delete();
			}
			return "redirect:/bpostlist.do";
		} else {
			model.addAttribute("message", bpost.getBno() + "번글 삭제 실패");
			return "common/error";
		}
	}

	@RequestMapping("buppage.do")
	public String updatebpage(Bpost bpost, Model model) {
		Bpost selectbpost = bpostService.selectBpost(bpost.getBno());
		model.addAttribute("bpost", selectbpost);
		return "kyukyu/bpostUpdatepage";
	}

	@RequestMapping(value = "updatebpost.do")
	public String updatebpost(Bpost bpost, HttpServletRequest request,
			@RequestParam(name = "upfile", required = false) MultipartFile file,
			@RequestParam(name = "deleteFlag", required = false) String deleteFlag) {

		String savePath = request.getSession().getServletContext().getRealPath("resources/bupfile");
		String returnView = null;

		logger.info("file : " + file.getOriginalFilename().length());
		logger.info("file : " + file);
		logger.info("deleteFlag : " + deleteFlag);
		logger.info("bpost update going~");
		logger.info("boriginfile : " + bpost.getBoriginfile());
		logger.info("bpost : " + bpost);

		if (bpost.getBoriginfile() != null) {
			if (deleteFlag != null && deleteFlag.equals("yes")) {
				if (new File(savePath + "\\" + bpost.getBrenamefile()).delete()) {

					logger.info("파일 삭제 ");
					bpost.setBoriginfile(null);
					bpost.setBrenamefile(null);

				} else {
					logger.info("파일 삭제 안됨 originfile : " + bpost.getBoriginfile());
				}
			}

		}

		if (file != null && file.getOriginalFilename().length() > 0) {
			if (file != null) {
				if (!file.getOriginalFilename().equals(bpost.getBoriginfile())
						&& (new File(savePath + "\\" + bpost.getBrenamefile())
								.length() != new File(savePath + "\\" + file.getOriginalFilename()).length())) {

					if ((new File(savePath + "\\" + bpost.getBrenamefile()).delete())) {
						logger.info("파일 삭제 성공 !"); // 이름도 다르고 파일길이도 다를때 원래 파일 삭제
						bpost.setBoriginfile(null);
						bpost.setBrenamefile(null);

					} else {
						logger.info("파일 삭제 실패 131!");
					}
					bpost.setBoriginfile(file.getOriginalFilename());

					// 바꿀 파일명에 대한 포맷문자열 만들기 : 년월일시분초 형식으로 지정
					SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss"); // java.text.SimpleDateFormat

					// 바꿀파일명 만들기 // 현재 시스템 시간의 long형 정수
					// 업로드된 파일의 확장자를 추출해서, 새 파일명 뒤에 붙여줌
					String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())); // 여기까지 파일명
					renameFileName += "."
							+ file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".") + 1); // 원래
																														// 파일명
																														// .
																														// 뒤에서부터
																														// 추출해라

					bpost.setBrenamefile(renameFileName);

					// 업로드된 파일을 지정한 폴더로 옮기는 작업
					try {
						file.transferTo(new File(savePath + "\\" + renameFileName));
					} catch (IllegalStateException | IOException e) {
						e.printStackTrace();
					}

				} else {

					bpost.setBoriginfile(file.getOriginalFilename());

					logger.info("1");
					// 바꿀 파일명에 대한 포맷문자열 만들기 : 년월일시분초 형식으로 지정
					SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss"); // java.text.SimpleDateFormat

					// 바꿀파일명 만들기 // 현재 시스템 시간의 long형 정수
					// 업로드된 파일의 확장자를 추출해서, 새 파일명 뒤에 붙여줌
					String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())); // 여기까지 파일명
					renameFileName += "."
							+ file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".") + 1); // 원래
																														// 파일명
																														// .
																														// 뒤에서부터
																														// 추출해라

					bpost.setBrenamefile(renameFileName);

					logger.info("2");
					// 업로드된 파일을 지정한 폴더로 옮기는 작업
					try {
						file.transferTo(new File(savePath + "\\" + renameFileName));
					} catch (IllegalStateException | IOException e) {
						e.printStackTrace();
					}
				}
			}

		}
		if (bpostService.updateBpost(bpost) > 0) {
			logger.info("3");
			return "redirect:bpostlist.do";
		} else {
			return "common/error";
		}

	}

}
