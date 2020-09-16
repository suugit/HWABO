package com.beet.HWABO.abc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Locale;

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

import com.beet.HWABO.abc.model.service.LoveService;
import com.beet.HWABO.abc.model.service.PostreplyService;
import com.beet.HWABO.abc.model.vo.Love;
import com.beet.HWABO.spost.model.service.SpostService;
import com.beet.HWABO.spost.model.vo.Post;
import com.beet.HWABO.spost.model.vo.Spost;


@Controller
public class abcController {
	
	@Autowired
	private SpostService spostService;

	@Autowired
	private LoveService loveService;
	
	@Autowired
	private PostreplyService postreplyService;
	
	private static final Logger logger = LoggerFactory.getLogger(abcController.class);

//========== 페이지 이동 ==================================================	
	@RequestMapping("posttest.do")
	public void selectPostTest(){
		ArrayList<Post> list = spostService.selectPostTest();
	}
	
	//알림 테스트
	@RequestMapping("alarm.do")
	public String TESTalarm() {	
		
		return "abc/alarmtest";
	}
	
	//입력, 출력, 수정 합친것
	@RequestMapping("tables.do")
	public String moveTables() {	
		
		return "abc/tables";
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
	public String moveSelectOneSpostPage(Model m, String sno) {
		//수정하기 버튼 클릭시 sno 가지고 온다. 쿼리스트링이랑 매개변수에 추가해야한다.
		sno  = "s2";
		Spost spost = spostService.selectOneSpost(sno);
		String startday = spost.getSstartday().toString();
		String endday = spost.getSendday().toString();
		
		SimpleDateFormat recvSimpleFormat = new SimpleDateFormat("E MMM dd HH:mm:ss z yyyy", Locale.ENGLISH);
		
		SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
		SimpleDateFormat format2 = new SimpleDateFormat("HH:mm", Locale.ENGLISH);
		
		try {
			java.util.Date startdate = recvSimpleFormat.parse(startday);
			java.util.Date enddate = recvSimpleFormat.parse(endday);
			
			startday = format1.format(startdate) + "T" + format2.format(startdate);
			endday = format1.format(enddate) + "T" + format2.format(enddate);
		
			
		} catch (ParseException e) {
			e.printStackTrace();
		}

		m.addAttribute("spost", spost);
		m.addAttribute("startday", startday);
		m.addAttribute("endday", endday);
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
	public String updateSpost(Spost spost, Model m, HttpServletResponse response, @RequestParam("beforesstartday") String start,@RequestParam("beforesendday") String end) throws IOException, UnsupportedEncodingException {
		// 업데이트하면 에이작스로 이것만 보내서 표시한다.
		logger.info("supdate.do 들어옴");
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
		 
		spost.setStitle(spost.getStitle().replace(" ","&nbsp;"));
		spost.setScontent(spost.getScontent().replace("\r\n","<br>"));;
		spost.setScontent(spost.getScontent().replace(" ","&nbsp;"));;
		
		if(spostService.updateSpost(spost) > 0) {
			return "redirect:/selectonespost.do?sno="+spost.getSno();

			//좋아요랑 댓글 셀렉트 다시해오기 ?

		}else {
		
			//실패해도 spost의 값 가지고 가고, alert창 띄우기
			return "redirect:/selectonespost.do?sno="+spost.getSno();
		}

	}
	
	/*
	 * //일정 1개 조회
	 * 
	 * @RequestMapping("selectOneSpost.do") public String selectOneSpost() { return
	 * ""; }
	 */
	
	//일정 삭제
	@RequestMapping("sdelete.do")
	public String deleteSpost(HttpServletResponse response, String sno) throws IOException {
		PrintWriter out = response.getWriter();

		if(spostService.deleteSpost(sno) > 0) {
			out.println("<script>alert('계정이 등록 되었습니다');</script>");
			 
			out.flush();
			return "redirect:/myhwabo.do";
		}else {
			out.println("<script>alert('계정이 등록 되었습니다');</script>");
			 
			out.flush();
			return "redirect:/myhwabo.do";
		}
	}
	
	//좋아요 카운트 조회
	@RequestMapping("slovecount.do")
	public String selectCountLove(String no, Model m) {
		
		return "";
	}
	
	//좋아요 눌렀던 글인지 조회
	@RequestMapping("slovecheck.do")
	public String selectDuplicationChk(Love love, Model m) {
		
		return "";
	}
	

	//일정 좋아요 증가
	@RequestMapping("slove.do")
	public String insertSpostLove(Love love, Model m) {
		String result = "";
		if(loveService.selectDuplicationChk(love) > 0) {
			m.addAttribute("dupli");// 이미 좋아요 누른 글일 때
		}else {
			if(loveService.insertSpostLove(love) > 0) {
				m.addAttribute("success");
				result= "redirect:/myhwabo.do";
			}else {
				m.addAttribute("fail");
				result= "redirect:/myhwabo.do";
			}
		}
		return "redirect:/myhwabo.do";
	}
	
	//일정 좋아요 취소
	@RequestMapping("sunlove.do")
	public String deleteSpostLove() {
		return "";
	}
	
	//게시글에 댓글 조회
	@RequestMapping("ssereply.do")
	public String selectPostReply() {
		
		return "";
	}
	
	//게시글에 댓글 등록
	@RequestMapping("sinreply.do")
	public String insertPostReply() {
		
		return "";
	}
	
	//게시글에 댓글 수정
	@RequestMapping("supreply.do")
	public String updatePostReply() {
		return "";
	}
	
	//게시글에 댓글 삭제
	@RequestMapping("sdereply.do")
	public String deletePostReply() {
		return "";
	}
	
//---------- Post ----------------------------------------------------------------------------------------------------------------	
	//나의 업무페이지
	@RequestMapping("mybpost.do")
	public String TESTtables() {	
		//sesison 에서 작성자 아이디 받아오기.
		//작성자인 글, 댓글 단 글, 
		return "abc/myBpost";
	}
	
	//나의 화보. 나와 관련된 게시글 목록 조회용
	@RequestMapping("myhwabo.do")
	public String myHWABO() {	
		// bpost : 작성자, 담당자
		// cpost : 작성자
		// spost : 작성자
		// vpost : 작성자
		//dopost : 작성자
		//댓글부터 좋아요까지
		spostService.selectMyPost();
		
		return "abc/myhwabo";
	}
	
	//팀원의 화보
	@RequestMapping("yourhwabo.do")
	public String yourHWABO() {
		// 팀원과 관련된 게시글을 전부 긁어와야함.
		// 팀원이 작성한 글, 내가 담당자인 글, 내가 언급된 글, 댓글단 글
		return "abc/yourhwabo";
	}
	
	
	////나와 관련된 게시글 목록중에서 원하는 게시글 종류만 조회 
	//... ? 이건 뷰에서 조절이 가능할 것 같지만 우선 넣어두기
	@RequestMapping("selectpost.do")
	public String selecPost() {
		return "";
	}
	
	//게시글 클릭시 상세보기 조회용
	@RequestMapping("onepost.do")
	public String selectOneView() {
		//이건 no 앞에 글자 하나 따서 각자 만들어둔 selectOne 메소드로 보내주어야하나 ?
		
		
		return "";
	}
	
	
	
//---------- Member ----------------------------------------------------------------------------------------------------------------	
	
	//팀 전체 목록 조회용 (사이드메뉴에서 다른 팀원 화보로 연결용)
	@RequestMapping("tselect.do")
	public String selectMyTeam() {
		return "";
	}

	
	
}
