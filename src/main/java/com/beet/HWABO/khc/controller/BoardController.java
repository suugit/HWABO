package com.beet.HWABO.khc.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.beet.HWABO.dopost.model.service.BoardService;
import com.beet.HWABO.dopost.model.vo.Board;


@Controller
public class BoardController {
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	//DI: 객체 생성은 스프링이 함 (자동 의존성 주입됨) 
	@Autowired
	private BoardService boardService;

	
//-------------  페이지 이동용 메소드 ------------------------------------------------------------------------------
	@RequestMapping("boardReplyForm.do")
	public String boardReplyFormMethod() {
		return "board/boardReplyForm";
	}
	
	@RequestMapping("boardWriteForm.do")
	public String boardWriteFormMethod() {
		return "board/boardWriteForm";
	}
		
	@RequestMapping(value = "bupview.do")
	public String boardUpdateMethod(@RequestParam("page") int page, @RequestParam("board_num") int board_num, Model m) {
		//수정페이지로 이동
		Board board = boardService.selectBoard(board_num);
		
		if(board.getBoard_num() != 0) {
			m.addAttribute("board", board);
			m.addAttribute("page", page);
			return "board/boardUpdateView";
		}else {
			m.addAttribute("message", board_num + " 번 게시글 수정페이지 이동 실패");
			return "common/error";
		}
	}
	
	
// --------------------------------------------------------------------------------------------------------------------------------
	
	@RequestMapping(value="btop3.do", method=RequestMethod.POST)
	@ResponseBody
	public String selectNewTop3(HttpServletResponse response, Model m) throws UnsupportedEncodingException{
		logger.info("btop3.do run ........................");
		
		ArrayList<Board> list = boardService.selectTop3();
		
		// 전송용 json 객체 준비
		JSONObject sendJson = new JSONObject();
				
		// json 배열 객체 생성
		JSONArray jarr = new JSONArray();
		
		logger.info(list.toString());
		if(!list.isEmpty()) {
			for(Board b : list) {
				JSONObject job = new JSONObject();
				
				job.put("board_num", b.getBoard_num());
				job.put("board_title", URLEncoder.encode(b.getBoard_title(), "utf-8"));
				job.put("board_readcount", b.getBoard_readcount());

				
				jarr.add(job);
			}
			sendJson.put("list", jarr);
			return sendJson.toJSONString();  // jsonView 로 리턴됨.
		}else {
			m.addAttribute("message", "게시글 top3 가져오기 실패");
			return "common/error";
		}
	}
	
	
	@RequestMapping("bdetail.do")
	public String selectOne(int board_num, Model m, @RequestParam(name="page", required = false) int page){
		//게시글 상세보기
		
		boardService.updateAddReadCount(board_num);
		Board board = boardService.selectBoard(board_num);
		
		int currentPage = 1;
		
		if(page != 0) {
			currentPage = page;
		}
		if(board != null) {
			m.addAttribute("board", board);
			m.addAttribute("currentPage", currentPage);
			return "board/boardDetailView";
		}else {
			m.addAttribute("message", "board 상세보기 실패 !");
			return "common/error";
		}
	}
	
	
	@RequestMapping("blist.do")
	public String selectBoardList(HttpServletRequest request, @RequestParam(name="page", required = false) int page) {
		// 페이지별로 출력되는 게시글 전체 조회 처리용 컨트롤러
		logger.info("blist.do run ................");
		//페이지 기본값 지정(페이지값이 전송되어 오지않을 때 자동으로 1 로 셋팅)
		int currentPage = 1;
		
		//전송 온 페이지값 추출
		if(page != 0) {	currentPage = page;   }
		
		//한페이지당 출력할 목록 갯수 저장
		int limit = 10;
		
		int startRow = ( (currentPage - 1) * limit ) + 1;
		int endRow = startRow + limit - 1;
		
		BoardPage bpage = new BoardPage(startRow, endRow);
		
		//전체 목록 갯수 조회부터 해야한다
		int listCount = boardService.selectGetListCount();
		
		//현재 페이지에 출력할 게시글 목록 조회
		ArrayList<Board> list = boardService.selectList(bpage);

		//뷰에 출력될 총 페이지 수 계산도 필요 : 게시글이 1개이면 1페이지, 
		int maxPage = (int)((double)listCount/limit +0.9); //limit가 10이라서 0.9이다.
		
		// 페이지 그룹화. 일단 페이지 그룹 10개로 해본다.
			//맨앞 - 맨뒤,  이전그룹 - 다음그룹
		
		//현재페이지가 속한 그룹의 시작페이지 수 지정
		//예 : currentPage가 35이면 페이지 그룹이 10일 때 시작페이지는 30
		int startPage = (((int)((double)currentPage/limit +0.9)) -1)*limit + 1;
		int endPage = startPage + limit -1;
		
		//총페이지수보다 endPage가 클 경우 총페이지수까지만 출력
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		if( !list.isEmpty()) {
			request.setAttribute("list", list);
			request.setAttribute("currentPage", currentPage);
			request.setAttribute("maxPage", maxPage);
			request.setAttribute("startPage", startPage);
			request.setAttribute("endPage", endPage);
			request.setAttribute("listCount", listCount);
			
			return "board/boardListViews";
		}else {
			request.setAttribute("message", currentPage + " 페이지에 대한 조회 실패");
			return "common/error";
		}
		
	}
	
