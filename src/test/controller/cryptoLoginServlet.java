package test.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.vo.Member;
import test.model.service.CryptoService;

/**
 * Servlet implementation class cryptoLoginServlet
 */
@WebServlet("/login.cp")
public class cryptoLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public cryptoLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//암호화된 패스워드로 로그인 처리용 컨트롤러 
		System.out.println("LoginServlet doGet()_ run...");
		// 로그인 처리용 컨트롤러
		// 클라이언트로부터 로그인 요청을 받았음. 아이디와 암호를 전송을 받은 상태임
		
		// 1. 전송 온 값에 한글이 있다면, 문자인코딩 처리한다. (거의 없다.)
		// 2. 전송 온 값 꺼내서 변수 또는 객체에 기록저장
			//전송 온 값들은 request에 기록된 상태로 전송
			// : getParameter() 로 꺼낸다. 리턴타입은 String. ()안에는 name에 설정한 이름.
		
		String userid = request.getParameter("userid");
		String userpwd = request.getParameter("userpwd");
		
		System.out.println(userid + ", " + userpwd);
		// 3. Model 객체 선언 및 생성, 
		CryptoService mservice = new CryptoService();
		// 로그인 처리용 메소드로 값 전달하고 처리 결과 받기
		Member loginMember = mservice.loginCheck(userid, userpwd);
		//부모타입으로 멤버를 받는다 = > 인덱스에서 로그인 되지 않는 거 해결 ! 
		
		// 4. 받은 결과로 성공이면 성공페이지, 실패하면 실패페이지를 내보냄
		if (loginMember != null) {
			// 로그인 상태를 확인하기 위한 세션객체 만들기 작업
			HttpSession session = request.getSession();
			// System.out.println("생성된 세션객체의 id : " + session.getId()); // AC48D068F4D3BCF8A7CD08478A8C6C76
				// 동일한 브라우저에서는 같은 세션아이디 가짐. 
			
			
			//지정한 시간(초) 동안 서비스 요청이 없으면 자동 로그아웃(세션객체를 없엠) 처리 설정할 수 있음
			//session.setMaxInactiveInterval(10 * 60); //10분
			
			// 로그인한 동안(세션이 존재하는 동안) 여러 페이지와 서블릿들이 공유하고자 원하는 정보 저장함
				// 선택사항. 꼭 안해도 된다. map이니까 몇개의 정보고 저장가능.
			session.setAttribute("loginMember", loginMember); // 
			response.sendRedirect("index.jsp");
		}else {
			// 로그인 요청한 클라이언트 부라우저로 에러페이지 내보냄 . 에러 메세지까지 내보내고 싶을 때는 사용 X
			//response.sendRedirect("views/common/error.jsp");
			
			//에러페이지로 오류 메세지도 같이 보내려면 RequestDispatcher 사용. 메세지는 request에 담아서 보낸다
			// 절대경로 사용 X . 상대경로만 사용 O ( 서블릿은 루트에서 시작한다고 생각하면 된다.)	
			RequestDispatcher view = request.getRequestDispatcher("views/common/error.jsp");
			request.setAttribute("message", "로그인 실패 또는 로그인 제한 상태입니다");
			view.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
