<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member"%>
<% 
	Member loginMember = (Member)session.getAttribute("loginMember");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lets</title>
<style type="text/css">
header { margin:0; padding:0;}

header #logo {
	font-size: 45pt;
	font-style: italic;
	color: navy;
	text-shadow : 2px 2px 2px gray;
	text-align: center;
}

header ul#menubar { 
	list-style: none;
	position: relative;
	left: 150px;
	top: -30px; 
}

header ul#menubar li {
	float: left;
	width: 120px;
	height: 30px;
	margin-right: 5px;
	padding: 0px;
}

header ul#menubar li a {
	text-decoration: none;
	width : 120px;
	height : 30px;
	display : block;
	background-color: orange;
	text-align: center;
	color: navy;
	font-weight: bold;
	margin: 0px;
	text-shadow: 1px 1px 2px white;
	padding-top: 5px;
}

header ul#menubar li a:hover {
	text-decoration: none;
	width : 120px;
	height : 30px;
	display : block;
	background-color: navy;
	text-align: center;
	color: white;
	font-weight: bold;
	margin: 0px;
	text-shadow: 1px 1px 2px navy;
	padding-top: 5px;
}
hr {clear: both;}
</style>
</head>
<body>
<header>
<h1 id="logo">lets</h1>
<% if(loginMember != null && loginMember.getUserid().equals("admin")){ %> 
<!-- 관리자가 로그인했을 때 -->
<ul id="menubar">
<li><a href="/lets/mlist">회원관리</a></li>
<li><a href="/lets/nlist.ad">공지글관리</a></li>
<li><a href="/lets/blist">게시글관리</a></li>
<li><a href="#">QnA관리</a></li>
<li><a href="/lets/views/test/cryptoEnrollPage.html">암호화회원가입</a></li>
<li><a href="/lets/views/test/testPage.jsp">필터테스트</a></li>
<li><a href="/lets/index.jsp">HOME</a></li>
</ul>
<% }else if (loginMember != null){ %>
<!-- 일반회원이 로그인했을 때 -->
<ul id="menubar">
<li><a href="/lets/mlist">암호화회원관리</a></li>
<li><a href="/lets/nlist">공지사항</a></li>
<li><a href="/lets/blist?page=1">게시글</a></li>
<li><a href="#">QnA</a></li>
<li><a href="/lets/views/test/cryptoEnrollPage.html">암호화회원가입</a></li>
<li><a href="/lets/views/test/testPage.jsp">필터테스트</a></li>
<li><a href="/lets/index.jsp">HOME</a></li>
</ul>
<% }else{ %>
<!-- 로그인 하지 않았을 때 -->
<ul id="menubar">
<li><a href="/lets/member/enrollPage.html">회원가입</a></li>
<li><a href="/lets/nlist">공지사항</a></li>
<li><a href="/lets/blist?page=1">게시글</a></li>
<li><a href="#">QnA</a></li>
<li><a href="/lets/views/test/cryptoEnrollPage.html">암호화회원가입</a></li>
<li><a href="/lets/views/test/testPage.jsp">필터테스트</a></li>
<li><a href="/lets/index.jsp">HOME</a></li>
</ul>
<% } %>
</header>
</body>
</html>