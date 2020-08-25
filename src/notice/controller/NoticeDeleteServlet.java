package notice.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import notice.model.service.NoticeService;

@WebServlet("/ndel")
public class NoticeDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public NoticeDeleteServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//공지글 삭제처리용 컨트롤러
		int noticeno = Integer.parseInt(request.getParameter("bnum"));
		
		int result = new NoticeService().deleteNotice(noticeno);
		
		if(result > 0) {
			//게시글 삭제시 저장된 파일도 삭제처리
			String renameFileName = request.getParameter("rfile");
			if(renameFileName != null) {
				String savePath = request.getSession().getServletContext().getRealPath("/resources/nupfiles");
				new File(savePath + "\\" + renameFileName).delete();
			}
			response.sendRedirect("/lets/nlist?page=1");
			
		}else {
			RequestDispatcher view =request.getRequestDispatcher("views/common/error.jsp");
			request.setAttribute("message", noticeno + "번 글 삭제 실패");
			view.forward(request, response);
			//한번만 실행하고 끝낼거면 이렇게 써도 됨, 그냥delete 보드 실행하고 끝이니까 위에서 선언 후 사용할 필요없다 
		}
		
		
		int noticeno = Integer.parseInt(request.getParameter("noticeno"));
		
		
		if(result > 0) {// 성공은 목록보기. 서블릿에서 서블릿요청 > sendRedirect
			response.sendRedirect("nlist.ad");
		}else {
			RequestDispatcher view = request.getRequestDispatcher("views/common/error.jsp");
			request.setAttribute("message", noticeno + " 번 글 삭제 실패");
			view.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
