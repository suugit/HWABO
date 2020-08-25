package member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;

/**
 * Servlet implementation class MemberIdCheck
 */
@WebServlet("/idchk")
public class MemberIdCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public MemberIdCheck() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//회원가입시 아이디 중복 체크 처리용 컨트롤러 
		String userid = request.getParameter("userid");
		
		int idcount = new MemberService().selectCheckId(userid);
		
		String returnValue = null; 
		if(idcount == 0) {
			returnValue = "ok"; //아이디 값을 보내서 ? 0 이오면 그런 아이디 없다 = 사용가능
		}else {
			returnValue = "dup"; //어차피 노상관 ok인지만 볼꺼니까, 아무튼 내보내는 값 설정 
		}
		
		//출력스트림만들고 값 내보내기 요청자의 정보를 가진 response 이용
		//response를 이용해 출력스트림 만들고 값 내보내기
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.append(returnValue);
		out.flush();
		out.close(); 
		//ajax 통신 완료 
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
