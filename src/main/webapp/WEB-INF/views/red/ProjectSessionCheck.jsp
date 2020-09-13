<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${ empty sessionScope.ucode }">
<c:set var="who" value="Guest"></c:set>
</c:if>
<c:if test="${ !empty sessionScope.ucode }">
<c:set var="who" value="${ sessionScope.ucode }"></c:set>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

	if("${ who }" == "Guest"){
		location.href='/hwabo/';
	}else{
		location.href='cards2.do?ucode=${ who }';
	}

</script>

</head>
<body>

</body>
</html>