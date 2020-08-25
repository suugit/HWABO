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

@WebServlet("/minsert")
public class EnrollServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public EnrollServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	// 회원가입 처리용 컨트롤러
		
		// 1. 전송 온 값에 한글이 있다면 인코딩 처리함(홈태그의 값 = request에 담김)
		request.setCharacterEncoding("utf-8"); // 보낸 페이지의 문자셋 기록
		
		// 2. 전송 온 값 꺼내서, 변수 또는 객체에 기록 저장처리함
		Member member = new Member();
		
		member.setUsername(request.getParameter("username")); // input tag에 써놓은 name 써야함.
		member.setUserid(request.getParameter("userid"));
		member.setUserpwd(request.getParameter("userpwd"));
		member.setAge(Integer.parseInt(request.getParameter("age")));
		member.setGender(request.getParameter("gender"));
		member.setPhone(request.getParameter("phone"));
		member.setEmail(request.getParameter("email"));
		member.setEtc(request.getParameter("etc"));
		member.setHobby(String.join(",", request.getParameterValues("hobby"))); // 아래꺼 한줄로 줄인 것.
		
		/*
		 * // 같은이름으로 여러개의 값이 전송 온 경우 (hobby) 배열로 추출이 된다. 
		 * // hobby=reading&hobby=climb
		 * String[] hobbies = request.getParameterValues("hobby");
		 * for(String h : hobbies) { System.out.println(h); } 
		 * // , 를 구분자로 문자배열을 하나의 문자열로 합치기 String
		 * joinHobby = String.join(",", hobbies); 
		 * System.out.println(joinHobby);
		 * member.setHobby(joinHobby);
		 */
		
		
		// 3. 서비스 객체 생성하고, 서비스 메소드를 이용해서 객체 전달하고 
		// 처리 결과 받기
		int result = new MemberService().insertMember(member);
		
		// 4. 받은 결과에 따라 성공/실패 뷰 선택해서 내보내기
		if(result > 0) {
			// 로그인페이지로 보내자 !
			response.sendRedirect("/lets/views/member/loginPage.html");
		}else{
			//response.sendRedirect("/lets/views/common/error.jsp");
			RequestDispatcher view = request.getRequestDispatcher("views/common/error.jsp");
			request.setAttribute("message", "회원 가입 실패 !");
			view.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
