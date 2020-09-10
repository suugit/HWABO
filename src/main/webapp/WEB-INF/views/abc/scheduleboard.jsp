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
	#counter:focus {outline:none;}
	
	#counter{margin: 0;}
	</style>
</head>


<body id="page-top">

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
				<div class="sidebar-brand-text mx-3">
					SB Admin <sup>2</sup>
				</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item"><a class="nav-link" href="index.jsp"> <i
					class="fas fa-fw fa-tachometer-alt"></i> <span>Dashboard</span></a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Interface</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseTwo"
				aria-expanded="true" aria-controls="collapseTwo"> <i
					class="fas fa-fw fa-cog"></i> <span>Components</span>
			</a>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Custom Components:</h6>
						<a class="collapse-item" href="buttons.jsp">Buttons</a> <a
							class="collapse-item" href="cards.jsp">Cards</a>
					</div>
				</div></li>

			<!-- Nav Item - Utilities Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseUtilities"
				aria-expanded="true" aria-controls="collapseUtilities"> <i
					class="fas fa-fw fa-wrench"></i> <span>Utilities</span>
			</a>
				<div id="collapseUtilities" class="collapse"
					aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Custom Utilities:</h6>
						<a class="collapse-item" href="utilities-color.jsp">Colors</a> <a
							class="collapse-item" href="utilities-border.jsp">Borders</a> <a
							class="collapse-item" href="utilities-animation.jsp">Animations</a>
						<a class="collapse-item" href="utilities-other.jsp">Other</a>
					</div>
				</div></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">Addons</div>

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapsePages"
				aria-expanded="true" aria-controls="collapsePages"> <i
					class="fas fa-fw fa-folder"></i> <span>Pages</span>
			</a>
				<div id="collapsePages" class="collapse"
					aria-labelledby="headingPages" data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded">
						<h6 class="collapse-header">Login Screens:</h6>
						<a class="collapse-item" href="login.jsp">Login</a> <a
							class="collapse-item" href="register.jsp">Register</a> <a
							class="collapse-item" href="forgot-password.jsp">Forgot
							Password</a>
						<div class="collapse-divider"></div>
						<h6 class="collapse-header">Other Pages:</h6>
						<a class="collapse-item" href="404.jsp">404 Page</a> <a
							class="collapse-item" href="blank.jsp">Blank Page</a>
					</div>
				</div></li>

			<!-- Nav Item - Charts -->
			<li class="nav-item"><a class="nav-link" href="charts.jsp">
					<i class="fas fa-fw fa-chart-area"></i> <span>Charts</span>
			</a></li>

			<!-- Nav Item - Tables -->
			<li class="nav-item active"><a class="nav-link"
				href="tables.jsp"> <i class="fas fa-fw fa-table"></i> <span>Tables</span></a>
			</li>

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
								$('#contentText').on("propertychange change keyup paste input", function() {
											var content = $(this).val();
											$('#counter').val(200 - content.length);

											if (content.length > 200) {
												$(this).val(
														$(this).val()
																.substring(0, 200));
											}
										});
								
 								$("#sample5_address").on("click", function(){
									if($(this).val().length == 0 ){
										sample5_execDaumPostcode()
									}
								});
 								
 								$("#spostInsert").on("submit", function(){
 									
 									
 									
 								});

 								
 								
 								
							});//document.ready 끝
						</script>

						<div class="card-body">
							<!-- 게시글안쪽 -->
						<form action="sinsert.do" id="spostInsert" method="post">
						<input type="hidden" name="swriter" value="정다운">
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
										<td colspan="5"><span style="float: left;"><i class="fa fa-pen"></i>&nbsp;제 목</span>											
												<input type="text" name="stitle" 	class="form-control" placeholder="일정 제목을 입력하세요" required="required"></td>
									</tr>
									<tr>
										<td colspan="5">&nbsp;</td>
									</tr>
									<tr>
										<td width="20%"><span style="float: left;"><i
												class="far fa-calendar-alt"></i>&nbsp;시 작 날 짜</span><input
											type="datetime-local" class="form-control" name="beforesstartday" id="beforestart" required="required"></td>

										<td width="20%"><span style="float: left;"><i
												class="far fa-calendar-alt"></i>&nbsp;끝 날 짜</span><input
											type="datetime-local" class="form-control" name="beforesendday"  id="beforeend" required="required"></td>
									</tr>
									<tr>
										<td colspan="5">&nbsp;</td>
									</tr>
									<tr>
										<td colspan="4"><span style="float: left;"><i
												class="fas fa-map-marker-alt"></i>&nbsp;장 소</span>
		<input type="text" id="sample5_address" placeholder="장소를 입력하세요" class="form-control" name="splace">
