package member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LogoutServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 로그아웃 처리용 컨트롤러 (세션 없애기)
		// 세션 객체 존재 확인
		HttpSession session = request.getSession(false); // 여기서 세션 new하면 안됨. 없으면 null, 있으면 가져와라
		if (session != null) { // 로그인한 상태라면 = 세션객체가 있다면
			//세션 객체를 없애자
			session.invalidate();
			// 내보낼 페이지 
			response.sendRedirect("index.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
