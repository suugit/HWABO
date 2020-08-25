package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Member;

@WebServlet("/myinfo")
public class MyInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public MyInfoServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 내정보 보기 (MY PAGE) 처리용 컨트롤러
		// 1. 전송 온 값에 한글이 있는지 확인 후 인코딩처리
		// 2. 전송 온 값 변수나 객체에 담기(기록, 저장) 지금은 userid 하나만 받으니까 변수에 담자
		String userid = request.getParameter("userid"); // index.jsp에서 쿼리스트링 앞의 이름 "" 안에 써준 것이다
		// 3. 서비스 객체 생성하고, 메소드 실행 할 때 값 전달하고 결과받기
		Member member = new MemberService().selectMember(userid);
		
		// 4. 받은 결과를 가지고 성공/실패 페이지를 내보냄
			// 뷰페이지에 출력할 정보도 함께 보내려면, RequestDispatcher 사용 forward 사용
		RequestDispatcher view = null;
		if(member != null) { //성공
			view = request.getRequestDispatcher("views/member/myInfoPage.jsp");
			request.setAttribute("member", member);
			view.forward(request, response);
		}else { //실패
			view = request.getRequestDispatcher("views/common/error.jsp"); // 상대경로만 사용
			request.setAttribute("message", "MY PAGE 상세조회 요청 실패");
			view.forward(request, response);
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
