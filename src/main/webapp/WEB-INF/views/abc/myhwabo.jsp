<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList"%>
<%@ page import="com.beet.HWABO.spost.model.vo.Post" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<% ArrayList<Post> list = (ArrayList<Post>)request.getAttribute("list"); %>
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
<link href="/hwabo/resources/maincss/css/sb-admin-2.css"
	rel="stylesheet">

<!-- Custom styles for this page -->
<link
	href="/hwabo/resources/maincss/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">

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
		<div id="content-wrapper" class="d-flex flex-column bg-white"  style="width:62%;">

			<!-- Main Content -->
			<div id="content" style="width:100%;">

				<!-- Topbar -->
<br><br><br><br>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">




					<br>
					<div class="checks" align="left"
						style="margin-left: 1%; font-size: 23px;">
						<form action="#">
							<span style="color: #42BBBA;"><label><input	name="c" type="radio">&nbsp;글	&nbsp;&nbsp;&nbsp;&nbsp; </label></span> 
							<span style="color: #42BBBA;"><label><input	name="b" type="radio">&nbsp;업 무&nbsp;&nbsp;&nbsp;&nbsp; </label></span> 
							<span style="color: #42BBBA;"><label><input	name="s" type="radio">&nbsp;일 정&nbsp;&nbsp;&nbsp;&nbsp; </label></span> 
						</form>
					</div>
<c:if test="${!empty list }">
	<c:import url="/WEB-INF/views/abc/hwabofeed.jsp"></c:import>
</c:if>
<c:if test="${!empty list }">
	작성하신 글이 없네요 ~
</c:if>


	
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
			<!-- End of Content Wrapper -->
			
<div style="width:25%"></div>
		</div>
		<!-- End of Page Wrapper -->
</div>
		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fas fa-angle-up"></i>
		</a>

		
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
