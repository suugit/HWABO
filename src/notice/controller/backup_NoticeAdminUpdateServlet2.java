//package notice.controller;
//
//import java.io.File;
//import java.io.FileInputStream;
//import java.io.FileOutputStream;
//import java.io.IOException;
//import java.text.SimpleDateFormat;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
//
//import com.oreilly.servlet.MultipartRequest;
//import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
//
//import notice.model.service.NoticeService;
//import notice.model.vo.Notice;
//
//@WebServlet("/nupdate.ad")
//public class NoticeAdminUpdateServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//
//	public NoticeAdminUpdateServlet() {
//		super();
//	}
//
//	protected void doGet(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		// 관리자용 공지사항 수정 처리용 컨트롤러
//		RequestDispatcher view = null;
//		if (!ServletFileUpload.isMultipartContent(request)) { // multipart 방식으로 전송오지않았다면? 에러페이지
//			view = request.getRequestDispatcher("views/common/error.jsp");
//			request.setAttribute("message", "form의 enctype='multipart/form-data'  속성 누락됨");
//			view.forward(request, response);
//		}
//		// multipart 받아주는 클래스 필요, 파일저장될 폴더 지정, 프로젝트안에 폴더를 지정하는 방법이 있다.
//
//		// 2. 업로드할 파일의 용량 제한 : 10Mbyte 로 제한한다면?
//		int maxSize = 1024 * 1024 * 10;
//
//		// 3. 업로드되는 파일의 저장 폴더를 지정
//		String savePath = request.getSession().getServletContext().getRealPath("/resources/nupfiles"); // 맨앞의 /는 절대경로가아닌
//																										// 루트밑에 라는 의미
//		// 톰캣이 구동하는 현재 어플리케이션의 루트 정보를 가져와라.
//		// 서버설정에서 serve modules without publishing 반드시 체크. 이거 안하면 원하는 위치에 파일 저장 안됨.
//
//		// 4. request를 multipartRequest로 변환해야함
//		// 이 작업을 할 클래스는 자바 ee에서 제공안해줌.
//		// cos.jar 가 제공하는 클래스를 사용함
//		// 전송온 파일은 자동 지정 폴더에 저장됨
//		MultipartRequest mrequest = new MultipartRequest(request, savePath, maxSize, "utf-8",
//				new DefaultFileRenamePolicy());
//		// 5. 데이터베이스에 기록할 값 꺼내기 : MultipartRequest인 mrequest 에서 꺼내야함
//		Notice notice = new Notice();
//
//		notice.setNoticeNo(Integer.parseInt(mrequest.getParameter("no")));
//		notice.setNoticeTitle(mrequest.getParameter("title"));
//		notice.setNoticeWriter(mrequest.getParameter("writer"));
//		notice.setNoticeContent(mrequest.getParameter("content"));
//
//		// 이전 등록 파일 삭제 여부 값 추출
//				String deleteFlag = mrequest.getParameter("delflag");
//
//				// 이전 등록 파일명 추출
//				String originFilePath = mrequest.getParameter("ofile");
//				String renameFilePath = mrequest.getParameter("rfile");
//
//				// 새로운 파일명 추출하기 (ofile)
//				String originalFileName = mrequest.getFilesystemName("upfile");
//// 첨부파일 삭제여부 추출 -----------------------------------------------------------------------------------------------  insert랑 다른 부분
////		String deleteFlag = mrequest.getParameter("deleteFlag");
////		String originalFileName = mrequest.getParameter("ofile");
////		String renameFlieName = mrequest.getParameter("rfile");
//
////		if (deleteFlag != null && deleteFlag.equals("yes")) { 
////			// 첨부파일이 있을 때, 수정페이지에서 삭제 체크 전송옴
////		}
//		// 체크하면 "yes" 가 전송됨
//
//		// 서버에 업로드된 파일명 추출하기 (upfile) //첨부파일 없을 때 업로드되는 파일
//		String newOriginalFileName = mrequest.getFilesystemName("upfile"); // getParameter 하면 파일자체가 추출됨
//		notice.setOriginalFilepath(newOriginalFileName);
//
//		// 원래 파일과 새로 업로드된 파일의 이름이 같고
//		// 파일 용량도 동일하면 원래 이름 그대로 객체에 기록함
//		// 첨부파일이 없었는데 추가된 경우
//		// 첨부파일이 있었는데 변경된 경우
//
//		// 첨부된 파일의 파일명 바꾸기 하려면
//		// 저장폴더에 같은 이름의 파일이 있는 경우를 대비하기 위함
//		// "년월일시분초.확장자" 형식으로 많이 사용. 이렇게 변경해보자.
//		String newRenameFileName = null;
//		if (newOriginalFileName != null) { // 첨부파일이 있을 때만 이름 바꾸기실행함
//			// 바꿀 파일명에 대한 포맷문자열 만들기 : 년월일시분초 형식으로 지정
//			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss"); // java.text.SimpleDateFormat
//
//			// 바꿀파일명 만들기 // 현재 시스템 시간의 long형 정수
//			// 업로드된 파일의 확장자를 추출해서, 새 파일명 뒤에 붙여줌
//			newRenameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())); // 여기까지 파일명
//			newRenameFileName += "." + newOriginalFileName.substring(newOriginalFileName.lastIndexOf(".") + 1); // 원래
//																												// 파일명 .
//																												// 뒤에서부터
//																												// 추출해라
//			// 원본 파일명 rename 처리를 위해서 File 객체 만들기
//			File originFile = new File(savePath + "\\" + newOriginalFileName); // java.io.File
//			File renameFile = new File(savePath + "\\" + newRenameFileName);
//
//			// 이름 바꾸기
//			if (!originFile.renameTo(renameFile)) { // renameTo는 return타입이 boolean. 실행하다가 실패하는 경우가 있다. 그래서 if 쓴다
//				// renameTo() 메소드가 실패(false)한 경우에는 직접 바꿔야함
//				// 원본파일의 내용읽어서, 복사복에 기록하고, 완료되면 원본파일 삭제
//				// 파일이 글, 이미지, 동영상 이니까 outputStream 사용해야한다. 다읽으면 -1이 리턴
//				FileInputStream fin = new FileInputStream(originFile); // 원본파일 읽기
//				FileOutputStream fout = new FileOutputStream(renameFile); // 이 파일에 쓸거임
//				int data = -1;
//				byte[] buffer = new byte[1024]; // read() 에서 한방에 배열로 읽어버리기 위해 선언한 변수
//
//				while ((data = fin.read(buffer, 0, buffer.length)) != -1) { // 버퍼를 0부터 읽어라 버퍼의 길이만큼
//					fout.write(buffer, 0, buffer.length);
//				}
//
//				fin.close();
//				fout.close();
//				originFile.delete(); // 원본파일 삭제
//				// 직접이름 바꾸기
//			}
//			notice.setRenameFilepath(newRenameFileName); // 노티스 객체에 바뀐 파일명을 등록하려고
//
//			if (originalFileName != null) { // 원래 첨부파일이 있었다면 기존의 첨부파일을 폴더에서 삭제함
//				new File(savePath + "\\" + renameFlieName).delete();
//			}
//// ----------------------------------------------------------------------------------------------------------- 업로드된 새파일이 있다면인 경우
//		} else if (originalFileName != null && deleteFlag != null && deleteFlag.equals("yes")) { // 원래 첨부파일이 있었고, 파일삭제가
//																									// 체크된 경우
//			notice.setOriginalFilepath(null);
//			notice.setRenameFilepath(null);
//			// 폴더에 저장된 파일 삭제함
//			new File(savePath + "\\" + renameFlieName).delete();
//
//		} else if (originalFileName != null
//				&& (originalFileName == null || originFilePath.equals(originalFileName)
//				&& new File(savePath + "\\" + renameFlieName).length() == new File(savePath + "\\" + newRenameFileName)
//						.length())) { // 원래 첨부파일이 있었고, 변경되지 않았을 때
//			notice.setOriginalFilepath(originalFileName);
//			notice.setRenameFilepath(renameFlieName);
//		}
//
//		// 6. 서비스 객체 생성하고 메소드로 notice 객체 전달하고 처리된 결과받기.
//		int result = new NoticeService().updateNotice(notice);
//
//		// 7. 받은 결과로 성공, 실패 페이지 내보내기
//		if (result > 0) {
//			response.sendRedirect("nlist.ad");
//		} else {
//			view = request.getRequestDispatcher("views/common/error.jsp");
//			request.setAttribute("message", notice.getNoticeNo() + "번 공지사항 수정 실패");
//			view.forward(request, response);
//		}
//
//	}
//
//	protected void doPost(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//		doGet(request, response);
//	}
//
//}
