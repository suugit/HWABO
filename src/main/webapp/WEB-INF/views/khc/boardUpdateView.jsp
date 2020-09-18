<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>	
<%@ page import="board.model.vo.Board"%>
<% 
	Board board = (Board)request.getAttribute("board");
	int currentPage = ((Integer)request.getAttribute("page")).intValue(); //괄호 묶어서 촤인티저 객체를 int 값으로(어차피 오토언박싱되긴함); 
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
	<h1 align="center"><%= board.getBoardNum() %>번 게시글 수정 페이지
	</h1>
	<br>
	<!-- 원글 수정폼 -->
<% if(board.getBoardLevel() == 0){ //원글이면 %>
	<form action="/testm/boriginup" method="post" enctype="multipart/form-data">
	<input type="hidden" name="bnum" value="<%= board.getBoardNum() %>">
	<input type="hidden" name="page" value="<%=  currentPage %>">
	<input type="hidden" name="ofile" value="<%= board.getBoardOriginalFileName() %>">
	<input type="hidden" name="rfile" value="<%= board.getBoardRenameFileName() %>">
		<table align="center" width="500" border="1" cellspacing="0">
			<tr>
				<th width="120">제 목</th>
				<td><input type="text" name="title" size="50" value="<%= board.getBoardTitle() %>"></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><input type="text" name="writer" readonly
					value="<%=board.getBoardWriter()%>"></td>
			</tr>
			<tr> 
				<th>파일선택 :</th>
				<td>
				<% if(board.getBoardOriginalFileName() != null){ %>
					<%= board.getBoardOriginalFileName() %> &nbsp;
					<input type="checkbox" name="delflag" value="yes"> 파일삭제
					<br>
				<% } %>
				<input type="file" name="upfile"> 
			</tr>
			<tr>
				<th>내 용</th>
				<td><textarea rows="5" cols="50" name="content" value="<%= board.getBoardContent()  %>"></textarea></td>
			</tr>
			<tr>
				<th colspan="2"><input type="submit" value="수정하기">
					&nbsp; <input type="reset" value="작성취소"> &nbsp; <input
					type="button" value="이전페이지로 이동"
					onclick="javascript:history.go(-1); return false;"></th>
			</tr>
		</table>
	</form>
	<% }else{ //댓글, 대댓글일때 출력내용 (댓글엔 첨부팡ㄹ이런거 없으니께) %>
	<form action="/testm/breplyup" method="post">
	<input type="hidden" name="bnum" value="<%= board.getBoardNum() %>">
	<input type="hidden" name="page" value="<%=  currentPage %>">
		<table align="center" width="500" border="1" cellspacing="0">
			<tr>
				<th>제 목</th>
				<td><input type="text" name="title" size="50" value="<%= board.getBoardTitle() %>" ></td>
			</tr>
			<tr> 
				<th>작성자</th>
				<td><input type="text" name="writer" readonly
					value="<%=board.getBoardWriter()%>"></td>
			</tr>
			<tr>
				<th>내 용</th>
				<td><textarea rows="5" cols="50" name="content" value="<%= board.getBoardContent()  %>" ></textarea></td>
			</tr>
			<tr>
				<th colspan="2">
					<input type="submit" value="수정하기">
					&nbsp; 
					<input type="reset" value="작성취소"> 
					&nbsp; 
					<input type="button" value="이전 페이지로 이동"
					onclick="javascript:history.go(-1); return false;"></th>
			</tr>
		</table>
	</form>
	<% } %>
</body>
</html>