	@RequestMapping("breply.do")
	public String boardReplyWrite(@RequestParam("page") int page, Board board, Model m) {
		//게시글에 댓글 등록처리
		Board origin = boardService.selectBoard(board.getBoard_num());
		
		Board reply = new Board();
		reply.setBoard_title(board.getBoard_title());
		reply.setBoard_writer(board.getBoard_writer());
		reply.setBoard_content(board.getBoard_content());
		reply.setBoard_level(origin.getBoard_level()+1);
		reply.setBoard_ref(origin.getBoard_ref()); // 참조하는 원글번호
		if(reply.getBoard_level() ==2) { // 댓글의 댓글일때
			reply.setBoard_reply_ref(origin.getBoard_reply_ref());		
		}
		if(reply.getBoard_level() ==2) { // 댓글의 댓글일때
			reply.setBoard_reply_ref(origin.getBoard_reply_ref());		
		}
		
		reply.setBoard_reply_seq(1); 
		boardService.updateReplySeq(reply);
		
		if(boardService.insertReply(reply) > 0) {
			return "redirect:/blist.do?page=" + page;
		}else {
			m.addAttribute("message", board.getBoard_num() + " 번 게시글 댓글 등록 실패");
			return "common/error";
		}
	}

	@RequestMapping(value = "bdelete.do")
	public String boardDeleteMethod(Board board, HttpServletRequest request, @RequestParam(name="page", required = false) String page) {
		//게시글 삭제
		String returnview;
		if(boardService.deleteBoard(board) > 0) {
			if(board.getBoard_rename_filename() != null) {
				String savePath = request.getSession().getServletContext().getRealPath("/resources/bupfiles");
				new File(savePath + "\\" + board.getBoard_rename_filename()).delete();
			}
			if(page != null) {
				returnview = "redirect:/blist.do?page=" + page;
			}
			returnview = "redirect:/blist.do?page=1";
		}else {
			request.setAttribute("message", board.getBoard_num() + " 번 글 삭제 실패");
			returnview = "common/error";
		}
		return returnview;
	}
	

	
	@RequestMapping(value = "boriginup.do")
	public String boardOriginUpdateMethod(Board board, HttpServletRequest request,
			@RequestParam(name = "upfile", required = false) MultipartFile file,
			@RequestParam(name = "deleteFlag", required = false) String del, @RequestParam(name="page", required = false) String page) {
		//게시글 원글 수정
		String savePath = request.getSession().getServletContext().getRealPath("resources/bupfiles");
		String returnView = null;

		if (board.getBoard_original_filename() != null) {
			if (del != null) {
				if (del.equals("yes")) {
					if (new File(savePath + "\\" + board.getBoard_rename_filename()).delete()) {
						logger.info("파일 삭제 성공 !");
						board.setBoard_original_filename(null);
						board.setBoard_rename_filename(null);
					} else {
						logger.info("파일 삭제 실패 !");
					}

				} // 파일삭제에 체크가 됐다면 끝
			}
		}

		if (file != null) {
			if (!file.getOriginalFilename().equals(board.getBoard_original_filename())
					&& (new File(savePath + "\\" + board.getBoard_rename_filename())
							.length() != new File(savePath + "\\" + file.getOriginalFilename()).length())) {
				if ((new File(savePath + "\\" + board.getBoard_rename_filename()).delete())) {
					logger.info("파일 삭제 성공 !"); // 이름도 다르고 파일길이도 다를때 원래 파일 삭제
					board.setBoard_original_filename(null);
					board.setBoard_rename_filename(null);
				} else {
					logger.info("파일 삭제 실패 !");
				}
				board.setBoard_original_filename(file.getOriginalFilename());

				// 바꿀 파일명에 대한 포맷문자열 만들기 : 년월일시분초 형식으로 지정
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss"); // java.text.SimpleDateFormat

				// 바꿀파일명 만들기 // 현재 시스템 시간의 long형 정수
				// 업로드된 파일의 확장자를 추출해서, 새 파일명 뒤에 붙여줌
				String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())); // 여기까지 파일명
				renameFileName += "."
						+ file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".") + 1); // 원래 파일명 . 뒤에서부터 추출해라

				board.setBoard_rename_filename(renameFileName);

				// 업로드된 파일을 지정한 폴더로 옮기는 작업
				try {
					file.transferTo(new File(savePath + "\\" + renameFileName));
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}

			} else {
				board.setBoard_original_filename(file.getOriginalFilename());

				// 바꿀 파일명에 대한 포맷문자열 만들기 : 년월일시분초 형식으로 지정
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss"); // java.text.SimpleDateFormat

				// 바꿀파일명 만들기 // 현재 시스템 시간의 long형 정수
				// 업로드된 파일의 확장자를 추출해서, 새 파일명 뒤에 붙여줌
				String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())); // 여기까지 파일명
				renameFileName += "."
						+ file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf(".") + 1); // 원래 파일명 . 뒤에서부터 추출해라

				board.setBoard_rename_filename(renameFileName);

				// 업로드된 파일을 지정한 폴더로 옮기는 작업
				try {
					file.transferTo(new File(savePath + "\\" + renameFileName));
				} catch (IllegalStateException | IOException e) {
					e.printStackTrace();
				}
			}

		} // 새로 업로드된 파일이 있다면 끝


		if (boardService.updateOrigin(board) > 0) {
			if(page != null) {
				returnView = "redirect:/blist.do?page=" + page;
			}else {
				returnView = "redirect:/blist.do?page=1";
			}
		} else {
			request.setAttribute("message", board.getBoard_num() + " 번 게시글 수정 실패 ");
			returnView = "common/error";
		}
		return returnView;
	}
	
	
	
	@RequestMapping(value = "breplyup.do")
	public String boardReplyUpdateMethod(Model m , Board reply, @RequestParam("page") String page) {
		// 댓글, 대댓글 수정
		String returnview ="";
		
		if(boardService.updateReply(reply) > 0) {
			returnview = "redirect:/blist.do?page=" + page;
		}else {
			m.addAttribute("message", "댓글 수정에 실패하였습니다.");
			returnview = "common/error";
		}
		return returnview;
	}
	
	
	
	@RequestMapping(value = "binsert.do")
	public String boardOriginInsertMethod(Board board, HttpServletRequest request,
			@RequestParam(name = "ofile", required = false) MultipartFile file) {
		//게시글 등록
		// 저장할 폴더를 지정해야해서 request 사용한다
		logger.info("file : " + file.getOriginalFilename());
		logger.info("board : " + board);
		String fileName = file.getOriginalFilename();

		String savePath = request.getSession().getServletContext().getRealPath("resources/bupfiles");

		//업로드된 파일이 있다면
		if (file != null) {
			// 바꿀 파일명에 대한 포맷문자열 만들기 : 년월일시분초 형식으로 지정
			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss"); // java.text.SimpleDateFormat

			// 바꿀파일명 만들기 // 현재 시스템 시간의 long형 정수
			// 업로드된 파일의 확장자를 추출해서, 새 파일명 뒤에 붙여줌
			String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())); // 여기까지 파일명
			renameFileName += "." + fileName.substring(fileName.lastIndexOf(".") + 1); // 원래 파일명 . 뒤에서부터 추출해라

			board.setBoard_original_filename(fileName);
			board.setBoard_rename_filename(renameFileName);

			// 업로드된 파일을 지정한 폴더로 옮기는 작업
			try {
				file.transferTo(new File(savePath + "\\" + renameFileName));
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
		} /// 업로드파일이 있다면

		if (boardService.insertOriginBoard(board) > 0) {
			return "redirect:/blist.do?page=1";
		} else {
			request.setAttribute("message", "새 공지사항 등록 처리 실패");
			return "common/errer";
		}


	}
	
	@RequestMapping(value = "bfdown.do")
	public ModelAndView boardFileDownMethod(HttpServletRequest request, ModelAndView mav, @RequestParam("rfile") String rename,@RequestParam("ofile") String originname) throws IOException {
		logger.info(rename);
		logger.info(originname);
		String savePath = request.getSession().getServletContext().getRealPath("resources/bupfiles");
		
		File renamefile = new File(savePath +"\\"+ rename);
		
		File downfile = new File(savePath + "\\" + originname);  //java.io.File

		
		if(!downfile.renameTo(new File(originname))) {
			//renameTo() 메소드가 실패(false)한 경우에는 직접 바꿔야함
			//원본파일의 내용읽어서, 복사복에 기록하고, 완료되면 원본파일 삭제
			//파일이 글, 이미지, 동영상 이니까 outputStream 사용해야한다. 다읽으면 -1이 리턴

			FileInputStream fin = new FileInputStream(renamefile); //rename파일 읽기
			FileOutputStream fout = new FileOutputStream(downfile); //이 파일에 쓸거임
			int data = -1;
			byte[] buffer = new byte[1024]; // read() 에서 한방에 배열로 읽어버리기 위해 선언한 변수 
			while((data = fin.read(buffer, 0 , buffer.length)) != -1) { // 버퍼를 0부터 읽어라 버퍼의 길이만큼
				fout.write(buffer, 0 , buffer.length);
			}
			fin.close();
			fout.close();
			renamefile.delete(); //원본파일 삭제
		}//직접이름 바꾸기			

		logger.info(downfile.getName());
		/*	
		ModelAndView(String viewName, String modelName, Object modelObject)
		model = request +response
		modelName = 이름, modelObject = 객체
		request.setAttribute("이름", 객체) 와 같은 의미임
		 
		*/
		// 스프링에서는 파일 다운하려면, View를 상속받은 파일 다운 처리용 뷰클래스를 별도로 작성해야한다
		// DispatcherServlet 에 View class 를 실행 시키는 뷰 리졸버를 등록해야한다.
		return new ModelAndView("filedown", "downfile", downfile);
	}

	
	
}
