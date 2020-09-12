<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${ empty sessionScope.ucode }">
<c:set var="ucodeCheck" value="Guest"></c:set>
</c:if>
<c:if test="${ !empty sessionScope.ucode }">
<c:set var="ucodeCheck" value="${ sessionScope.ucode }"></c:set>
</c:if>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 스나이퍼 재료 시작 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- 스나이퍼 재료 끝 -->
<script type="text/javascript" src="/hwabo/resources/js/jquery-3.5.1.min.js"></script>
<script>

$(function(){
	$.ajax({
		url: "starList.do?ucode=${ ucodeCheck }",
		type: "POST",
		dataType: "json", 
		success: function(json){
			console.log("success : " + JSON.stringify(json));
			
			var jsonStr = JSON.stringify(json);
			var json = JSON.parse(jsonStr);
			
			var values = "";
			for(var i in json.list5){
				values += 
					"<li class=\"nav-item\"><a class=\"nav-link\">" +
		            "<i class=\"fas fa-fw fa-chart-area\"></i><span onclick=\"javascript:location.href=\'cards.do\'\">" +
					decodeURIComponent(json.list5[i].name).replace(/\+/gi, " ") +
					"</span><span>" +
					"&nbsp;&nbsp;<div class=\"spinner-border spinner-border-sm text-light\" onclick=\"javascript:location.href=\'delStar.do\'\" >xx</div>" +
					"</span></a></li>";
			}
			//$("stars").html() + 
			$("#stars").html(values); 		
		},
		error: function(jqXHR, textstatus, errorthrown){
			console.log("error : " +jqXHR+", "+textstatus+", "+errorthrown);
		}
	});//ajax
	
});

</script>

</head>
<body>
<div style="position:fixed;height:100%;">

<table style="width:1300px;height:100%;">
<tr>
<td style="width:17%;">

<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar" style="width:1300px;height:100%;">

<br><br><br><br>

      <!-- 화보 이미지 -->
      <img src="resources/maincss/img/hwaboLogo.png" style="width: 100%; max-width: 780px; vertical-align: middle" onclick="javascript:location.href='/hwabo/'">
	
<!-- 왼쪽사이드바 시작 -->
      <!-- Divider -->
     <hr class="sidebar-divider my-0">
     
     <div class="sidebar-heading">
        바로가기
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
     <li class="nav-item" id="stars">

     
      </li>
     
     <hr class="sidebar-divider my-0">
<!-- 왼쪽사이드바 끝 -->

</ul>
    
</td>
<td style="width:57%;">

</td>
<td style="width:23.5%;">

<!-- 채팅위치조정테이블하단 시작 -->
<table style="height:100%;width:100%;">
<tr><td style="height:90px;"></td></tr><tr>
<td style="height:30%;">
<!-- 채팅위치조정테이블하단 시작 -->

<!-- 채팅 폼 시작 -->

<c:import url="/WEB-INF/views/red/sideRight.jsp"></c:import>

<!-- 채팅 폼 끝 -->

<!-- 채팅위치조정테이블하단 끝 -->
</td>
</tr>
<tr><td style="height:70%;"></td></tr>
</table>
<!-- 채팅위치조정테이블하단 끝 -->
</td>
</tr>    
</table>
    
    </div>
</body>
</html>
