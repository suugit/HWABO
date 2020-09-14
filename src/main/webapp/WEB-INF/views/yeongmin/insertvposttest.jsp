<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HWABO</title>
</head>
<body>
<h1>vpost insert 할때 입력한값들확인 또는 <br>
vpost select 시 각 db컬럼데이터값 확인 !</h1>
<br>
<hr>
<br>
<br>
<c:if test="${ ! empty vpost }">
vno값 :	${ vpost.vno } <br>
vtitle값 : 	${ vpost.vtitle  } <br>
vucode값 : ${vpost.vucode } <br>
vwriter값 : 	${ vpost.vwriter } <br>
valarm값 : ${ vpost.valarm }	<br>
vcontent값 : ${ vpost.vcontent } <br>
venrolldate 값 : <fmt:formatDate value="${ vpost.venrolldate }" pattern="yyyy-MM-dd" /> <br>
votecheck값 : 	${ vpost.votecheck } <br>
votenumber 값 : ${vpost.votenumber } <br>


</c:if>
등등등~
</body>
</html>