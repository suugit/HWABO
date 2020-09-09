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
	
<style type="text/css">

.online:link { text-decoration:none; color: black;}

.online:visited { text-decoration:none;color: black;}

.online:active {text-decoration:none; color: black; }

.online:hover { text-decoration:none; color:#708090;}

</style>

</head>

<body id="page-top">
<!-- 1.탑바 임포트 -->
	<c:import url="/WEB-INF/views/abc/topbar.jsp"></c:import>
	
<!-- 2.바로아래div추가 및 임포트 추가  -->
	<div style="width:100%;display:flex;justify-content:center;align-item:center;">
<!-- Sidebar2right -->
     <c:import url="/WEB-INF/views/abc/entersideFixed.jsp"></c:import>
<!-- End of Sidebar2right -->


	<!-- Page Wrapper -->
	<div id="wrapper" style="width:1300px;">

		<!-- Sidebar -->
<div style="width:17%"></div>
		<!-- End of Sidebar -->


		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column"  style="width:62%;">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
<br><br><br><br>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<div class="row">
						<!-- 업무 모아보기 시작 -->
						<div class="col-md-10">
							<div class="card mb-4 py-3 border-left-info">
								<div style="margin-top: 0px;">
																	<h3>&nbsp;&nbsp;제 목(프로젝트전체업무 등등)</h3>
									<hr>
								</div>
								<!-- 게시글안쪽 -->

								<div class="card-body" style="height: 680px; overflow: auto;">
									<div class="table-responsive">
										<table class="table table-bordered" id="dataTable"
											style="width: 95%; cellspacing: 0;">
											<thead>
												<tr>
													<th>번호</th>
													<th>진행상황</th>
													<th>제목</th>
													<th>담당자</th>
													<th>시작일</th>
													<th>마감일</th>
													<th>작성자</th>
													<th>등록일</th>
												</tr>

											</thead>
											<tbody>
											<c:forEach var="pp"  begin="1" end="5" step="1"> 
												<tr>
													<td>${ pp }</td>
													<td>요청</td>
													<td>제목입니다</td>
													<td>이순신, 신사임당</td>
													<td>2020-08-20</td>
													<td>2020-09-01</td>
													<td>홍길동</td>
													<td>2020-08-${pp + 1}</td>
												</tr>
												</c:forEach>
												<c:forEach var="pp"  begin="6" end="10" step="1"> 
												<tr>
													<td>${ pp }</td>
													<td>진행</td>
													<td>제목입니다</td>
													<td>나나나, 가가가, 신사임당</td>
													<td>2020-08-27</td>
													<td>2020-09-31</td>
													<td>홍길동</td>
													<td>2020-08-${pp + 1}</td>
												</tr>
												</c:forEach>
												<c:forEach var="pp"  begin="11" end="13" step="1"> 
												<tr>
													<td>${ pp }</td>
													<td>완료</td>
													<td>제목입니다</td>
													<td>랄랄랄, 가가가</td>
													<td>2020-09-27</td>
													<td>2020-10-21</td>
													<td>홍길동</td>
													<td>2020-08-${pp + 1}</td>
												</tr>
												</c:forEach>
												<c:forEach var="pp"  begin="14" end="17" step="1"> 
												<tr>
													<td>${ pp }</td>
													<td>피드백</td>
													<td>피드백의 title</td>
													<td>랄랄랄, 가가가</td>
													<td>2020-09-02</td>
													<td>2020-09-21</td>
													<td>김철수</td>
													<td>2020-08-${pp + 1}</td>
												</tr>
												</c:forEach>
											
											</tbody>
										</table>				
								</div>
							</div>
						</div>
						<!-- 업무 모아보기 끝 -->

					</div>

					<br>


					<!-- 게시글시작 -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h3>게시글 제목</h3>
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



</div>
			</div>
			<!-- End of Content Wrapper -->
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
		<!-- End of Page Wrapper -->
<div style="width:25%"></div>

</div>
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
