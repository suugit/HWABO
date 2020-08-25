package board.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.service.BoardService;
import board.model.vo.Board;

/**
 * Servlet implementation class BoardListServlet
 */
@WebServlet("/blist")
public class BoardListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//페이지 별로 출력되는 게시글 전체 조회 처리용 컨트롤러(board했으면 페이징처리하기) 
		
		//페이지 기본값 지정 
		//페이지 ㄱ밧이 전송이 오지 않으면 자동 1페이지 뜨도록 기본 값 설정 
		int currentPage = 1;
		
		//- 전송온 페이지 값 추출
		if(request.getParameter("page") != null) {
			currentPage = Integer.parseInt(request.getParameter("page"));
		}
		//한 페이지당 출력할 목록 갯수 지정
		int limit = 10;
		
		BoardService bservice = new BoardService();
		
		//전체 목록 갯수 조회
		int listCount = bservice.getListCount();
		
		
		//현재 페이지에 출력할 게시글 목록 조회
		ArrayList<Board> list = bservice.selectList(currentPage, limit); //이러면 1 하고 10 하고 전달이 간다 selectlist에 
		
		//뷰에 출력될 총 페이지 수 게싼 : 계씨글이 1개이면 1페이지임 (남는 글 수 ㅖ산)
		int maxPage = (int)((double)listCount / limit + 0.9); //한페이지 10개로 해놔서 0.9 혹은 몫, 나누기해서 더하기하는 방법도 있음 
		//다음그룹버튼 누르면 31~40페이지 -> 페이지 그룹을 몇개로 할건지
		//현재 페이지가 속한 그룹의 시작 페이지 수 지정
		//예 : currentPage가 35이면 10개씩 보여줄때 시작페이지는 31이 됨
		int startPage = (((int)((double)currentPage / limit + 0.9)) -1)*limit + 1; //페이지계산
		int endPage = startPage + limit -1; 
		
		//31~40페이지 근데 endpage계산해보면 39인데 40? 토탈이 39인데? => 39까지만 출력해도 노상관
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		//뷰 지정해서 내보내기 
		RequestDispatcher view = null;
		if(list.size() > 0) {
			view = request.getRequestDispatcher("views/board/boardListView.jsp");
			request.setAttribute("list", list);
			request.setAttribute("currentPage", currentPage);
			request.setAttribute("maxPage", maxPage);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			request.setAttribute("listCount", listCount);
			view.forward(request, response); //출력에 필요한 모든 값 view에 다 담아서 forward 한다   
		}else {
			view = request.getRequestDispatcher("views/common/error.jsp");
			request.setAttribute("message", currentPage + "페이지에 대한 목록 조회 실패!");
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
