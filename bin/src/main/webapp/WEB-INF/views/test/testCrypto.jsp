<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>spring security 패스워드 암호화처리 테스트 페이지</h1>
<fieldset>
<legend>패스워드 암호화 확인용</legend>
<form action="bcrypto.do" method="POST">
전송 암호 : <input type="password" name="userpwd"> <br>
<input type="submit" value="전송">
</form>
</fieldset>
<br>
<hr>
<fieldset>
<legend>암호화회원가입</legend>
<form action="enrollBcrypto.do" method="post">
아이디 : <input type="text" name="userid"> <br>
암호 : <input type="password" name="userpwd">
이름 : <input type="text" name="username">
<input type="submit" value="가입하기">
</form>
</fieldset>
<br>
<hr>
<fieldset>
<legend>암호화 된 패스워드 로그인 테스트</legend>
<form action="loginBcrypto.do" method="post">
아이디 : <input type="text" name="userid"> <br>
암호 : <input type="password" name="userpwd">
<input type="submit" value="로그인">
</form>
</fieldset>
</body>
</html>