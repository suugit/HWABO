<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>파일 업로드 테스트</h2>
<form action="tinsert.do" method="post" enctype="multipart/form-data">
이 름 : <input type="text" name="name" required><br>
나 이 : <input type="number" name="age"><br> <!-- 필드명 맞추면 자동 set  -->
첨부파일 : <input type="file" name="upfile"><br>
<input type="submit" value="전송하기"> 
</form><br>
<hr>
</form>
<hr>
<h2>파일 다운로드 테스트</h2>
<a href="fdown.do?fname=로깅.txt">로깅.txt</a> 
</body>
</html>