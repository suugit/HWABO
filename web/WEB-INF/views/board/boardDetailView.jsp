<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.model.vo.Board" %>
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
<%@ include file="../common/header.jsp" %>
<hr>
<h2 align="center"><%= board.getBoardNum() %> 번 공지 상세보기</h2>
<br>
<table align="center" width="500" border="1" cellspacing="0">
<tr><th>제 목</th><td><%=board.getBoardTitle() %></td></tr>
<tr><th>작성자</th><td><%=board.getBoardWriter() %></td></tr>
<tr><th>등록날짜</th><td><%=board.getBoardDate() %></td></tr>
<tr>
	<th>첨부파일</th>
	<td>
		<% if(board.getBoardOriginalFileName() != null) { %>
			<a href="/lets/bfdown?ofile=<%=board.getBoardOriginalFileName() %>&rfile=<%=board.getBoardRenameFileName() %>"><%=board.getBoardRenameFileName() %></a>
		<% }else{ %>
			&nbsp;
		<% } %>
	</td>
</tr>
<tr><th>내 용</th><td><%=board.getBoardContent() %></td></tr>
<tr><th colspan="2">
<!-- 댓글달기(내글아닐떄만), 수정(내글만) -->
<% if(loginMember != null){  //댓글달기, 수정페이지로 이동 둘 다 로그인 상태여야 함 
   if(loginMember.getUserid().equals(board.getBoardWriter())){
   //로그인한 회원과 글 작성자가 같으면 수정페이지로 이동  보이게 함 %>
	<a href="/lets/bupview?bnum=<%=board.getBoardNum()%>&page=<%=currentPage%>">[수정페이지로 이동]</a>
	&nbsp;&nbsp;
	<a href="/lets/bdelete?bnum=<%=board.getBoardNum() %>&level=<%=board.getBoardLevel() %>
	&rfile=<%= board.getBoardRenameFileName() %>">[글삭제]</a>
<% }else{ // 로그인한 회원과 글작성자가 다르면 댓글달기 보이게함 %>
	<a href="/lets/views/board/boardReplyForm.jsp?bnum=<%=board.getBoardNum() %>&page=<%=currentPage%>">[댓글달기]</a>
<% }} %>
<!-- 원래는 출력만ㄴ있다가 jsp 도 그런경우 따라서 jsp에도 값을 전달할 수 있다 getㅖ -->

<!-- 목록누르면 현재페이지로 돌아오기 -->
<button onclick="javascript:location.href='/lets/blist?page=<%=currentPage%>';">목록</button></th><td></td></tr>
</table>
</body>
</html>