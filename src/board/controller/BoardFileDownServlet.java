package board.controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BoardFileDownServlet
 */
@WebServlet("/bfdown")
public class BoardFileDownServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardFileDownServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//게시글 파일 다운로드 처리용 컨트롤러
		
		// WAS(Web Application Server : 웹 어플리케이션 서버) 
		// 웹 어플리케이션을 구동하는 서버엔진. main이 없어서 스스로 실행할 수 없음 > 이것을 실행 시켜주는 것이 WAS.
		// 여러 종류 있지만 우리가 사용하는 것은 톰캣
		
		// 톰캣에서 구동중인 프로젝트 내에 있는 폴더의 경로 정보를 찾아옴
		String savePath = request.getSession().getServletContext().getRealPath("/resources/bupfiles");
		//파일명에 한글이 포함되어있을 경우 인코딩 처리함
		request.setCharacterEncoding("utf-8");
		
		String originalFileName = request.getParameter("ofile");
		String renameFileName = request.getParameter("rfile");
		
		//저장폴더에서  변경된 파일에 대한 읽기용 스트림 생성 
		// (근데 왜 서블릿에서는 트라이캐치 안하지 ?) doGet에서 throws해서 서버로 다 던짐
		File readFile = new File(savePath + "\\" + renameFileName);  //java.io.File
		BufferedInputStream bin = new BufferedInputStream(new FileInputStream(readFile));
		
		//파일 읽어서 클라이언트한테 내보낼 파일 출력 스트림 객체 생성
		ServletOutputStream downOut = response.getOutputStream();
		
		//파일 다운을 위한 response 설정 처리 (제일 중요)
		response.setContentType("text/plain; charset=utf-8");  // 중간에 ; 세미콜론 꼭 쓰기! 
		//한글 파일명을 다운되는 컴퓨터의 os 문자셋에 맞추기
		response.addHeader("Content-Disposition", "attachment; filename=\"" + new String(originalFileName.getBytes("utf-8"), "ISO-8859-1")+"\""); // 안의 값은 정해져있다 마음대로 쓰면 안된다.
		response.setContentLength((int)readFile.length());
		
		//파일 읽어서 내보내기(간단) - 끗 -
		int data = -1;
		
		while((data = bin.read()) != -1) {
			downOut.write(data);
			downOut.flush();
		}
		downOut.close();
		bin.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
