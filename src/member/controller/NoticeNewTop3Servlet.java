package member.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import notice.model.service.NoticeService;
import notice.model.vo.Notice;

/**
 * Servlet implementation class NoticeNewTop3Servlet
 */
@WebServlet("/ntop3")
public class NoticeNewTop3Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NoticeNewTop3Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//ajax 통신으로 최근 공지글 3개 조회 반환 처리용 컨트롤러
		
		ArrayList<Notice> list = new NoticeService().selectNewTop3();
		
		//전송욘 json 객체 만들기
		JSONObject sendJSON = new JSONObject();
		//list 옮겨 담을 json 배열 객체 만들기
		JSONArray jarr = new JSONArray(); 
		
		//list에서 notice 하나씩 꺼내서 jar에 복사 저장하기
		for(Notice notice : list) {
			//notice  저장용 json 객체 만들기
			JSONObject job = new JSONObject(); //??GSON?
			job.put("no", notice.getNoticeNo()); //꺼내서 no라는 이름으러로 넣어줌
			job.put("title", URLEncoder.encode(notice.getNoticeTitle(), "utf-8")); //깨진한글 인코딩
			job.put("date", notice.getNoticeDate().toString()); //tostring
			
			jarr.add(job); //꺼내서 옮겨담기
			
		}
		//전송용 객체에 배열 저장 
		sendJSON.put("list", jarr);
		
		//요청자에게 응답 내보내기
		response.setContentType("application/json; charset=utf-8"); //내보내는 콘텐츠 타입은 이거다
		PrintWriter out = response.getWriter();
		out.write(sendJSON.toJSONString()); //JSON 문자열로 바꿔서 출력
		
		out.flush();
		out.close();
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
