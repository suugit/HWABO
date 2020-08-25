package board.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import board.model.service.BoardService;
import board.model.vo.Board;

/**
 * Servlet implementation class BoardOriginUpdateServlet
 */
@WebServlet("/boriginup")
public class BoardOriginUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BoardOriginUpdateServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 게시글 수정 처리용 게시글 원글 등록 처리용 컨트롤러복붙 수정하는중
		// 첨부파일 있음

		// 1. multipart방식으로 인코딩되어서 전송되었는지 확인함
		RequestDispatcher view = null;
		if (!ServletFileUpload.isMultipartContent(request)) { // multipart 방식으로 전송오지않았다면? 에러페이지
			view = request.getRequestDispatcher("views/common/error.jsp");
			request.setAttribute("message", "form의 enctype='multipart/form-data'  속성 누락됨");
			view.forward(request, response);
		}
		// multipart 받아주는 클래스 필요, 파일저장될 폴더 지정, 프로젝트안에 폴더를 지정하는 방법이 있다.

		// 2. 업로드할 파일의 용량 제한 : 10Mbyte 로 제한한다면?
		int maxSize = 1024 * 1024 * 10;

		// 3. 업로드되는 파일의 저장 폴더를 지정
		String savePath = request.getSession().getServletContext().getRealPath("/resources/bupfiles"); // 맨앞의 /는 절대경로가아닌

		// 4. request를 multipartRequest로 변환해야함
		MultipartRequest mrequest = new MultipartRequest(request, savePath, maxSize, "utf-8",
				new DefaultFileRenamePolicy());

		// 5. 데이터베이스에 기록할 값 꺼내기 : MultipartRequest인 mrequest 에서 꺼내야함
		Board board = new Board();

		board.setBoardTitle(mrequest.getParameter("title"));
		board.setBoardContent(mrequest.getParameter("content"));

		int boardNum = Integer.parseInt(mrequest.getParameter("bnum"));
		board.setBoardNum(boardNum);
		int currentPage = Integer.parseInt(mrequest.getParameter("page"));

		// 이전 등록 파일 삭제 여부 값 추출
		String deleteFlag = mrequest.getParameter("delflag");

		// 이전 등록 파일명 추출
		String originFilePath = mrequest.getParameter("ofile");
		String renameFilePath = mrequest.getParameter("rfile");

		// 새로운 파일명 추출하기 (ofile)
		String originalFileName = mrequest.getFilesystemName("upfile"); // getParameter 하면 파일자체가 추출됨

		// 원래 파일과 새로 업로드 된 파일의 이름이 같고,
		// 파일 용량도 동일하면 원래 이름 그대로 객체에 ㅣ록ㄱ도미
		// 업로드 된 파일의 File 객체 만들기
		File newOriginFile = new File(savePath + "/" + originalFileName);

		// 이전 저장된 파일의 File 객체 만들기
		File originFile = new File(savePath + "/" + renameFilePath);


		// 첨부파일이 없었는데 추가 된 경우와
		// 첨부파일이 있는데 변경된 경우 둘 다 해당 됨
		if (originalFileName != null) {


			board.setBoardOriginalFileName(originalFileName);
			// 새로운 첨부파일이 있을 때만 이름 바꾸기실행함

			// 바꿀 파일명에 대한 포맷문자열 만들기 : 년월일시분초 형식으로 지정
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss"); // java.text.SimpleDateFormat

			// 바꿀파일명 만들기 // 현재 시스템 시간의 long형 정수
			// 업로드된 파일의 확장자를 추출해서, 새 파일명 뒤에 붙여줌
			String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())); // 여기까지 파일명
			renameFileName += "." + originalFileName.substring(originalFileName.lastIndexOf(".") + 1); // 원래 파일명 . 뒤에서부터
																										// 추출해라
			// 원본 파일명 rename 처리를 위해서 File 객체 만들기
			File renameFile = new File(savePath + "\\" + renameFileName);

			// 이름 바꾸기
			if (!newOriginFile.renameTo(renameFile)) { // renameTo는 return타입이 boolean. 실행하다가 실패하는 경우가 있다. 그래서 if 쓴다
				// renameTo() 메소드가 실패(false)한 경우에는 직접 바꿔야함
				// 원본파일의 내용읽어서, 복사복에 기록하고, 완료되면 원본파일 삭제
				// 파일이 글, 이미지, 동영상 이니까 outputStream 사용해야한다. 다읽 으면 -1이 리턴
				FileInputStream fin = new FileInputStream(newOriginFile); // 원본파일 읽기
				FileOutputStream fout = new FileOutputStream(renameFile); // 이 파일에 쓸거임
				int data = -1;
				byte[] buffer = new byte[1024]; // read() 에서 한방에 배열로 읽어버리기 위해 선언한 변수
				while ((data = fin.read(buffer, 0, buffer.length)) != -1) { // 버퍼를 0부터 읽어라 버퍼의 길이만큼
					fout.write(buffer, 0, buffer.length);
				}
				fin.close();
				fout.close();
				newOriginFile.delete(); // 새로 업로드, 원본파일 삭제
			} // 직접이름 바꾸기
			board.setBoardRenameFileName(renameFileName); // 노티스 객체에 바뀐 파일명을 등록하려고

			// 이전 첨부파일이 있었다면
			if (originFilePath != null) {
				originFile.delete();
			}
			
		} else if (originFilePath != null && deleteFlag != null && deleteFlag.equals("yes")) { // 삭제선택 if (originalFileName != null의 if else문임
			// 원래 첨부파일이 있었는데 파이 ㄹ삭제된 경우
			board.setBoardOriginalFileName(null);
			board.setBoardRenameFileName(null);
			// 폴더에 저장된 파일도 삭제함
			originFile.delete();
		} else if (originFilePath != null && (originalFileName == null
				|| originFilePath.equals(originalFileName) && newOriginFile.length() == originFile.length())) {
			// 원래 첨부파일이 있었는데 변경되지 않은경우 -> 원래 그거 다시 보내
			board.setBoardOriginalFileName(originFilePath);
			board.setBoardContent(renameFilePath);
		}
		// 6. 서비스 객체 생성하고 메소드로 notice 객체 전달하고 처리된 결과받기.
		int result = new BoardService().updateOrigin(board);

		// 7. 받은 결과로 성공, 실패 페이지 내보내기
		if (result > 0) {
			response.sendRedirect("blist?page=" + currentPage);
		} else {
			view = request.getRequestDispatcher("views/common/error.jsp");
			request.setAttribute("message", boardNum + "새 게시글 등록 처리 실패");
			view.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
