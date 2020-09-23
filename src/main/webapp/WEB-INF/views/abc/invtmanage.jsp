
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>
<html lang="kr">

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
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">
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
<link href="/hwabo/resources/maincss/css/github-markdown.css"
	rel="stylesheet">
<style>
.mypage {
	width: 80px;
	font-weight: bold;
	margin-top: 7px;
}

.upimgbtn {
	width: 90%;
	background-color: #F8F9FD;
	color: #858796;
	border-color: #d1d3e2;
}

.modal-backdrop {
	z-index: -1;
}

.modal {
	z-index: 1050;
}

.modal-backdrop {
	z-index: -1;
}

.thumbnail {
	background-color: #fff;
	width: 100px;
	height: 100px;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center center;
	border-color: red;
}

.thumbnail.round {
	border-radius: 10%;
	
}

.thumbnail.circle {
	background-color: #fff;
	border-radius: 100%;
	
	width:80px;
	height:80px;
}

#selected span {
	background-color: rgba(66, 182, 187, 0.5);
	padding: 0px 5px;
	margin: 0px 3px;
}
</style>
</head>

<body id="page-top">

	<!-- 11111111111111111 -->
	<c:import url="/WEB-INF/views/suugit/topbar.jsp"></c:import>

	<div
		style="width: 100%; display: flex; justify-content: center; align-item: center;">
		<!-- Sidebar2right -->
		<c:import url="/WEB-INF/views/suugit/leftsidebar.jsp"></c:import>
		<!-- End of Sidebar2right -->
		<!-- 111111111111111111 -->


		<!-- Page Wrapper -->
		<div id="wrapper" style="width: 1300px;">

			<!-- Sidebar -->
			<div style="width: 17%"></div>
			<!-- End of Sidebar -->

			<!-- Content Wrapper -->
			<div id="content-wrapper" class="d-flex flex-column bg-white"
				style="width: 82%;">

				<!-- Main Content -->
				<div id="content">

					<!-- Topbar -->
					<br> <br> <br> <br>
					<!-- End of Topbar -->

					<!-- Begin Page Content -->
					<div class="container-fluid col-text-left float-left"
						style="min-width: fit-content">

					 <div class="card mb-4" style="border-style:none; ">
					     
					        
					           <div class="card-body">
					          <ul class="nav nav-tabs" style="margin-bottom: 0px; width: 100%;" id="myTab" role="tablist">
							<li class="nav-item">
							    <a class="nav-link active" id="project-tab" data-toggle="tab" href="#project" role="tab" aria-controls="profile" aria-selected="true">전체업무</a>
							  </li>
							  <li class="nav-item">
							    <a class="nav-link " id="pmember-tab" data-toggle="tab" href="#pmember" role="tab" aria-controls="pmember" aria-selected="false">요청한 업무</a>
							  </li>
							  <li class="nav-item">
							    <a class="nav-link" id="npmember-tab" data-toggle="tab" href="#npmember" role="tab" aria-controls="npmember" aria-selected="false">요청받은 업무</a>
							  </li>
							  </ul>
					        </div>
					        
					        
		          
 <div class="tab-content mt-3">
 
<!--  업무 전체 모아보기 --> 
 <div class="tab-pane fade show active" id="project" role="tabpanel" aria-labelledby="nav-project-tab">

  
</div>
					          
					          
<!-- 요청한 업무 -->
<div class="tab-pane fade " id="pmember" role="tabpanel" aria-labelledby="nav-pmember-tab">
    
    
</div>
					       
			

<!-- 요청받은 업무 -->		       
<div class="tab-pane fade" id="npmember" role="tabpanel" aria-labelledby="nav-npmember-tab">

        
</div>
					          
					          
					          
					       
					       
					       
					       
					       
					       
</div><!-- tab-content mt-3 끝 -->
					      

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
			<div style="width: 25%"></div>
		</div>
		<!-- End of Page Wrapper -->
	</div>
	<!-- div flex -->
	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>
	
	
	<c:import url="/WEB-INF/views/suugit/modal.jsp"/>        
	
	<!-- Bootstrap core JavaScript-->
	<script src="/hwabo/resources/maincss/vendor/jquery/jquery.min.js"></script>
	<script src="/hwabo/resources/maincss/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="/hwabo/resources/maincss/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="/hwabo/resources/maincss/js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script
		src="/hwabo/resources/maincss/vendor/datatables/jquery.dataTables.min.js"></script>
	<script
		src="/hwabo/resources/maincss/vendor/datatables/dataTables.bootstrap4.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/bootstrap-select.min.js"></script>
	<!-- Page level custom scripts -->
	<script src="/hwabo/resources/maincss/js/demo/datatables-demo.js"></script>
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>


	
	</script>
</body>

</html>