<input type="button" onclick="sample5_execDaumPostcode()" value="주소 검색"  class="form-control"><br>
<div id="map" style="width:100%;height:150px;margin-top:10px;display:none"></div>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ab3b0466fa883da1d7216010325a5bcc&libraries=services"></script>
<script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
            draggable: false, //지도 이동 금지
            level: 4 // 지도의 확대 레벨
        };

    //지도를 미리 생성
    var map = new daum.maps.Map(mapContainer, mapOption);
    //주소-좌표 변환 객체를 생성
    var geocoder = new daum.maps.services.Geocoder();
    //마커를 미리 생성
    var marker = new daum.maps.Marker({
        position: new daum.maps.LatLng(37.537187, 127.005476),
        map: map
    });


    function sample5_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = data.address; // 최종 주소 변수

                // 주소 정보를 해당 필드에 넣는다.
                document.getElementById("sample5_address").value = addr;
                // 주소로 상세 정보를 검색
                geocoder.addressSearch(data.address, function(results, status) {
                    // 정상적으로 검색이 완료됐으면
                    if (status === daum.maps.services.Status.OK) {

                        var result = results[0]; //첫번째 결과의 값을 활용

                        // 해당 주소에 대한 좌표를 받아서
                        var coords = new daum.maps.LatLng(result.y, result.x);
                        // 지도를 보여준다.
                        mapContainer.style.display = "block";
                        map.relayout();
                        // 지도 중심을 변경한다.
                        map.setCenter(coords);
                        // 마커를 결과값으로 받은 위치로 옮긴다.
                        marker.setPosition(coords)
                    }
                });
            }
        }).open();
    }
</script>

											</td>
											<td>

										
										</td>	
									</tr>

									<tr>
										<td colspan="5">&nbsp;</td>
									</tr>
									<tr>
										<td colspan="1" style="width: 20%;"><span
											style="float: left;"><i class="far fa-bell"></i>&nbsp;알
												림</span> <select name="salarm" class="form-control">
												<option value="no">--- 알림 없음 ---</option>
												<option value="10mm">10분 전 알림</option>
												<option value="30mm">30분 전 알림</option>
												<option value="1HH">1시간 전 알림</option>
												<option value="2HH">2시간 전 알림</option>
												<option value="3HH">3시간 전 알림</option>
												<option value="1day">1일 전 알림</option>
												<option value="2day">2일 전 알림</option>
												<option value="7day">7일 전 알림</option>
										</select></td>
										<td colspan="4">&nbsp;</td>
									</tr>
									<tr>
										<td colspan="5">&nbsp;</td>
									</tr>
									<tr>
										<td colspan="5"><span style="float: left;"><i class="far fa-keyboard"></i>&nbsp;메 모</span>
										<span style="float: left;">&nbsp;&nbsp;&nbsp;( 남은글자수 : <input size="2px;"  type="text"
												readonly value="200" name="counter" id="counter"
												style="border: none;">)</span>
<textarea name="scontent" id="contentText" cols="30" rows="10"	class="form-control"	onkeypress="onTestChange();" style="width: 100%; height: 200px; overflow: auto; resize: none;"></textarea> </td>
									</tr>
									
									<tr>
										<td colspan="5">&nbsp;</td>
									</tr>
									<tr>
										<td colspan="2"></td>
										<!--  #f8f9fc   -->
										<td>
										<select name="sopen" class="form-control">
											<option value="y" selected>전체공개</option>
											<option value="n">나만보기</option>
										</select>
										</td>
										
										<td><a class="btn btn-success btn-icon-split"
											href="javascript: spostInsert.submit()" style="width: 90%;">
												<span class="text">등록</span>
										</a></td>
										<td><a href="javascript:spostInsert.reset();"
											class="btn btn-danger btn-icon-split" style="width: 90%;">
												<span class="text">취소</span>
										</a></td>
									</tr>
								</table>
							</form>

<script>
  document.getElementById('beforestart').value= new Date().toISOString().slice(0, 16);
  document.getElementById('beforeend').value= new Date().toISOString().slice(0, 16);
</script>
							
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
