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
<h1>vpost insert 값확인</h1>
<br>
<hr>
<br>
<br>
<c:if test="${ ! empty vpost }">
vno값 :	${ vpost.vno } <br>
vpost값 : 	${ vpost.vwriter } <br>
vtitle값 : 	${ vpost.vtitle  } <br>
votecheck값 : 	${ vpost.votecheck } <br>
vdate 값 : 	<fmt:formatDate value="${ vpost.vdate }" pattern="yyyy-MM-dd" /> <br>

</c:if>
등등등~
</body>
</html>