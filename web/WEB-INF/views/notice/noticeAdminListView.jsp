<%@page import="notice.model.vo.Notice"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<Notice> list = (ArrayList<Notice>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lets</title>
</head>
<body>
<%@ include file="../common/header.jsp" %>
<hr>
<h1 align="center">공지사항</h1>
<br>
<div style="text-align:center;">
<button onclick="javascript:location.href='/lets/views/notice/noticeWriteForm.jsp'">공지글 등록</button>
</div>
<br>
<table align="center" width="500px" border="1" cellspacing="0" cellpadding="1">
<tr><th>번호</th><th>제목</th><th>작성자</th><th>첨부파일</th><th>날짜</th></tr>
<% for(Notice n : list){ %>
<tr>
<td><%=n.getNoticeNo() %></td>
<td><a href="/lets/andetail?noticeno=<%=n.getNoticeNo() %>"><%=n.getNoticeTitle() %></a></td>
<td><%= n.getNoticeWriter()%></td>
<td><% 
	if(n.getOriginalFilepath() != null){ %>
	☆★☆★☆	
	<% }else{ //첨부파일이 없을 때 %>
	&nbsp;
	<% } %>
</td>
<td><%=n.getNoticeDate() %></td>
</tr>
<% } %>
</table>
</body>
</html>