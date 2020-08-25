package member.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.xml.internal.bind.v2.runtime.unmarshaller.XsiNilLoader.Array;

import member.model.service.MemberService;
import member.model.vo.Member;


@WebServlet("/loginOK")
public class LoginAccessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public LoginAccessServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//로그인 접속 제한/해제 처리용 컨트롤러
		//1.
		//2.
		String userid = request.getParameter("userid");
		String ok = request.getParameter("ok");
		String loginok = null;
		//3.
		if(ok.equals("true")) {
			loginok = "Y";
		}else {
			loginok = "N";
		}
		//4.
		MemberService mservice = new MemberService();
		int result = mservice.updateLoginOK(userid, loginok);
		ArrayList<Member> list = null;
		if(result > 0) { //login제한 수정이 성공했을 때
			list = mservice.selectList(); //전체목록 조회함
		}
		
		RequestDispatcher view = null;
		if(result > 0 && list.size() > 0) {
			view = request.getRequestDispatcher("views/member/memberListView.jsp");
			request.setAttribute("list", list);
			view.forward(request, response);			
		}else {
			view = request.getRequestDispatcher("views/common/error.jsp");
			request.setAttribute("message", userid + " 회원의 로그인 제한 처리 실패");
			view.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
