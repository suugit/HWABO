package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;

@WebServlet("/mdel")
public class MemberDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MemberDeleteServlet() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 회원 탈퇴 처리용 컨트롤러 : delete 구문 적용함
		//1.
		//2.
		String userid = request.getParameter("userid");
		
		//3. DML이라서 리턴값 정수
		int result = new MemberService().deleteMember(userid);
		
		//4. 성공/실패
		if(result > 0) {
			// 탈퇴성공시 로그아웃처리함
			response.sendRedirect("logout");  //"logout" 이라고 쓰면 상대경로 
		}else {
			// 실패시 에러메세지
			RequestDispatcher view = request.getRequestDispatcher("views/common/error.jsp");
			request.setAttribute("message", userid + " 회원님의 탈퇴요청 실패");
			view.forward(request, response); //forward 빼먹으면 view에 안보임. view로 전달하는 역할
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
