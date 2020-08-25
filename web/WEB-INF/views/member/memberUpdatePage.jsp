<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member"%>
<%
	Member member = (Member)request.getAttribute("member");
	// hobby 값을 각각의 문자로 나누기 스트링토커나이즈, 스프릿 사용하면 됨
	String[] hobbies = member.getHobby().split(",");
	// checkbox의 checked 속성설정 위해 배열 만든다
	String[] checked = new String[9];
	
	for(String hb : hobbies){
		switch(hb){
		case "game"    : checked[0] = "checked"; break;
		case "reading" : checked[1] = "checked"; break;
		case "climb"   : checked[2] = "checked"; break;
		case "sport"   : checked[3] = "checked"; break;
		case "music"   : checked[4] = "checked"; break;
		case "movie"   : checked[5] = "checked"; break;
		case "travle"  : checked[6] = "checked"; break;
		case "cook"    : checked[7] = "checked"; break;
		case "etc"     : checked[8] = "checked"; break;
		}
	}
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
<h1 align="center">회원정보 수정페이지</h1>
<br>
<form method="post" action="/lets/mupdate">
<table id="outer" align="center" width="500px" cellspacing="5" cellpadding="0">
<tr>
	<th width="120">이 름</th>
	<td><input type="text" name="username" value="<%= member.getUsername() %>" readonly></td>
</tr>
<tr>
	<th>아이디</th>
	<td><input type="text" name="userid" value="<%= member.getUserid() %>" readonly>&nbsp;&nbsp;</td>
</tr>
<tr>
	<th>암 호</th>
	<td><input type="password" name="userpwd" id="userpwd" value="<%= member.getUserpwd() %>"></td>
</tr>
<tr>
	<th>암호확인</th>
	<td><input type="password" id="userpwd2" ></td>
</tr>
<tr>
	<th>성 별</th>
	<td>
	<% if(member.getGender().equals("M")){ %>
		<input type="radio" name="gender" value="M" checked>남자 &nbsp;&nbsp;&nbsp;&nbsp; 
	    <input type="radio" name="gender" value="F" >여자</td>
	<% }else{ %>
		<input type="radio" name="gender" value="M" >남자 &nbsp;&nbsp;&nbsp;&nbsp; 
	    <input type="radio" name="gender" value="F" checked>여자</td>
	<% } %>
</tr>
<tr>
	<th>나 이</th>
	<td><input type="number" name="age" min="19" max="200" value="<%= member.getAge() %>"></td>
</tr>
<tr>
	<th>전화번호</th>
	<td><input type="tel" name="phone" value="<%= member.getPhone() %>"></td>
</tr>
<tr>
	<th>이메일</th>
	<td><input type="email" name="email" value="<%= member.getEmail() %>"></td>
</tr>
<tr>
	<th>취 미</th>
	<td>
		<table width="350">
		<tr>
			<td><input type="checkbox" name="hobby" value="game" <%= checked[0] %>> 게 &nbsp;임</td>
			<td><input type="checkbox" name="hobby" value="reading" <%= checked[1] %>> 독 &nbsp;서</td>
			<td><input type="checkbox" name="hobby" value="climb" <%= checked[2] %>> 등 &nbsp;산</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="hobby" value="sport" <%= checked[3] %>> 운 &nbsp;동</td>
			<td><input type="checkbox" name="hobby" value="music" <%= checked[4] %>> 음악감상</td>
			<td><input type="checkbox" name="hobby" value="movie" <%= checked[5] %>> 영화보기</td>
		</tr>
		<tr>
			<td><input type="checkbox" name="hobby" value="travel" <%= checked[6] %>> 여 &nbsp;행</td>
			<td><input type="checkbox" name="hobby" value="cook" <%= checked[7] %>> 요 &nbsp;리</td>
			<td><input type="checkbox" name="hobby" value="etc" <%= checked[8] %>> 기 &nbsp;타</td>
		</tr>
		</table>
	</td>
</tr>
<tr>
	<th>하고싶은 말</th>
	<td><textarea name="etc" rows="5" cols="50"><%= member.getEtc() %></textarea></td>
</tr>
<tr>
	<th colspan="2">
		<input type="submit" value="수정하기"> &nbsp; 
		<input type="reset" value="수정취소"> &nbsp;
		<a href="javascript:history.go(-1);">이전 페이지</a>
		<a href="/lets/index.jsp">시작 페이지</a>
	</th>
</tr>
</table>
</form>
<hr>
<!-- 상대경로만 사용가능 -->
<%@ include file="../common/footer.jsp" %>
</body>
</html>