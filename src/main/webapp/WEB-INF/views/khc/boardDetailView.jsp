<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.model.vo.Board" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
	Board board = (Board)request.getAttribute("board");
	int currentPage = ((Integer)request.getAttribute("currentPage")).intValue();
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:import url="../common/header.jsp"></c:import>
<hr>
<h2 align="center">${ board.boardNum } 번 공지 상세보기</h2>
<br>
<table align="center" width="500" border="1" cellspacing="0">
<tr><th>제 목</th><td>${ requestScope.board.boardTitle }</td></tr>
<tr><th>작성자</th><td>${ requestScope.board.boardWriter }</td></tr>
<tr><th>등록날짜</th><td><fmt:formatDate value="${ board.boardDate }" type="date" dateStyle="full"/> </td></tr>
<tr>
	<th>첨부파일</th>
	<td>
		<c:if test="${ !empty board.boardOriginalFileName }">
			<a href="/testm/bfdown?ofile=${ board.boardOriginalFileName }&rfile=${ board.boardOriginalFileName }">${ board.boardOriginalFileName }</a>
		</c:if>
		<c:if test="${ empty board.boardOriginalFileName }">
			&nbsp;
		</c:if>
	</td>
</tr>
<tr><th>내 용</th><td>${ board.boardContent }</td></tr>
<tr><th colspan="2">
<!-- 댓글달기(내글아닐떄만), 수정(내글만) -->
<c:if test="${ !empty loginMember }">
<!-- 댓글달기, 수정페이지로 이동 둘 다 로그인 상태여야 함 --> 
   
	<a href="/testm/bupview?bnum=${ board.boardNum }&page=${ currentPage }">[수정페이지로 이동]</a>
	&nbsp;&nbsp;
	<a href="/testm/bdelete?bnum=${ board.boardNum }&level=${ board.boardLevel }
	&rfile=${ board.boardRenameFileName }">[글삭제]</a>
</c:if>
<c:if test="${ empty loginMember }">
<!-- 로그인한 회원과 글작성자가 다르면 댓글달기 보이게함 %> -->
	<a href="/testm/views/board/boardReplyForm.jsp?bnum=${ board.boardNum }&page=${ currentPage }">[댓글달기]</a>
</c:if>
<!-- 원래는 출력만ㄴ있다가 jsp 도 그런경우 따라서 jsp에도 값을 전달할 수 있다 getㅖ -->

<!-- 목록누르면 현재페이지로 돌아오기 -->
<button onclick="javascript:location.href='/testm/blist?page=${ currentPage }';">목록</button></th><td></td></tr>
</table>
</body>
</html>