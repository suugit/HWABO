<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList"%>
<%@ page import="com.beet.HWABO.bpost.model.vo.Bpost" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% ArrayList<Bpost> list = (ArrayList<Bpost>)request.getAttribute("list"); %>
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

<script type="text/javascript"	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">


$(document).ready(function(){
});

function bkindshow(){
$("#'${b.bkind}'").button('toggle')

}

var names = "";
function addbcharge(){
	var name = $(event.target).text();
	names += name + " ";
	
	 $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i> </span>');
	 //$('#bform').val(name); 
	 
	 $('#bform').val(names);
	 alert($("#bform").val()); 
	
}

function unSelected(){
	$(event.target).parent().remove();
}

function validate(){
	//날짜에 빈 공백이 들어오니까 공백일때 널로 바꿔라 라는 내용을 추가한다
	return true;
}

</script>

<script type="text/javascript"	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
function sendInsert(index){
	console.log("sendInsert : " + index);
	console.log($("#no_"+ index).val());
	$.ajax({	      
	      url: "insertcabinet.do",
	      data: {no: $("#no_"+ index).val(), ucode: $("#ucode_" + index).val(), pnum: $("#pnum_" + index).val()},     
	      type: "post",
	      success: function(result){
	         if(result == "ok"){
	            alert("보관함 보내기 성공 !");
	            console.log("보관함 보내기 성공 !");
	         }else{
	            alert("값이 보내졌지만 결과는 ok가 아님");
	         }
	      
	      },
	      error: function(request, status, errorData){
	    	 
	            console.log("error code : " + request.status + "\nMessage : "+ request.responseText + "\nError : " + errorData);
	         }
	      
	      }); //에이작스
}

$(function(){
	//보관함

	
	 $(".liketoggle").click(function() {
		   $(this).find("i").toggleClass("fas far");
		   $(this).find("span").text(function(i, v) {
		     return v === '보관' ? '보관됨' : '보관'
		   })
		 });
	
});	 
</script>
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

<script type="text/javascript" src="resources/js/scripts.js"></script>
<script type="text/javascript">
$("div").on('click', function(e){

	return false;

	});
</script>

</head>

<body id="page-top">
<!-- 1.탑바 임포트 -->
	<c:import url="/WEB-INF/views/abc/topbar.jsp"></c:import>
	
<!-- 2.바로아래div추가 및 임포트 추가  -->
	<div style="width:100%;display:flex;justify-content:center;align-item:center;">
<!-- Sidebar2right -->
     <c:import url="/WEB-INF/views/abc/entersideFixed.jsp"></c:import>
<!-- End of Sidebar2right -->

	
	<div id="wrapper"  style="width:1300px;">

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

					
						

						<!-- 즐겨찾기 시작 -->
						
							<div class="card mb-4 py-3 ">
								<div style="margin-top: 10px; margin-left: 15px;margin-bottom: 0px;">
									<h3>&nbsp;&nbsp;OOO님의 업무</h3>
								
								</div>
								<!-- 게시글안쪽 -->

								<div class="card-body" style="overflow: auto;">
								<div class="checks" align="right" style="margin-left: 1%; font-size: 23px; " >
						<form action="#">
							<span style="color: #42BBBA;"><label><input name="type" type="checkbox" checked="checked">&nbsp;요 청&nbsp;&nbsp;&nbsp;&nbsp; </label></span>
							<span style="color: #42BBBA;"><label><input name="type" type="checkbox" checked="checked">&nbsp;진 행&nbsp;&nbsp;&nbsp;&nbsp; </label></span>
							<span style="color: #42BBBA;"><label><input name="type" type="checkbox" checked="checked">&nbsp;피드백&nbsp;&nbsp;&nbsp;&nbsp; </label></span>
							<span style="color: #42BBBA;"><label><input name="type" type="checkbox" checked="checked">&nbsp;완 료&nbsp;&nbsp;&nbsp;&nbsp; </label></span>
							<span style="color: #42BBBA;"><label><input name="type" type="checkbox" checked="checked">&nbsp;보 류&nbsp;&nbsp;&nbsp;&nbsp; </label></span>
						</form>
					</div>
									<div class="table-responsive">
										<table class="table table-bordered" id="dataTable"
											style="width: 100%; cellspacing: 0;">
											<colgroup>
											    <col style="width:15%" >
											    <col style="width:25%">
											    <col style="width:40%">
											    <col style="width:20%">
											  </colgroup> 
											<thead>
												<tr>
													<th>유형</th>
													<th>제목</th>
													<th>내용</th>													
													<th>등록일</th>
												</tr>
											</thead>
											<tbody>
										<% if(!list.isEmpty()){ %>
											<% for(Bpost bpost : list){ %>
													<tr>	
														<td style="vertical-align: middle; text-align: center;">
																<%if(bpost.getBkind().equals("요청")){ %>
																	<strong style="font-size:15pt; color: #0E90C8; margin-top:30px; vertical-align: middle; ">요 청</strong>															
																<% } %>
																<%if(bpost.getBkind().equals("진행")){ %>
																	<strong style="font-size:15pt; color: #0244ED; margin-top:20px; vertical-align: middle; ">진 행</strong>																
																<% } %>
																<%if(bpost.getBkind().equals("피드백")){ %>
																	<strong style="font-size:15pt; color: #f4b30d; margin-top:20px; vertical-align: middle; ">피드백</strong>																
																<% } %>
																<%if(bpost.getBkind().equals("완료")){ %>
																	<strong style="font-size:15pt; color: #0C860F; margin-top:20px; vertical-align: middle; ">완 료</strong>																
																<% } %>
																<%if(bpost.getBkind().equals("보류")){ %>
																	<strong style="font-size:15pt; color: #6b6d7d; margin-top:20px; vertical-align: middle; ">보 류</strong>																
																<% } %>
															</td>
														<td style="vertical-align: middle; text-align: center;"><div style='margin-bottom:0px; padding:0px; margin-top:10px; min-height: 43px; max-height:43px; overflow: hidden;' ><%= bpost.getBtitle()%></div></td>
														<td style="vertical-align: middle; text-align: center;"><div style='margin-bottom:0px; padding:0px; margin-top:5px;  min-height: 43px; max-height:43px; overflow: hidden;' ><%= bpost.getBcontent()%></div></td>
														<td style="vertical-align: middle; text-align: center;"><div style='margin-top:22px; margin-left:7px; min-height: 43px; max-height:43px; overflow: hidden;' ><%= bpost.getBenrolldate()%></div></td>
													</tr>	
											<% } %>
												
										<% } %>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						
						<!-- 즐겨찾기 끝 -->
					

		<br>

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
		<script type="text/javascript"	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
						<script type="text/javascript">
						$(function(){
							var message = ${message}
							if(message != null){
								alert(message);
							}
							
						});
						</script>
						
</body>

</html>
