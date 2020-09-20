4 

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
</style>
</head>

<body id="page-top">

	<!-- 11111111111111111 -->
	<c:import url="/WEB-INF/views/suugit/topbar.jsp"></c:import>

	<div
		style="width: 100%; display: flex; justify-content: center; align-item: center;">
		<!-- Sidebar2right -->
		<c:import url="/WEB-INF/views/red/sideFixed.jsp"></c:import>
		<!-- End of Sidebar2right -->
		<!-- 111111111111111111 -->


		<!-- Page Wrapper -->
		<div id="wrapper" style="width: 1300px;">

			<!-- Sidebar -->
			<div style="width: 17%"></div>
			<!-- End of Sidebar -->

			<!-- Content Wrapper -->
			<div id="content-wrapper" class="d-flex flex-column bg-white"
				style="width: 62%;">

				<!-- Main Content -->
				<div id="content">

					<!-- Topbar -->
					<br> <br> <br> <br>
					<!-- End of Topbar -->

					<!-- Begin Page Content -->
					<div class="container-fluid col-text-left float-left"
						style="min-width: fit-content"">

					 <div class="card mb-4">
					        <div class="card-header">
					          <ul class="nav nav-tabs card-header-tabs" id="writeForm" role="tablist">
					            <li class="nav-item">
					            <a class="nav-link active" href="#gnrlwrite" role="tab" aria-controls="gnrlwrite" aria-selected="true">글 작성</a>
					            </li>
					            <li class="nav-item">
					              <a class="nav-link"  href="#tap2" role="tab" aria-controls="tap2" aria-selected="false">업무</a>
					            </li>
					            <li class="nav-item">
					              <a class="nav-link" href="#tap3" role="tab" aria-controls="tap3" aria-selected="false">일정</a>
					            </li>
					            <li class="nav-item">
					              <a class="nav-link" href="#tap4" role="tab" aria-controls="tap4" aria-selected="false">할일</a>
					            </li>
					            <li class="nav-item">
					              <a class="nav-link" href="#tap5" role="tab" aria-controls="tap5" aria-selected="false">투표</a>
					            </li>
					          </ul>
					        </div>
					        <form action="blank.do" id="mainInsert" > 
					        <div class="card-body ">
					         <!--  <h4 class="card-title">글 작성</h4> -->
					          
					           <div class="tab-content mt-3">
					           <!-- 글 작성  -->
					            <div class="tab-pane active" id="gnrlwrite" role="tabpanel">
					            <input type="text" class="form-control mb-1" placeholder="제목(선택값)">
					              <textarea id="boardtext" rows="6" class="w-100 form-control "></textarea>
						            <div class="form-inline m-2 border-primary">
						            <i class="fa fa-link mr-2"><a href="#"></a></i>
						            <i class="fa fa-calendar-alt mr-2"></i>
						            <i class="fa fa-map-marker-alt mr-2"></i>
						            <i class="fa fa-code mr-5"></i>
						            <i class="fa fa-hashtag mr-2"></i>
						            <i class="fa fa-at mr-2" ></i>
						            <button class="ml-auto mr-2 btn btn-sm btn-success" style="padding:4px 30px;" onclick="javascript:mainInsert.submit();">등록</button>
						            <button class="btn btn-sm btn-danger " onclick="javascript:mainInsert.reset();">취소</button>
					            	</div>
					            </div>
					            
					            
					            <!-- 업무 -->
					            <div class="tab-pane" id="tap2" role="tabpanel">
					              <input type="text" class="form-control mb-1" placeholder="일정 제목을 입력하세요">
					              <textarea id="boardtext" rows="6" class="w-100 form-control "></textarea>
						            <div class="form-inline m-2 border-primary">
						            
						            <i class="fa fa-hashtag mr-2"></i>
						            <i class="fa fa-at mr-2" ></i>
						            <button class="ml-auto mr-2 btn btn-sm btn-success " onclick="javascript:mainInsert.submit();">등록</button>
						            <button class="btn btn-sm btn-danger " onclick="javascript:mainInsert.reset();">취소</button>
					            	</div>
					            </div>
					            
					            <!-- 일정 -->
					            <div class="tab-pane" id="tap3" role="tabpanel">
					              <input type="text" class="form-control mb-1" placeholder="일정 제목을 입력하세요">
					              <div class="row mt-2">
					            <p class="form-control-static"><i class="fa fa-clock ml-4 mt-2"></i></p>
					              <div class="col-5"><input type="date" class="form-control"></div>
					              <label class="form-control-label h3">~</label>
					              <div class="col-5"><input type="date" class="form-control"></div>
					              </div>
					              <textarea id="boardtext" rows="6" class="w-100 form-control "></textarea>
						            <div class="form-inline m-2 border-primary">
						            <i class="fa fa-hashtag mr-2"></i>
						            <i class="fa fa-at mr-2" ></i>
						            <button class="ml-auto mr-2 btn btn-sm btn-success " onclick="javascript:mainInsert.submit();">등록</button>
						            <button class="btn btn-sm btn-danger " onclick="javascript:mainInsert.reset();">취소</button>
					            	</div>
					            </div>
					            
					          	
					            <!-- 할일 -->
					         <div class="tab-pane" id="tap3" role="tabpanel">
					              <input type="text" class="form-control mb-1" placeholder="일정 제목을 입력하세요">
					              <div class="row mt-2">
					            <p class="form-control-static"><i class="fa fa-clock ml-4 mt-2"></i></p>
					              <div class="col-5"><input type="date" class="form-control"></div>
					              <label class="form-control-label h3">~</label>
					              <div class="col-5"><input type="date" class="form-control"></div>
					              </div>
					              <textarea id="boardtext" rows="6" class="w-100 form-control "></textarea>
						            <div class="form-inline m-2 border-primary">
						            <i class="fa fa-hashtag mr-2"></i>
						            <i class="fa fa-at mr-2" ></i>
						            <button class="ml-auto mr-2 btn btn-sm btn-success " onclick="javascript:mainInsert.submit();">등록</button>
						            <button class="btn btn-sm btn-danger " onclick="javascript:mainInsert.reset();">취소</button>
					            	</div>
					            </div>
					            
					              <!--투표 -->
					            <div class="tab-pane" id="tap3" role="tabpanel">
					              <input type="text" class="form-control mb-1" placeholder="일정 제목을 입력하세요">
					              <div class="row mt-2">
					            <p class="form-control-static"><i class="fa fa-clock ml-4 mt-2"></i></p>
					              <div class="col-5"><input type="date" class="form-control"></div>
					              <label class="form-control-label h3">~</label>
					              <div class="col-5"><input type="date" class="form-control"></div>
					              </div>
					              <textarea id="boardtext" rows="6" class="w-100 form-control "></textarea>
						            <div class="form-inline m-2 border-primary">
						            <i class="fa fa-hashtag mr-2"></i>
						            <i class="fa fa-at mr-2" ></i>
						            <button class="ml-auto mr-2 btn btn-sm btn-success " onclick="javascript:mainInsert.submit();">등록</button>
						            <button class="btn btn-sm btn-danger " onclick="javascript:mainInsert.reset();">취소</button>
					            	</div>
					            </div>
					             
					            
					          </div>
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
			<div style="width: 25%"></div>
		</div>
		<!-- End of Page Wrapper -->
	</div>
	<!-- div flex -->
	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>
	<!--사진변경모달창-->
	<div class="modal fade" id="imgUpdateModal" tabindex="-1" role="dialog"
		aria-labelledby="imgModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title col-text-left" id="imgModalLabel">사진업로드</h4>

				</div>
				<div class="modal-body ">변경할 사진 파일을 선택해주세요</div>
				<div class="col-sm-4 justify-content-center">
					<table>
						<form action="upuimg.do" id="updateUimgForm" method="post"
							enctype="multipart/form-data">
							<tr id="preview"></tr>
					</table>
					<label class="btn btn-light small" onclick="fileUpload"> <input
						type="hidden" name="ucode" value="${sessionScope.ucode}">
						<input type="file" name="file" id="file" style="display: none"
						accept=".jpg,.png,.svg"> <i class="fa fa-link ">&nbsp;파일
							선택</i>
					</label>

				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-primary">저장하기</button>
					</form>
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				</div>

			</div>
		</div>
	</div>

	<!--비밀번호 변경 모달창 -->
	<div class="modal fade" id="pwdUpdateModal" tabindex="-1" role="dialog"
		aria-labelledby="pwdModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title col-text-left" id="pwdModalLabel">비밀번호변경</h4>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>

				</div>
				<div class="modal-body">
					<form action="uppwd.do" method="post" id="upPwdForm">
						<input type="hidden" name="ucode" value="${ucode}">
						<div class="form-group row">
							<label class="control-label mypage text-center col-md-4">현재
								비밀번호</label> <input class="form-control col-md-6" type="password"
								name="oldpwd">
						</div>
						<div class="form-group row">
							<label class="control-label mypage text-center col-md-4">새
								비밀번호</label> <input class="form-control col-md-6" type="password"
								name="newpwd">
						</div>
						<div class="form-group row">
							<label class="control-label mypage text-center col-md-4">새
								비밀번호 확인</label> <input class="form-control col-md-6" type="password"
								name="newpwdChk">
						</div>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-primary">변경하기</button>
					</form>
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>

	<!-- 회원탈퇴  모달-->
	<div class="modal fade" id="LeaveModal" tabindex="-1" role="dialog"
		aria-labelledby="LeaveModal" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalCenterTitle">회원 탈퇴</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">회원 탈퇴 시 어떠한 경우에도 계정을 복구할 수 없습니다.
					계속하시겠습니까?</div>
				<div class="modal-footer justify-content-center">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">닫기</button>
					<button type="button" class="btn btn-danger" onclick="delUser()">탈퇴하기</button>
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
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="resources/js/jquery-3.5.1.min.js"></script>
	<script type="text/javascript">
		function toggleModify() {
			var ele = $(event.target);
			if (ele.val() == '수정하기') {
				$('input[type=text]').removeClass('form-control-plaintext');
				$('input[type=text]').attr('readonly', false);
				$('#editBtn').removeClass('btn-primary')
				$('#editBtn').addClass('btn-success')
				ele.val('변경사항 저장');
			} else {
				$('#editBtn').addClass('btn-primary')
				$('#editBtn').removeClass('btn-success')
				ele.val('수정하기');
				$('#myInfoForm').submit();
			}

		}

		function delUser() {
			location.href = "deluser.do?ucode=${member.ucode}";
		}
		
		$('#btn_pwd').on('click', function() {
			$('#pwdUpdateModal').modal('show')
		})

		/* 			 $(function(){
		var responseMessage = "<c:out value="${message}" />";
		if(responseMessage != ""){
		    alert(responseMessage)
		}
		})  */
		

		
	</script>
</body>

</html>
