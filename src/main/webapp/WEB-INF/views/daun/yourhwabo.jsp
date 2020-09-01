<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<link rel="icon" type="image/x-icon"
	href="/hwabo/resources/assets/img/favicon.png" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">


<title>HWABO</title>

<!-- Custom fonts for this template -->
<link
	href="/hwabo/resources/maincss/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/hwabo/resources/maincss/css/sb-admin-2.min.css"
	rel="stylesheet">

<!-- Custom styles for this page -->
<link
	href="/hwabo/resources/maincss/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">

</head>

<body id="page-top">
	<!-- 테스트버튼 시작 -->
	<div style="position: absolute; z-index: 5;">
		<br>&nbsp; 원하는 페이지로 :
		<button onclick="javascript:location.href='red.do'">index</button>
		<button onclick="javascript:location.href='404.do'">404</button>
		<button onclick="javascript:location.href='blank.do'">blank</button>
		<button onclick="javascript:location.href='buttons.do'">buttons</button>
		<button onclick="javascript:location.href='cards.do'">cards</button>
		<button onclick="javascript:location.href='charts.do'">charts</button>
		<button onclick="javascript:location.href='fpassword.do'">forgot-password</button>
		<button onclick="javascript:location.href='flogin.do'">login</button>
		<button onclick="javascript:location.href='fregister.do'">register</button>
		<button onclick="javascript:location.href='ftables.do'">tables</button>
		<button onclick="javascript:location.href='fanimation.do'">utilities-animation</button>
		<button onclick="javascript:location.href='fborder.do'">utilities-border</button>
		<button onclick="javascript:location.href='fcolor.do'">utilities-color</button>
		<button onclick="javascript:location.href='fother.do'">utilities-other</button>
	</div>
	<div style="background-color: #F8E0E6; border: 2px solid black;">
		<br> <br> <br>
	</div>
	<!-- 테스트버튼 끝 -->
	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="index.jsp">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">HWABO(프로젝트선택페이지로?)</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item"><a class="nav-link" href="index.jsp"> <i></i>
					<span>프로젝트메인페이지로?</span></a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-table"></i> <span>볼 업무 선택</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">HWABO</h6>
						<a class="collapse-item" href="#"><span><label><input
									type="radio" name="selectshow">나의 업무(에이작스처리)</label></span></a> <a class="collapse-item"
							href="#"><span><label><input type="radio" name="selectshow">요청
									온 업무</label></span></a> <a class="collapse-item" href="#"><span><label><input
									type="radio" name="selectshow">전체 업무</label></span></a>
					</div>
				</div></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-table"></i> <span>보기 정렬</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">HWABO</h6>
						<a class="collapse-item" href="#"><span><label><input
									type="checkbox" checked="checked">상 태</label></span></a> <a
							class="collapse-item" href="#"> <span><label><input
									type="checkbox" checked="checked">제 목</label></span></a> <a
							class="collapse-item" href="#"><span><label><input
									type="checkbox" checked="checked">진척도</label></span></a> <a
							class="collapse-item" href="#"><span><label><input
									type="checkbox" checked="checked">시작일</label></span></a> <a
							class="collapse-item" href="#"><span><label><input
									type="checkbox" checked="checked">마감일</label></span></a> <a
							class="collapse-item" href="#"><span><label><input
									type="checkbox" checked="checked">수정일</label></span></a> <a
							class="collapse-item" href="#"><span><label><input
									type="checkbox" checked="checked">등록일</label></span></a>
					</div>
				</div></li>

			<!-- Divider -->
			<hr class="sidebar-divider">


			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-target="#collapsePages" aria-expanded="true"
				aria-controls="collapsePages"> <i class="fas fa-fw fa-folder"></i>
					<span>보관함</span>
			</a> <a class="nav-link collapsed" href="#" data-target="#collapsePages"
				aria-expanded="true" aria-controls="collapsePages"> <i
					class="fas fa-fw fa-folder"></i> <span>파일함</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-tachometer-alt"></i> <span>다이렉트 메세지</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">HWABO</h6>
						<a class="collapse-item" href="#"><span><label>사람이름1</label></span></a>
						<a class="collapse-item" href="#"><span><label>사람이름2</label></span></a>
						<a class="collapse-item" href="#"><span><label>사람이름3</label></span></a>
						<a class="collapse-item" href="#"><span><label>사람이름4</label></span></a>
						<a class="collapse-item" href="#"><span><label>사람이름5</label></span></a>
						<a class="collapse-item" href="#"><span><label>사람이름6</label></span></a>
						<a class="collapse-item" href="#"><span><label>사람이름7</label></span></a>
						<a class="collapse-item" href="#"><span><label>사람이름8</label></span></a>
						<a class="collapse-item" href="#"><span><label>사람이름9</label></span></a>
						<a class="collapse-item" href="#"><span><label>사람이름10</label></span></a>
						<a class="collapse-item" href="#"><span><label>사람이름11</label></span></a>
					</div>
				</div></li>

			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">

			<!-- Sidebar Toggler (Sidebar) -->
			<div class="text-center d-none d-md-inline">
				<button class="rounded-circle border-0" id="sidebarToggle"></button>
			</div>

		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<form class="form-inline">
						<button id="sidebarToggleTop"
							class="btn btn-link d-md-none rounded-circle mr-3">
							<i class="fa fa-bars"></i>
						</button>
					</form>

					<!-- Topbar Search -->
					<form
						class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
						<div class="input-group">
							<input type="text" class="form-control bg-light border-0 small"
								placeholder="Search for..." aria-label="Search"
								aria-describedby="basic-addon2">
							<div class="input-group-append">
								<button class="btn btn-primary" type="button">
									<i class="fas fa-search fa-sm"></i>
								</button>
							</div>
						</div>
					</form>

					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - Search Dropdown (Visible Only XS) -->
						<li class="nav-item dropdown no-arrow d-sm-none"><a
							class="nav-link dropdown-toggle" href="#" id="searchDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
								aria-labelledby="searchDropdown">
								<form class="form-inline mr-auto w-100 navbar-search">
									<div class="input-group">
										<input type="text"
											class="form-control bg-light border-0 small"
											placeholder="Search for..." aria-label="Search"
											aria-describedby="basic-addon2">
										<div class="input-group-append">
											<button class="btn btn-primary" type="button">
												<i class="fas fa-search fa-sm"></i>
											</button>
										</div>
									</div>
								</form>
							</div></li>

						<!-- Nav Item - Alerts -->
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-bell fa-fw"></i> <!-- Counter - Alerts -->
								<span class="badge badge-danger badge-counter">3+</span>
						</a> <!-- Dropdown - Alerts -->
							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="alertsDropdown">
								<h6 class="dropdown-header">Alerts Center</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-primary">
											<i class="fas fa-file-alt text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 12, 2019</div>
										<span class="font-weight-bold">A new monthly report is
											ready to download!</span>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-success">
											<i class="fas fa-donate text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 7, 2019</div>
										$290.29 has been deposited into your account!
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="mr-3">
										<div class="icon-circle bg-warning">
											<i class="fas fa-exclamation-triangle text-white"></i>
										</div>
									</div>
									<div>
										<div class="small text-gray-500">December 2, 2019</div>
										Spending Alert: We've noticed unusually high spending for your
										account.
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">Show All Alerts</a>
							</div></li>

						<!-- Nav Item - Messages -->
						<li class="nav-item dropdown no-arrow mx-1"><a
							class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <i class="fas fa-envelope fa-fw"></i>
								<!-- Counter - Messages --> <span
								class="badge badge-danger badge-counter">7</span>
						</a> <!-- Dropdown - Messages -->
							<div
								class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="messagesDropdown">
								<h6 class="dropdown-header">Message Center</h6>
								<a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle"
											src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="">
										<div class="status-indicator bg-success"></div>
									</div>
									<div class="font-weight-bold">
										<div class="text-truncate">Hi there! I am wondering if
											you can help me with a problem I've been having.</div>
										<div class="small text-gray-500">Emily Fowler Â· 58m</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle"
											src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">
										<div class="status-indicator"></div>
									</div>
									<div>
										<div class="text-truncate">I have the photos that you
											ordered last month, how would you like them sent to you?</div>
										<div class="small text-gray-500">Jae Chun Â· 1d</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle"
											src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">
										<div class="status-indicator bg-warning"></div>
									</div>
									<div>
										<div class="text-truncate">Last month's report looks
											great, I am very happy with the progress so far, keep up the
											good work!</div>
										<div class="small text-gray-500">Morgan Alvarez Â· 2d</div>
									</div>
								</a> <a class="dropdown-item d-flex align-items-center" href="#">
									<div class="dropdown-list-image mr-3">
										<img class="rounded-circle"
											src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">
										<div class="status-indicator bg-success"></div>
									</div>
									<div>
										<div class="text-truncate">Am I a good boy? The reason I
											ask is because someone told me that people say this to all
											dogs, even if they aren't good...</div>
										<div class="small text-gray-500">Chicken the Dog Â· 2w</div>
									</div>
								</a> <a class="dropdown-item text-center small text-gray-500"
									href="#">Read More Messages</a>
							</div></li>

						<div class="topbar-divider d-none d-sm-block"></div>

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small">Valerie
									Luna</span> <img class="img-profile rounded-circle"
								src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#"> <i
									class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
									Settings
								</a> <a class="dropdown-item" href="#"> <i
									class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
									Activity Log
								</a>
								<div class="dropdown-divider"></div>
								<a class="dropdown-item" href="#" data-toggle="modal"
									data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									Logout
								</a>
							</div></li>

					</ul>

				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<div class="row" >
						<!-- 내정보 시작 -->
						<div class="col-md-4">
							<div class="card mb-4 py-3 border-left-info">
								<div style="margin-top: 0px;">
									<h1>&nbsp;&nbsp;OOO 님의&nbsp; 정 보</h1>
									<hr>
								</div>
								<div class="card-body" style="height: 400px;">
									<!-- 게시글안쪽 -->
									<table style="width: 100%; height: 90%; overflow: auto;">
										<tr>
											<th style="text-align: center;" rowspan="4" width="25%;">사진</th>
											<th style="text-align: center;" width="25%;">이 &nbsp;름</th>
											<td width="50%;">OOO</td>
										</tr>
										<tr>
											<th style="text-align: center;" width="25%;">이메일</th>
											<td width="55%;">OOO@naver.com</td>
										</tr>
										<tr>
											<th style="text-align: center;" width="25%;">휴대폰</th>
											<td width="55%;">010-0000-0000</td>
										</tr>
										<tr>
											<th style="text-align: center;" width="25%;">부 &nbsp;서</th>
											<td width="55%;">마케팅부</td>
										</tr>
									</table>

								</div>
							</div>
						</div>
						<!-- 내정보 끝 -->

						<!-- 즐겨찾기 시작 -->
						<div class="col-md-8">
							<div class="card mb-4 py-3 border-left-info">
								<div style="margin-top: 0px;">
									<h1>&nbsp;&nbsp;즐 겨 찾 기</h1>
									<hr>
								</div>
								<!-- 게시글안쪽 -->

								<div class="card-body" style="height: 400px; overflow: auto;">
									<div class="table-responsive">
										<table class="table table-bordered" id="dataTable"
											style="width: 90%; cellspacing: 0;">
											<thead>
												<tr>
													<th>유형</th>
													<th>제목</th>
													<th>내용</th>
													<th>수정일</th>
													<th>등록일</th>
												</tr>

											</thead>
											<tbody>
												<tr>
													<td>글</td>
													<td>제목</td>
													<td>내용</td>
													<td>수정일</td>
													<td>등록일</td>
												</tr>
												<tr>
													<td>업무</td>
													<td>제목</td>
													<td>내용</td>
													<td>수정일</td>
													<td>등록일</td>
												</tr>
												<tr>
													<td>일정</td>
													<td>제목</td>
													<td>내용</td>
													<td>수정일</td>
													<td>등록일</td>
												</tr>
												<tr>
													<td>할일</td>
													<td>제목</td>
													<td>내용</td>
													<td>수정일</td>
													<td>등록일</td>
												</tr>
												<tr>
													<td>할일</td>
													<td>제목</td>
													<td>내용</td>
													<td>수정일</td>
													<td>등록일</td>
												</tr>
												<tr>
													<td>할일</td>
													<td>제목</td>
													<td>내용</td>
													<td>수정일</td>
													<td>등록일</td>
												</tr>
												<tr>
													<td>할일</td>
													<td>제목</td>
													<td>내용</td>
													<td>수정일</td>
													<td>등록일</td>
												</tr>
												<tr>
													<td>할일</td>
													<td>제목</td>
													<td>내용</td>
													<td>수정일</td>
													<td>등록일</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						<!-- 즐겨찾기 끝 -->
					</div>

		<br>
					<div class="checks" align="left" style="margin-left: 1%; font-size: 23px; " >
						<form action="#">
							<span style="color: #42BBBA;"><label><input name="type" type="radio">&nbsp;글 &nbsp;&nbsp;&nbsp;&nbsp; </label></span>
							<span style="color: #42BBBA;"><label><input name="type" type="radio">&nbsp;업 무 &nbsp;&nbsp;&nbsp;&nbsp; </label></span>
							<span style="color: #42BBBA;"><label><input name="type" type="radio">&nbsp;일 정&nbsp;&nbsp;&nbsp;&nbsp; </label></span>
							<span style="color: #42BBBA;"><label><input name="type" type="radio">&nbsp;할 일&nbsp;&nbsp;&nbsp;&nbsp; </label></span>
							<span style="color: #42BBBA;"><label><input name="type" type="radio">&nbsp;투 표&nbsp;&nbsp;&nbsp;&nbsp;</label></span>
						</form>
					</div>
					
					<!-- 게시글시작 -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h1>게시글 제목</h1>
						</div>
						<div class="card-body">
							<!-- 게시글안쪽 -->
							테이블 넣을 공간
							<table>

							</table>
							<hr>
							<table style="width: 100%;">
								<tr>
									<td style="width: 20%;"><a href="#"
										class="btn btn-primary btn-icon-split btn-sm"> <span
											class="icon text-white-50"> <i class="far fa-heart"></i>
										</span> <span class="text">좋아요 0</span>
									</a></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%; float: right;"></td>
								</tr>
							</table>
						</div>
						<div class="px-3 py-5 bg-gradient-light text-white"
							style="height: 10px;">
							<input type="text" class="form-control" placeholder="답글을 입력하세요">
						</div>
					</div>
					<!-- 게시글끝 -->

					<!-- 게시글시작 -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h1>게시글 제목</h1>
						</div>
						<div class="card-body">
							<!-- 게시글안쪽 -->
							테이블 넣을 공간
							<table>

							</table>
							<hr>
							<table style="width: 100%;">
								<tr>
									<td style="width: 20%;"><a href="#"
										class="btn btn-primary btn-icon-split btn-sm"> <span
											class="icon text-white-50"> <i class="far fa-heart"></i>
										</span> <span class="text">좋아요 0</span>
									</a></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%; float: right;"></td>
								</tr>
							</table>
						</div>
						<div class="px-3 py-5 bg-gradient-light text-white"
							style="height: 10px;">
							<input type="text" class="form-control" placeholder="답글을 입력하세요">
						</div>
					</div>
					<!-- 게시글끝 -->


					<!-- 게시글시작 -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h1>게시글 제목</h1>
						</div>
						<div class="card-body">
							<!-- 게시글안쪽 -->
							테이블 넣을 공간
							<table>

							</table>
							<hr>
							<table style="width: 100%;">
								<tr>
									<td style="width: 20%;"><a href="#"
										class="btn btn-primary btn-icon-split btn-sm"> <span
											class="icon text-white-50"> <i class="far fa-heart"></i>
										</span> <span class="text">좋아요 0</span>
									</a></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%; float: right;"></td>
								</tr>
							</table>
						</div>
						<div class="px-3 py-5 bg-gradient-light text-white"
							style="height: 10px;">
							<input type="text" class="form-control" placeholder="답글을 입력하세요">
						</div>
					</div>
					<!-- 게시글끝 -->

					<!-- 게시글시작 -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h1>게시글 제목</h1>
						</div>
						<div class="card-body">
							<!-- 게시글안쪽 -->
							테이블 넣을 공간
							<table>

							</table>
							<hr>
							<table style="width: 100%;">
								<tr>
									<td style="width: 20%;"><a href="#"
										class="btn btn-primary btn-icon-split btn-sm"> <span
											class="icon text-white-50"> <i class="far fa-heart"></i>
										</span> <span class="text">좋아요 0</span>
									</a></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%; float: right;"></td>
								</tr>
							</table>
						</div>
						<div class="px-3 py-5 bg-gradient-light text-white"
							style="height: 10px;">
							<input type="text" class="form-control" placeholder="답글을 입력하세요">
						</div>
					</div>
					<!-- 게시글끝 -->

					<!-- 게시글시작 -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h1>게시글 제목</h1>
						</div>
						<div class="card-body">
							<!-- 게시글안쪽 -->
							테이블 넣을 공간
							<table>

							</table>
							<hr>
							<table style="width: 100%;">
								<tr>
									<td style="width: 20%;"><a href="#"
										class="btn btn-primary btn-icon-split btn-sm"> <span
											class="icon text-white-50"> <i class="far fa-heart"></i>
										</span> <span class="text">좋아요 0</span>
									</a></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%; float: right;"></td>
								</tr>
							</table>
						</div>
						<div class="px-3 py-5 bg-gradient-light text-white"
							style="height: 10px;">
							<input type="text" class="form-control" placeholder="답글을 입력하세요">
						</div>
					</div>
					<!-- 게시글끝 -->




				</div>
				<!-- /.container-fluid -->

				<!-- Begin Page Content -->
				<div class="container-fluid"></div>
				<!-- End of Main Content -->

				<!-- Footer -->
				<footer class="sticky-footer bg-white">
					<div class="container my-auto">
						<div class="copyright text-center my-auto">
							<span>Copyright &copy; Your Website 2020</span>
						</div>
					</div>
				</footer>
				<!-- End of Footer -->

			</div>
			<!-- End of Content Wrapper -->

		</div>
		<!-- End of Page Wrapper -->

		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fas fa-angle-up"></i>
		</a>

		<!-- Logout Modal-->
		<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Ready to
							Leave?</h5>
						<button class="close" type="button" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">Ã</span>
						</button>
					</div>
					<div class="modal-body">Select "Logout" below if you are
						ready to end your current session.</div>
					<div class="modal-footer">
						<button class="btn btn-secondary" type="button"
							data-dismiss="modal">Cancel</button>
						<a class="btn btn-primary" href="login.jsp">Logout</a>
					</div>
				</div>
			</div>
		</div>

		<!-- Bootstrap core JavaScript-->
		<script src="/hwabo/resources/maincss/vendor/jquery/jquery.min.js"></script>
		<script
			src="/hwabo/resources/maincss/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

		<!-- Core plugin JavaScript-->
		<script
			src="/hwabo/resources/maincss/vendor/jquery-easing/jquery.easing.min.js"></script>

		<!-- Custom scripts for all pages-->
		<script src="/hwabo/resources/maincss/js/sb-admin-2.min.js"></script>

		<!-- Page level plugins -->
		<script
			src="/hwabo/resources/maincss/vendor/datatables/jquery.dataTables.min.js"></script>
		<script
			src="/hwabo/resources/maincss/vendor/datatables/dataTables.bootstrap4.min.js"></script>

		<!-- Page level custom scripts -->
		<script src="/hwabo/resources/maincss/js/demo/datatables-demo.js"></script>
</body>

</html>
