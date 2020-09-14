package com.beet.HWABO.abc.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	
	//나의 업무페이지
	@RequestMapping("mybpost.do")
	public String TESTtables() {	
		
		return "abc/myBPOST";
	}
	
	//나의 화보
	@RequestMapping("myhwabo.do")
	public String myHWABO() {	
		// 사용자와 관련된 게시글을 전부 긁어와야함.
		// 사용자가 작성한 글, 내가 담당자인 글, 내가 언급된 글, 댓글단 글
		
		
		return "abc/myhwabo";
	}
	
	//팀원의 화보
	@RequestMapping("yourhwabo.do")
	public String yourHWABO() {
		// 팀원과 관련된 게시글을 전부 긁어와야함.
		// 팀원이 작성한 글, 내가 담당자인 글, 내가 언급된 글, 댓글단 글
		return "abc/yourhwabo";
	}
	
	@RequestMapping("myhwabotest.do")
	public String myHWABOtest() {
		
		return "abc/myhwabotest";
	}
	
	@RequestMapping("insertspost.do")
	public String moveInsertSpostPage() {
		
		return "abc/insertSpost";
	}
	
	@RequestMapping("updatespost.do")
	public String moveUpdateSpostPage() {
		
		return "abc/updateSpost";
	}
	
	@RequestMapping("selectonespost.do")
	public String moveSelectOneSpostPage(Model m) {
		//수정하기 버튼 클릭시 sno 가지고 온다. 쿼리스트링이랑 매개변수에 추가해야한다.
		String sno  = "s1";
		Spost spost = spostService.selectOneSpost(sno);
		m.addAttribute("spost", spost);
		return "abc/selectSpost";
	}
	
//---------- Spost ----------------------------------------------------------------------------------------------------------------		
	
	//일정 등록
	@RequestMapping("sinsert.do")
	public ModelAndView insertSpost(Spost spost, ModelAndView mav, @RequestParam("beforesstartday") String start,@RequestParam("beforesendday") String end ) {

		String Sstart = start.replace("T", " ");
		String Send = end.replace("T", " ");

		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");

		try {
			java.util.Date startdate = transFormat.parse(Sstart);
			java.util.Date enddate = transFormat.parse(Send);

			spost.setSstartday(startdate);
			spost.setSendday(enddate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		spost.setStitle(spost.getStitle().replace(" ","&nbsp;"));
		spost.setScontent(spost.getScontent().replace("\r\n","<br>"));;
		spost.setScontent(spost.getScontent().replace(" ","&nbsp;"));;
		
		if(spostService.insertSpost(spost) > 0) {
			mav.addObject("spost", spost);
			mav.setViewName("abc/insertTest");
		}else {
			mav.addObject("spost", spost);
			mav.setViewName("abc/insertTest");
		}
		return mav;
	}
	
	//일정 수정
	@RequestMapping(value="supdate.do", method=RequestMethod.POST)
	public String updateSpost(Spost spost, Model m, HttpServletResponse response, @RequestParam("beforesstartday") String start,@RequestParam("beforesendday") String end) throws UnsupportedEncodingException {
		// 업데이트하면 에이작스로 이것만 보내서 표시한다.
		response.setContentType("application/json;charset=utf-8"); //어플리케이션이 나갈건데  json이라는 의미
		  
		JSONObject job = new JSONObject();
		
		// where sno = #{sno}로 처리
		// 제목, 시작날짜, 끝날짜, 장소, 알람, 컨텐츠, 공개여부 변경
		String Sstart = start.replace("T", " ");
		String Send = end.replace("T", " ");

		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");

		try {
			java.util.Date startdate = transFormat.parse(Sstart);
			java.util.Date enddate = transFormat.parse(Send);

			spost.setSstartday(startdate);
			spost.setSendday(enddate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		Spost s = spostService.selectOneSpost(spost.getSno());
		
		if(spostService.updateSpost(spost) > 0) {
			//jsp에서 result 값으로 성공여부 구분하기
			job.put("result", "y");
			job.put("sno", s.getSno());
			job.put("stitle", s.getStitle());
			
			//job에 모든 컬럼 put 하기 !
			//좋아요랑 댓글 셀렉트 다시해오기 ?
			
		
			
		}else {
			//jsp에서 result 값으로 성공여부 구분하기
			//실패해도 spost의 값 가지고 가고, alert창 띄우기
			
			job.put("result", "n");
			job.put("sno", spost.getSno());
		}
		
		
		 return job.toJSONString(); //뷰 리졸버로 리턴함
	}
	
	/*
	 * //일정 1개 조회
	 * 
	 * @RequestMapping("selectOneSpost.do") public String selectOneSpost() { return
	 * ""; }
	 */
	
	//일정 삭제
	@RequestMapping("sdelete.do")
	public String deleteSpost() {
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
