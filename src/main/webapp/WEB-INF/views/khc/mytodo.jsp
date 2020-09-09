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
<!-- 1.topbar추가 -->
<!-- Topbar2 -->
        <c:import url="/WEB-INF/views/khc/topbar.jsp"></c:import>
<!-- End of Topbar -->

<!-- 2.바로아래div추가 및 임포트 추가  -->
<div style="width:100%;display:flex;justify-content:center;align-item:center;">
<!-- Sidebar2right -->
     <c:import url="/WEB-INF/views/khc/entersideFixed.jsp"></c:import>
<!-- End of Sidebar2right -->

<!-- 3. id="wrapper" 스타일 1300px설정 -->
  <!-- Page Wrapper -->
  <div id="wrapper"  style="width:1300px;">

<!-- 4. Sidebar 사이드바 영역 width:17%추가 -->
<!-- Sidebar -->
<div style="width:17%"></div>
<!-- End of Sidebar -->

<!-- 5. Content Wrapper 몸통 영역 width:62%추가 -->
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column"  style="width:62%;">
				
   <!-- Topbar Navbar -->
        	<br><br><br><br>
        <!-- End of Topbar -->
				
				
	<!-- Begin Page Content -->
				<div class="container-fluid">
					<!-- Page Heading -->
					<h1 class="h3 mb-2 text-gray-800"></h1>
					<p class="mb-4"></p>

					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<script type="text/javascript"
							src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
						<script type="text/javascript">
							$(function() {
								$('#contentText').keyup(
										function(e) {
											var content = $(this).val();
											$('#counter').val(
													200 - content.length);

											if (content.length > 200) {
												$(this).val(
														$(this).val()
																.substring(0,
																		200));
											}
										});
							});
						</script>

						<div class="card-body">
							<!-- 게시글안쪽 -->
							<form action="blank.do" id="mainInsert">
								<table style="text-align: center; width: 100%;">
									<tr class="m-0 font-weight-bold text-primary">
										<td style="width: 20%;"><span>글작성</span></td>
										<td style="width: 20%;"><span>업무</span></td>
										<td style="width: 20%;"><span>일정</span></td>
										<td style="width: 20%;"><span>할일</span></td>
										<td style="width: 20%;"><span>투표</span></td>
									</tr>
									<tr>
										<td colspan="5">
											<hr>
										</td>
									</tr>
									<tr>
										<td colspan="5"><span style="float: left;"><i
												class="fa fa-pen"></i>&nbsp;할일제목</span><input type="text"
											class="form-control" placeholder="할일제목을 입력하세요"></td>
									</tr>
									
								
									<tr>
										<td width="20%"><span style="float: left;"><i
												class="far fa-calendar-alt"></i>&nbsp;할일의 날짜</span><input
											type="datetime-local" class="form-control"></td>

									</tr>
									




										<td colspan="5"><span style="float: left;"><i class="far fa-keyboard"></i>&nbsp;메 모</span>
										 <textarea
												name="contentText" id="contentText" cols="30" rows="10"
												class="form-control"
												style="width: 100%; height: 200px; overflow: auto; resize: none;">
										</textarea> <span class="txsub form-control">남은글자수 : <input type="text"
												readonly value="100" name="counter" id="counter"
												style="border: none;"></span></td>
									</tr>
									<tr>
										<td colspan="5">&nbsp;</td>
									</tr>
									<tr>
										<td colspan="3"></td>
										<td><a class="btn btn-success btn-icon-split"
											href="javascript:mainInsert.submit();" style="width: 90%;">
												<span class="text">등록</span>
										</a></td>
										<td><a href="javascript:mainInsert.reset();"
											class="btn btn-danger btn-icon-split" style="width: 90%;">
												<span class="text">취소</span>
										</a></td>
									</tr>
								</table>
							</form>
						</div>
					</div>







				</div>
				<!-- /.container-fluid -->

			</div>
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
		<!-- 7. 채팅넣을 공간 div새로만들어서 style="width:25%" 옵션 주기  -->
    <div style="width:25%"></div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->
<!-- div flex -->
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
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">Ã</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
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
