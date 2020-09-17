<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="position:fixed;height:100%;">

<table style="width:1300px;height:100%;">
<tr>
<td style="width:17%;">

<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar" style="width:1300px;height:100%;">

<br><br><br><br>
      <!-- Sidebar - Brand -->
      <img src="resources/maincss/img/hwaboLogo.png" style="width: 100%; max-width: 780px; vertical-align: middle" onclick="javascript:location.href='/hwabo/'">


<br>

			<li class="nav-item"><a class="nav-link collapsed" href="mybpost.do"
				data-target="#collapsePages" aria-expanded="true"
				aria-controls="collapsePages"> <i class="fas fa-tasks"></i> <span>업무 모아보기</span>
			</a> </li>

			<!-- Divider -->
			<hr class="sidebar-divider">


			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-target="#collapsePages" aria-expanded="true"
				aria-controls="collapsePages" onclick="javascript: return false;"><i class="fas fa-box-open"></i>
					<span>보관함</span>
			</a> <a class="nav-link collapsed" href="#" data-target="#collapsePages"
				aria-expanded="true" aria-controls="collapsePages" onclick="javascript: return false;"> 
				<i class="far fa-folder-open"></i><span>파일함</span>
			</a></li>
			
						<!-- Divider -->
			<hr class="sidebar-divider">
			
			<li class="nav-item"><a class="nav-link collapsed" href="myhwabo.do"
				data-target="#collapsePages" aria-expanded="true"
				aria-controls="collapsePages"> <i class="fas fa-chalkboard"></i>
					<span>나의 화보</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseOne"
				aria-expanded="false" aria-controls="collapseOne" onclick="javascript: return false;"> 
				<i class="fas fa-chalkboard-teacher"></i> <span>유 형</span>
			</a>
				<div id="collapseOne" class="collapse visible"  aria-expanded="false"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">HWABO</h6>
						<a class="collapse-item" href="#"><span style="color: #42BBBA;"><label><input name="type" type="checkbox" checked="checked">&nbsp;요 청&nbsp;</label></span></a>
						<a class="collapse-item" href="#"><span style="color: #42BBBA;"><label><input name="type" type="checkbox" checked="checked">&nbsp;진 행&nbsp;</label></span></a>
						<a class="collapse-item" href="#"><span style="color: #42BBBA;"><label><input name="type" type="checkbox" checked="checked">&nbsp;피드백&nbsp;</label></span></a>
						<a class="collapse-item" href="#"><span style="color: #42BBBA;"><label><input name="type" type="checkbox" checked="checked">&nbsp;완 료&nbsp;</label></span></a>
						<a class="collapse-item" href="#"><span style="color: #42BBBA;"><label><input name="type" type="checkbox" checked="checked">&nbsp;보 류&nbsp;</label></span></a>
					</div>
				</div></li>

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