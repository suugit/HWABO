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

	<!-- Page Wrapper -->
	<div id="wrapper">




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
				
	<script type="text/javascript"	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">				
					

	$(function(){
	//보관함
	$("#cabinetshow").on("click", function(){
		
		
		$.ajax({
			url: "insertcabinet.do",
			data: {ucode: $("#ucode").val() , no: $("#no").val() },  //보낼값 {} 안에 쓰면 object, 객체 취급
			type: "post",
			success: function(){
				
					alert("보관함 보내기 성공 !");
					console.log("보관함 보내기 성공 !");
	
			},
			error: function(request, status, errorData){
				console.log("error code : " + request.status + "\nMessage : "+ request.responseText + "\nError : " + errorData);
			}
		}); //ajax
	});
	
	 $(".liketoggle").click(function() {
		   $(this).find("i").toggleClass("fas far");
		   $(this).find("span").text(function(i, v) {
		     return v === '보관' ? '보관됨' : '보관'
		   })
		 });
	
	
});				

	</script>					

		 <!--  리스트  -->
           
           <c:forEach var="vpost" items="${requestScope.list }">
           <div class="card shadow mb-4">
           
           	
           
           
				 <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
				<h6 class="m-0 font-weight-bold text-primary">
				
				<i class="fas fa-user-circle"></i>
				${vpost.vwriter}<br>${vpost.venrolldate }</h6>
			<!-- 	<button type="submit" class="btn btn-custom btn-sm liketoggle" name="like"><span>보관</span> <i class="far fa-bookmark"></i></button>
					 -->
					
					
				<!-- 수정삭제 드롭다운 -->	
                  <div class="dropdown no-arrow">
                  
                <!-- 보관함 담기여부 -->  
				 <!--   <button id="cabinetshow" class="btn btn-custom btn-sm ">
			   <i class="far fa-bookmark"></i></button>
           		 -->
               <!-- <form action="insertcabinet.do" method="post"> -->
               <!--  보관 버튼눌럿을시 게시글 vno값과 member 의 ucode 를 보냄 (프로젝트 보관함)  -->
               <input type="hidden" id="ucode" value="${sessionScope.ucode }">
			   <input type="hidden" id="no" value="${vpost.vno }">
               <button id="cabinetshow" class="btn btn-custom btn-sm liketoggle" name="like">
           	   <span>보관</span> <i class="far fa-bookmark"></i></button>
				
           
              <!--  </form> -->
			 	<!--  여기서 부터는 게시글 작성자와 프로젝트로그인 member의 이름이 같을때 (단, 중복처리는 안됨) -->
			 	<!--  예를들어 구영민이라는 이름이 2명이면 각자의 것을 건드릴수 있음!! -->
			 	<!--  일단은 작성자와 member의 이름이 같을때는 수정과 삭제를 진행할수 있음 같지않으면 안뜸 -->
		  		<c:if test="${sessionScope.uname eq vpost.vwriter }">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Dropdown Header:</div>
                      <c:url var="vupdate" value="vpostupdate.do">
                      <!--  수정을 눌럿을시에 vno 값을 받아서 넘김 -->
                      	<c:param name="vno" value="${vpost.vno }"/>
                      </c:url>
                     	<a class="dropdown-item" href="${vupdate }">수정</a>
                     	
                       <c:url var="vdelete" value="vpostdelete.do">
                        <!--  수정을 눌럿을시에 vno 값을 받아서 넘김 -->
                      	<c:param name="vno" value="${vpost.vno }"/>
                    	
                      </c:url>
                      <a class="dropdown-item" href="${vdelete }">삭제</a>
                 		
                    </div>
                    </c:if>
                  </div> <!-- 드롭다운 끝 -->
					
				</div>
				<!--  여기까지가 보관함 처리와, 본인 게시글 수정 삭제 버튼에대한 게시글 조회 뷰 -->
					<div class="card-body">
							<!-- 게시글조회시 게시글에 대한 내용 -->
						
						<table>	
						<tr>
						<td>
							   제 목 : ${vpost.vtitle}
							   <td>
							</tr>
						</table>	
							
			
						<hr>	
							
						<table>
							<tr>
							   <td>내 용 : </td>
								<td> ${vpost.vcontent}</td>
							</tr>
						</table>
							
						
						
							<hr>
							<hr>
							<table>
							<tr>
							<td>
							<!--  현재사용자가  votecheck 컬럼에 들어가잇지않다면 투표하기(voteinsert.do) 버튼 -->
							<!--  현재사용자가 votecheck 컬럼에 들어가잇다면 투표취소(voteupdate.do) 혹은 (votedelete.do) 버튼 -->
							<!--  여기는 따로질문해보기 !!! -->
							<%-- <c:if test=""></c:if> --%>
							 <button onclick="javascript:location.href='voteinsert.do'" style="width:120px;height:60px;background-color:black;color:white;">투표하기</button>
							 	 
							 	<%--  <c:if test="">
							 	 <button onclick="javascript:location.href='voteupdate.do'" style="width:120px;height:60px;background-color:black;color:white;">투표취소</button>
								</c:if> --%>
							</td>
							</tr>
							</table>
						</div>
						
					</div>
				</c:forEach>
				
           
           
           
           
              
            
          </div>
          </div>

			
				<c:if test="${ empty sessionScope.uname} ">
					sessionScope.uname 값 : ${ sessionScope.uname }						
				</c:if>
				<c:if test="${ ! empty sessionScope.uname }">
				
					sessionScope.uname 값 : ${ sessionScope.uname }
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