<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList"%>
<%@ page import="com.beet.HWABO.bpost.model.vo.Bpost" %>
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

<style type="text/css">

div#detailview{
	height: 50vh;
	justify-content : center;
	align-items: center;
	border: solid 1px gray;
}

</style>


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

<script type="text/javascript" src="resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('#dataTable').dataTable( {
	  "lengthChange": false
	});
	
	$.ajax({
		url: "bpostload.do",
		type: "POST",
		data: { 'ucode':'${ucode}', 'pnum': '${pnum}'  },
		dataType: "Json",
		traditional: true,
		success: function(obj){
			
			var values = '<thead><tr style="vertical-align: middle; text-align: center;"><th>유형</th><th>제목</th>	<th>내용</th><th>등록일</th></tr></thead>';
			
			$("#selectTable").empty();
			//출력용 문자열 만들기 (for in 문을 사용해보자)
			
		 for(var i in obj){
		
			 values += '<tr id="trclick" onclick="detailviewload('+obj[i].bno+');" style="cursor:hand;">';

       		   
			 if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") =="요청"){
           		 values +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #047AAC; margin-top:30px; vertical-align: middle; "'+'>요 청</strong></td>'
           	 }
           	if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") =="진행"){
           		values +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #173192; margin-top:30px; vertical-align: middle; "'+'>진 행</strong></td>'
           	 }
           	if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") == "피드백"){
           		values +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #f4b30d; margin-top:30px; vertical-align: middle; "'+'>피드백</strong></td>'
           	 }
           	if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") == "완료"){
           		values +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #0C860F; margin-top:30px; vertical-align: middle; "'+'>완 료</strong></td>'
           	 }
           	if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") =="보류"){
           		values +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #6b6d7d; margin-top:30px; vertical-align: middle; "'+'>보 류</strong></td>'
           	 }
	            	 
	            	values  +='<td  style="vertical-align: middle;">' + decodeURIComponent(obj[i].btitle).replace(/\+/gi, "  ") + "</td>"
	                 
	                      +'<td style="vertical-align: middle; ">' + decodeURIComponent(obj[i].bcontent).replace(/\+/gi, "  ") + "</td>"
	                
	                      +'<td style="vertical-align: middle; text-align: center;" >'+decodeURIComponent(obj[i].benrolldate).replace(/\+/gi, "  ")+"</td>"
	                + "</tr>"
	       } //for in

	   		 $('#selectTable').html(values); 
	       
		}, 				
		error: function(request, status, errorData){ //에러는 위에서 복붙
			console.log("error code : " + request.status + "\nMessage : "+ request.responseText + "\nError : " + errorData);
		}
		
	});


	$('.type').change(function(){
		var types = [];
		
		$("input[name=type]:checked").each(function(){
			types.push($(this).val());
		});
		
		var ucodeval = "${ucode}";
		var pnumval = "${pnum}";

		var allData ={"ucode" : ucodeval , "pnum": pnumval, "types": types};

		$.ajax({
			url: "chooseBpost.do",
			type: "POST",
			data: allData, 
			dataType: "Json",
			traditional: true,
			success: function(obj){
				
				var values = '<thead><tr style="vertical-align: middle; text-align: center;"><th>유형</th><th>제목</th>	<th>내용</th><th>등록일</th></tr></thead>';
				
				$("#dataTable").empty();
				//출력용 문자열 만들기 (for in 문을 사용해보자)
				
			 for(var i in obj){
			
				 values += '<tr id="trclick" onclick="javascript:location.href='+"'"
	               +'bpostOne.do?bno='+obj[i].bno+'&ucode=${sessionScope.ucode }&pnum=${sessionScope.pnum }'+"'"
        		   +'" style="cursor:hand;">';

        		   
				 if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") =="요청"){
            		 values +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #047AAC; margin-top:30px; vertical-align: middle; "'+'>요 청</strong></td>'
            	 }
            	if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") =="진행"){
            		values +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #173192; margin-top:30px; vertical-align: middle; "'+'>진 행</strong></td>'
            	 }
            	if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") == "피드백"){
            		values +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #f4b30d; margin-top:30px; vertical-align: middle; "'+'>피드백</strong></td>'
            	 }
            	if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") == "완료"){
            		values +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #0C860F; margin-top:30px; vertical-align: middle; "'+'>완 료</strong></td>'
            	 }
            	if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") =="보류"){
            		values +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #6b6d7d; margin-top:30px; vertical-align: middle; "'+'>보 류</strong></td>'
            	 }	            	 
		            	values  +='<td  style="vertical-align: middle;">' + decodeURIComponent(obj[i].btitle).replace(/\+/gi, "  ") + "</td>"
		                 
		                      +'<td style="vertical-align: middle; ">' + decodeURIComponent(obj[i].bcontent).replace(/\+/gi, "  ") + "</td>"
		                
		                      +'<td style="vertical-align: middle; text-align: center;" >'+decodeURIComponent(obj[i].benrolldate).replace(/\+/gi, "  ")+"</td>"
		                + "</tr>"
		       } //for in
		   		 $('#selectTable').html(values); 	       
			}, 				
			error: function(request, status, errorData){ //에러는 위에서 복붙
				console.log("error code : " + request.status + "\nMessage : "+ request.responseText + "\nError : " + errorData);
			}		
		});	
	}); 
	
	function detailviewload(bno){
			alert(bno+"detailview loading");
			$("#detailview"+bno).css("display", "block" );

	};
	
});//document.ready 끗


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


						<!-- 업무 모아보기 시작 -->
						
							<div id="tableview" class="card mb-4 py-3 ">
								<div style="font-size:15pt; margin-top: 10px; margin-left: 15px;margin-bottom: 0px;">
									<strong>&nbsp;&nbsp;${sessionScope.uname } </strong>님의 업무 모아보기								
								</div>
								<!-- 게시글안쪽 -->

								<div class="card-body" style="overflow: auto;">
								<div class="checks" align="right" style="margin-left: 1%; font-size: 17px; font-weight: bold; " >
						<form action="#">
							<span style="color: #42BBBA;"><label class="checkbox-inline"><input id="inlineCheckbox1" class="type" name="type" type="checkbox"  value="요청" checked="checked">&nbsp;요 청&nbsp;&nbsp;&nbsp;&nbsp; </label></span>
							<span style="color: #42BBBA;"><label class="checkbox-inline"><input id="inlineCheckbox2" class="type" name="type" type="checkbox"  value="진행" checked="checked">&nbsp;진 행&nbsp;&nbsp;&nbsp;&nbsp; </label></span>
							<span style="color: #42BBBA;"><label class="checkbox-inline"><input id="inlineCheckbox3" class="type" name="type" type="checkbox"  value="피드백" checked="checked">&nbsp;피드백&nbsp;&nbsp;&nbsp;&nbsp; </label></span>
							<span style="color: #42BBBA;"><label class="checkbox-inline"><input id="inlineCheckbox4" class="type" name="type" type="checkbox"  value="완료" checked="checked">&nbsp;완 료&nbsp;&nbsp;&nbsp;&nbsp; </label></span>
							<span style="color: #42BBBA;"><label class="checkbox-inline"><input id="inlineCheckbox5" class="type" name="type" type="checkbox" value="보류" checked="checked">&nbsp;보 류&nbsp;&nbsp;&nbsp;&nbsp; </label></span>
						</form>
					</div>
									<div id ="bpost_table"  class="table-responsive">
									
									
										<table class="table table-hover" id="selectTable"
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
											
											<tbody id = "bpost_tbody">
											
											</tbody>
											
										</table>
							
									</div>
								</div>
							</div>
				
						
