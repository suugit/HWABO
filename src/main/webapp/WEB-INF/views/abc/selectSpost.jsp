<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HWABO</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ab3b0466fa883da1d7216010325a5bcc&libraries=services"></script>
</head>

<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#spostupdate").css("display", "none" );
		$("#changeselect").css("display", "none" );
		
	});
	function changeform1(){
		$("#spostview").css("display", "none" );
		$("#spostupdate").css("display", "block" );
		$("#changeupdate").css("display", "none" );
		$("#changeselect").css("display", "block" );
	};

	function changeform2(){
		$("#spostview").css("display", "block" );
		$("#spostupdate").css("display", "none" );
		$("#changeupdate").css("display", "block" );
		$("#changeselect").css("display", "none" );
	};
	

</script>
<body>
<button id="changeupdate" onclick="javascript: changeform1();">수 &nbsp;정</button>
<button id="changeselect" onclick="javascript: changeform2();">수 정 취 소</button>

<div id="spostview"><c:import url="/WEB-INF/views/abc/selectOneSpost.jsp"></c:import></div>
<div id="spostupdate"><c:import url="/WEB-INF/views/abc/updateSpost.jsp"></c:import></div>
</body>
</html>