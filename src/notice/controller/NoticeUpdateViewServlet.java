package notice.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import notice.model.service.NoticeService;
import notice.model.vo.Notice;

@WebServlet("/npmove")
public class NoticeUpdateViewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public NoticeUpdateViewServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 관리자용 공지사항 수정페이지로 이동처리용 컨트롤러
		int noticeno = Integer.parseInt(request.getParameter("noticeno"));
		
		Notice notice = new NoticeService().selectNotice(noticeno);
		RequestDispatcher view = null;
		if(notice != null) {
			view = request.getRequestDispatcher("views/notice/noticeUpdateView.jsp");
			request.setAttribute("notice", notice);
			view.forward(request, response);
		}else {
			view = request.getRequestDispatcher("views/common/error.jsp");
			request.setAttribute("message", noticeno + " 번에 대한 수정페이지 요청에 실패하였습니다.");
			view.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
