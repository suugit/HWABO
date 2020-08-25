package board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;

/**
 * Servlet implementation class BoardDeleteServlet
 */
@WebServlet("/bdelete")
public class BoardDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//게시글 삭제 처리용 컨트롤러
		//글삭제하면 저장된 파일도 삭제 처리함 
		int boardNum = Integer.parseInt(request.getParameter("bnum"));
		int boardLevel = Integer.parseInt(request.getParameter("level"));
		
		if(new BoardService().deleteBoard(boardNum, boardLevel) > 0) {
			//게시글 삭제시 저장된 파일도 삭제처리
			String renameFileName = request.getParameter("rfile");
			if(renameFileName != null) {
				String savePath = request.getSession().getServletContext().getRealPath("/resources/bupfiles");
				new File(savePath + "\\" + renameFileName).delete();
			}
			response.sendRedirect("/lets/blist?page=1");
			
		}else {
			RequestDispatcher view =request.getRequestDispatcher("views/common/error.jsp");
			request.setAttribute("message", boardNum + "번 글 삭제 실패");
			view.forward(request, response);
			//한번만 실행하고 끝낼거면 이렇게 써도 됨, 그냥delete 보드 실행하고 끝이니까 위에서 선언 후 사용할 필요없다 
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
