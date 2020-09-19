<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/hwabo/resources/js/jquery-3.5.1.min.js"></script>
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
	  	
	  <li class="nav-item"><a class="nav-link collapsed" href="cards2.do?ucode=${sessionScope.ucode }"
				data-target="#collapsePages" aria-expanded="true"
				aria-controls="collapsePages"><i class="fas fa-list"></i> <span>프로젝트 모아보기</span>
	  </a> </li>

      <hr class="sidebar-divider my-0">
      <div class="sidebar-heading">
        Main
      </div>

      <li class="nav-item">
        <a class="nav-link" href="fborder.do?project_num=${ sessionScope.pnum }">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>캘린더</span></a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="fborder2.do?project_num=${ sessionScope.pnum }">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>캘린더2</span></a>
      </li>

      <li class="nav-item">
        <a class="nav-link" href="ftables.do?project_num=${ sessionScope.pnum }">
          <i class="fas fa-fw fa-table"></i>
          <span>리스트</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">
      
      <div class="sidebar-heading">
        progress
      </div>

      <li class="nav-item">
        <a class="nav-link" href="fother.do?project_num=${ sessionScope.pnum }">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>목표</span></a>
      </li>
 <!-- 왼쪽사이드바 메인끝 -->     
      <hr class="sidebar-divider d-none d-md-block">
	
	<!-- ekdnsekdns 시작 -->	
	<li class="nav-item"><a class="nav-link collapsed" href="mybpost.do?ucode=${sessionScope.ucode}&pnum=${sessionScope.pnum}"
				data-target="#collapsePages" aria-expanded="true"
				aria-controls="collapsePages"> <i class="fas fa-tasks"></i> <span>업무 모아보기</span>
	</a> </li>
	
	<hr class="sidebar-divider">
	
	<li class="nav-item"><a class="nav-link collapsed" href="mycabinet.do"
	data-target="#collapsePages" aria-expanded="true"
	aria-controls="collapsePages" ><i class="fas fa-box-open"></i>
	<span>보관함</span></a> 
					
	<a class="nav-link collapsed" href="Fileboxlist.do?pnum=${sessionScope.pnum }" data-target="#collapsePages"
	aria-expanded="true" aria-controls="collapsePages" > 
	<i class="far fa-folder-open"></i><span> 파일함</span>
	</a></li>
			
	<hr class="sidebar-divider">
			
			<li class="nav-item"><a class="nav-link collapsed" href="myhwabo.do?ucode=${sessionScope.ucode}&pnum=${sessionScope.pnum}"
				data-target="#collapsePages" aria-expanded="true"
				aria-controls="collapsePages"> <i class="fas fa-chalkboard"></i>
					<span>나의 화보</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseOne"
				aria-expanded="true" aria-controls="collapseOne" onclick="javascript: return false;"> 
				<i class="fas fa-chalkboard-teacher"></i> <span>팀원들의 화보</span>
			</a>
				<div id="collapseOne" class="collapse" aria-labelledby="headingOne"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded" style="overflow: auto; max-height: 250px;">
						<h6 class="collapse-header">HWABO</h6>
						
							<c:forEach var="user" items="${sessionScope.pmlist}">
							
								<a class="collapse-item" href="javascript: location.href='yourhwabo.do?ucode=${user.ucode}&pnum=${user.project_num}'">
									<span><label>${user.uname }</label></span>
								</a>
							
							</c:forEach>							
					</div>
				</div></li>
	
	<!-- ekdnsekdns 끝 -->


 <hr class="sidebar-divider d-none d-md-block">

      <!-- Nav Item - Charts -->
      <li class="nav-item">
        <a class="nav-link" href="javascript:location.href='insertspost.do'">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>일정등록테스트</span></a>
      </li>

<!-- 왼쪽사이드바 끝 -->
	
</ul>
    
</td>
<td style="width:83%;">
</td>
</tr>    
</table>
    
    </div>
</body>
</html>