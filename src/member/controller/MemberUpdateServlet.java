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

@WebServlet("/mupdate")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public MemberUpdateServlet() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 회원정보 수정처리용 컨트롤러
		
		//1.
		request.setCharacterEncoding("utf-8");
		//2. 
		Member member = new Member();
		
		member.setUserid(request.getParameter("userid"));
		member.setUserpwd(request.getParameter("userpwd"));
		member.setAge(Integer.parseInt(request.getParameter("age")));
		member.setPhone(request.getParameter("phone"));
		member.setEmail(request.getParameter("email"));
		member.setEtc(request.getParameter("etc"));
		member.setHobby(String.join(",", request.getParameterValues("hobby")));
		
		//3.
		int result = new MemberService().updateMember(member);
		
		//4.
		if(result > 0) {
			// /myinfo 서블릿을 실행해서 내 정보 보기 페이지를 내보냄 reselect해야함
			response.sendRedirect("/lets/myinfo?userid=" + member.getUserid());
		}else {
			RequestDispatcher view = request.getRequestDispatcher("views/common/error.jsp");
			request.setAttribute("message", member.getUserid()+ " 회원의 정보 수정 실패");
			view.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