<!-- 상세보기 페이지 -->
<c:if test="${ !empty list }">
<c:forEach var="post" items="${list}">

	<div id="detailview${post.bno }">
	
	                 <div class="text-center">
	                    <h3 class="h4 text-gray-900 mb-4">${post.btitle }</h3>
	                  </div>
	                  <div align="right" style="padding-bottom: 10px;">
	                  			<button id="cabinetshow" class="btn btn-light"
					name="like" onclick="sendInsert();">
					<span>보관</span>
				</button>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<c:if test="${bpostUcode == currentUcode}">
				<span >
					<c:url var="bup" value="moveBpostUpdate.do">
								<c:param name="bno" value="${post.bno }" />
								<c:param name="ucode" value="${sessionScope.ucode }" />
								<c:param name="pnum" value="${sessionScope.pnum }" />
					</c:url>
					<a class="btn btn-light" href="${bup }">수정</a>
				</span>
				&nbsp;
				<span>
					<c:url var="bdel" value="bpostdel.do">
						<c:param name="bno" value="${post.bno }" />
						<c:param name="brenamefile" value="${post.brenamefile }" />
					</c:url>
					<a class="btn btn-light" href="${bdel }">삭제</a>
				</span>
			</c:if>
				
	                  </div>
	                  
	 	<table class="table">
		<tr><th style="width: 13%; text-align: center; vertical-align:middle;">작성자</th><td>${post.bwriter }</td></tr>
		<tr><th style="text-align: center;">유 형</th>
			  <td>
					<c:if test="${post.bkind eq '요청'}">
						요청
					</c:if>
					<c:if test="${post.bkind eq '진행'}">
						진행
					</c:if>
					<c:if test="${post.bkind eq '피드백'}">
						피드백
					</c:if>
					<c:if test="${post.bkind eq '완료'}">
						완료
					</c:if>
					<c:if test="${post.bkind eq '보류'}">
						보류
					</c:if>
			  </td>
		</tr>
		<c:if test="${!empty post.bstartday and !empty post.bendday }">
			<tr><th style="text-align: center;">날 짜</th><td style="text-align: left;">${post.bstartday }&nbsp; ~ &nbsp;${post.bendday }</td></tr>
			
		</c:if>
		<tr><th style="text-align: center; vertical-align:middle;">담당자</th><td>${post.bchargename }</td></tr>
		<tr><th style="text-align: center; vertical-align:middle;">내 용</th><td><c:if test="${post.bcontent != null }" > ${post.bcontent }</c:if><c:if test="${post.bcontent == null }" >&nbsp;</c:if></td></tr>
		
		<c:if test="${! empty post.boriginfile }">
			<tr>
				<th style="text-align: center; vertical-align:middle;">파 일</th>
				<td><div id="showfile" style="overflow: hidden;">
						<img src="resources/bupfile/${post.brenamefile}"
							style="width: 40%; height: 10%;">
					</div>
					<br>
					<c:url var="ubf" value="bfdown.do">
						<c:param name="ofile" value="${post.boriginfile}" />
						<c:param name="rfile" value="${post.brenamefile}" />
					</c:url>
					<a href="${ubf }"> ${post.boriginfile}</a>
				</td>
		</c:if>
		<c:if test="${empty post.boriginfile}">
		 <tr><td colspan="2">&nbsp;</td></tr>
		</c:if>
		</table>
	</div>

</c:forEach>
</c:if>
<!-- 수정페이지 -->
<c:if test="${ !empty list }">
<c:forEach var="post" items="${list}">
	<div style="display: none;" id="updateview${list.bno}">
	
	
	
	</div>
</c:forEach>
</c:if>



					

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

						
</body>

</html>
