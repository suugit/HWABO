package com.beet.HWABO.abc.controller;

import java.util.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.beet.HWABO.spost.model.service.SpostService;
import com.beet.HWABO.spost.model.vo.Spost;


@Controller
public class abcController {
	
	@Autowired
	private SpostService spostService;
	
	private static final Logger logger = LoggerFactory.getLogger(abcController.class);

//============================================================	
	@RequestMapping("mybpost.do")
	public String TESTtables() {
		
		return "abc/myBPOST";
	}
	
	@RequestMapping("myhwabo.do")
	public String myHWABO() {
		
		return "abc/myhwabo";
	}
	
	@RequestMapping("yourhwabo.do")
	public String yourHWABO() {
		
		return "abc/yourhwabo";
	}
	
	@RequestMapping("myhwabotest.do")
	public String myHWABOtest() {
		
		return "abc/myhwabotest";
	}
	
	@RequestMapping("scheduleboard.do")
	public String redtest() {
		
		return "abc/scheduleboard";
	}
	
//---------- Spost ----------------------------------------------------------------------------------------------------------------		
	
	//일정 등록
	@RequestMapping("sinsert.do")
	public ModelAndView insertSpost(Spost spost, ModelAndView mav, @RequestParam("beforesstartday") String start,@RequestParam("beforesendday") String end ) {
		logger.info(start.toString());
		logger.info(end.toString());
		
		logger.info(spost.toString());
		String Sstart = start.replace("T", " ");
		String Send = end.replace("T", " ");
		
		logger.info(Sstart);
		logger.info(Send);
		
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");

		try {
			java.util.Date startdate = transFormat.parse(Sstart);
			java.util.Date enddate = transFormat.parse(Send);
			
			spost.setSstartday(startdate);
			spost.setSendday(enddate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		logger.info(spost.toString());
		if(spostService.insertSpost(spost) > 0) {
			mav.addObject("spost", spost);
			mav.setViewName("abc/insertTest");
		}else {
			mav.addObject("spost", spost);
			mav.setViewName("abc/insertTest");
		}
		return mav;
	}
	
	//일정 삭제
	@RequestMapping("sdelete.do")
	public String deleteSpost() {
		return "";
	}
	
	//일정 수정
	@RequestMapping("supdate.do")
	public String updateSpost() {
		return "";
	}
	
	//일정 좋아요 증가
	@RequestMapping("slove.do")
	public String updateSpostLove() {
		return "";
	}
	
	//일정 좋아요 취소
	@RequestMapping("sunlove.do")
	public String updateSpostUnlove() {
		return "";
	}
	
	//일정 알림 조회해서 알림보내기용
	@RequestMapping("salarm.do")
	public String selectSpostAlarm() {
		return "";
	}
	
	
	
//---------- Post ----------------------------------------------------------------------------------------------------------------	
	
	//나와 관련된 게시글 목록 조회용
	@RequestMapping("mypost.do")
	public String selectMyPost() {
		return "";
	}
	
	////나와 관련된 게시글 목록중에서 원하는 게시글 종류만 조회 
	//... ? 이건 뷰에서 에이작스로 조절이 가능할 것 같지만 우선 넣어두기
	@RequestMapping("selectpost.do")
	public String selecPost() {
		return "";
	}
	
	//게시글 클릭시 상세보기 조회용
	@RequestMapping("onepost.do")
	public String selectOneView() {
		return "";
	}
	
	//게시글에 댓글 등록
	@RequestMapping("inreply.do")
	public String insertPostReply() {
		return "";
	}
	
	//게시글에 댓글 수정
	@RequestMapping("upreply.do")
	public String updatePostReply() {
		return "";
	}
	
	//게시글에 댓글 삭제
	@RequestMapping("dereply.do")
	public String deletePostReply() {
		return "";
	}
	

	
//---------- Member ----------------------------------------------------------------------------------------------------------------	
	
	//팀 전체 목록 조회용 (사이드메뉴에서 다른 팀원 화보로 연결용)
	@RequestMapping("tselect.do")
	public String selectMyTeam() {
		return "";
	}
	
	//화보페이지에 띄울 정보 조회용
	@RequestMapping("selinfo.do")
	public String selectInfo() {
		return "";
	}
	
	
}
