<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  
<%-- <%= session.getAttribute("pnum") %> --%>
<!DOCTYPE html>
<html lang="kr">

<head>
  <link rel="icon" type="image/x-icon" href="/hwabo/resources/assets/img/favicon.png" />
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>HWABO</title>

  <!-- Custom fonts for this template -->
  <link href="/hwabo/resources/maincss/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="/hwabo/resources/maincss/css/sb-admin-2.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="/hwabo/resources/maincss/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>


<style type="text/css">

div#showfile imag{


	width : 10%;
	height : 10%;
	
	}


</style>




<script type="text/javascript"	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">



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
	
	if($("#open_"+index).val() == 'y'){
	
		$.ajax({	      
		      url: "insertcabinet.do",
		      data: {no: $("#no_"+ index).val(), ucode: $("#ucode_" + index).val(), pnum: $("#pnum_" + index).val()},     
		      type: "post",
		      success: function(result){

		         if(result == "ok"){
		            $("#open_"+index).val('n');
   					alert("보관 성공");
		            console.log("보관함 보내기 성공 !");
		         }else{
		            alert("값이 보내졌지만 결과는 ok가 아님");
		         }
		      
		      },
		      error: function(request, status, errorData){
		    	 
		            console.log("error code : " + request.status + "\nMessage : "+ request.responseText + "\nError : " + errorData);
		         }
		      
		      }); //에이작스
	      
	}else{  //이미 보관된 게시물이라면 n -> y 로 (현재 보관을 n 보관 안함을 y 로 설정해놀음 이유는 내가 청개구리라서)
		
		$.ajax({	      
		      url: "deletecabinet.do",
		      data: {no: $("#no_"+ index).val(), ucode: $("#ucode_" + index).val(), pnum: $("#pnum_" + index).val()},     
		      type: "post",
		      success: function(result){
		         if(result == "ok"){
		        	  $("#open_"+index).val('y');
		          	alert("보관 취소 성공");
		            console.log("보관함 삭제 성공 !");
		         }else{
		            alert("디비 내부에서 삭제 문제 생김");
		         }
		      
		      },
		      error: function(request, status, errorData){
		    	 
		         console.log("error code : " + request.status + "\nMessage : "+ request.responseText + "\nError : " + errorData);
		         }
		      
		      }); //에이작스

		
			}   
	      
	      $(".liketoggle"+index).find("i").toggleClass("fas far");
		  $(".liketoggle"+index).find("span").text(function(i, v) {
		     return v === '보관' ? '보관됨' : '보관'
		    		 
	 });
}





$(document).ready(function(){
	console.log("0");
	
	
	$.ajax({
		
		url: "openList.do?ucode=${sessionScope.ucode }, pnum=${sessionScope.pnum }",    
		type: "post",
		dataType: "json",
		success: function(obj){
			
			var str = JSON.stringify(obj);
			var json = JSON.parse(str);
			console.log("success : " + str);
			
			var values = "";
			
			
		},
		error: function(jqXHR, textstatus, errorthrown){
			console.log("error : " +jqXHR+", "+textstatus+", "+errorthrown);
		}
		
		
	});
	
	
	
	
	
	for(var a = 0; a <= ${fn:length(requestScope.list)}; a++ ){
	
		if($("#open_"+a).val() == 'n'){
			console.log("#open_"+a);
			   $(".liketoggle"+a).find("i").toggleClass("fas far");
			   $(".liketoggle"+a).find("span").text(function(i, v) {
			     return v === '보관' ? '보관됨' : '보관'
		   });
			
		}
		
	}
	
});


</script>


<body id="page-top">

<c:import url="/WEB-INF/views/kyukyu/topbar.jsp"></c:import>

<div style="width:100%; display:flex; justify-content:center; align-item:center;">
<!-- Sidebar2right -->
     <c:import url="/WEB-INF/views/kyukyu/entersideFixed.jsp"></c:import>
<!-- End of Sidebar2right -->


	<!-- Page Wrapper -->
	<div id="wrapper" style="width:1300px;">

		<!-- Sidebar -->
	   <div style="width:17%"></div>
		<!-- End of Sidebar -->

		

	<!-- Content Wrapper -->
	  <div id="content-wrapper" class="d-flex flex-column bg-white"  style="width:62%;">

		<!-- Main Content -->
		<div id="content">

			<!-- Topbar -->
			<br><br><br><br>
			<!-- End of Topbar -->

 <!-- Begin Page Content -->
        <div class="container-fluid">

             

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">업무 게시글</h1>
          <p class="mb-4"></p>


 <!-- Content Row -->
          <div class="row">

            <!-- 게시글 크기 넓이 지정부분!!! -->
            <div class="col-lg-11">



           
           	<c:forEach var="b" items="${requestScope.list }" varStatus="status">
           	<div class="card shadow mb-4">
           
           	
           
           
			 <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
				<h6 class="m-0 font-weight-bold text-primary">
				
				<i class="fas fa-user-circle"></i>
				${b.bwriter}<br>${b.benrolldate }</h6>
			<!-- 	<button type="submit" class="btn btn-custom btn-sm liketoggle" name="like"><span>보관</span> <i class="far fa-bookmark"></i></button>
					 -->
					
					
				<!-- 수정삭제 드롭다운 -->	
             <div class="dropdown no-arrow">
                  
                <!-- 보관함 담기여부 -->  
				 <!--   <button id="cabinetshow" class="btn btn-custom btn-sm ">
			   <i class="far fa-bookmark"></i></button>
           		 -->
           		 
               <!-- <form action="insertcabinet.do" method="post"> -->
              
               <button id="cavinetin_${status.index }" class="btn btn-custom btn-sm liketoggle${status.index }" name="like" onclick="sendInsert(${status.index});">
           	   <span>보관</span> <i class="far fa-bookmark"></i></button>
           	   <input type="hidden" id="ucode_${status.index }" value="${sessionScope.ucode }" >
			   <input type="hidden" id="no_${status.index }" value="${b.bno }">
			   <input type="hidden" id="pnum_${status.index }" value="${b.bpnum }" >
			   <input type="text" id="open_${status.index }" value="${b.bopen }" >
             

			 <div id="d5"></div>
		  		<c:if test="${sessionScope.ucode eq b.bucode }">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                     
                      <c:url var="bup" value="buppage.do">
                      	<c:param name="bno" value="${b.bno }"/>
                    
                      </c:url> 
                     <a class="dropdown-item" href="${bup }">수정</a>
                     	
                       <c:url var="bdel" value="deletebpost.do">
                      	<c:param name="bno" value="${b.bno }"/>
                    	<c:param name="brenamefile" value="${b.brenamefile }"/>
                      </c:url>
                      <a class="dropdown-item" href="${bdel }">삭제</a>
                 		
                    </div>
                    </c:if>
                  </div> <!-- 드롭다운 끝 -->
					
				</div><!-- card-header py-3 d-flex flex-row align-items-center justify-content-between -->
				
			<!-- 게시글안쪽 -->	
			<div class="card-body">
							
			   <b>제목 : ${b.btitle}</b>
			   <hr>
				
							
			<div class="btn-group btn-group-toggle"  >
			  <c:if test="${b.bkind eq '요청' }">
				
				
				 <label class="btn btn-info">
				    <input type="radio" name="진행" id="요청" value="요청" readonly>요청
				  </label> 
				  <label class="btn btn-secondary">
				    <input type="radio" name="진행" id="진행" value="진행" readonly>진행
				  </label>
				  <label class="btn btn-secondary">
				    <input type="radio" name="피드백" id="피드백" value="피드백" readonly>피드백
				  </label>
				   <label class="btn btn-secondary">
				    <input type="radio" name="완료" id="완료" value="완료" readonly>완료
				  </label>
				   <label class="btn btn-secondary">
				    <input type="radio" name="보류" id="보류" value="보류" readonly>보류
				  </label>
				
				
			  </c:if>
			  
			  
			  <c:if test="${b.bkind eq '진행' }">
					
					
				 <label class="btn btn-secondary">
				    <input type="radio" name="진행" id="요청" value="요청" readonly>요청
				  </label> 
				  <label class="btn btn-info">
				    <input type="radio" name="진행" id="진행" value="진행" readonly>진행
				  </label>
				  <label class="btn btn-secondary">
				    <input type="radio" name="피드백" id="피드백" value="피드백" readonly>피드백
				  </label>
				   <label class="btn btn-secondary">
				    <input type="radio" name="완료" id="완료" value="완료"readonly>완료
				  </label>
				   <label class="btn btn-secondary">
				    <input type="radio" name="보류" id="보류" value="보류" readonly>보류
				  </label>			
			  </c:if>
			 
			  <c:if test="${b.bkind eq '피드백' }">
					
				 <label class="btn btn-secondary">
				    <input type="radio" name="진행" id="요청" value="요청" readonly>요청
				  </label> 
				  <label class="btn btn-secondary">
				    <input type="radio" name="진행" id="진행" value="진행" readonly>진행
				  </label>
				  <label class="btn btn-info">
				    <input type="radio" name="피드백" id="피드백" value="피드백" readonly>피드백
				  </label>
				   <label class="btn btn-secondary">
				    <input type="radio" name="완료" id="완료" value="완료" readonly>완료
				  </label>
				   <label class="btn btn-secondary">
				    <input type="radio" name="보류" id="보류" value="보류" readonly>보류
				  </label>				
			  </c:if>
			  
			   <c:if test="${b.bkind eq '완료' }">
						
				 <label class="btn btn-secondary">
				    <input type="radio" name="진행" id="요청" value="요청" readonly>요청
				  </label> 
				  <label class="btn btn-secondary">
				    <input type="radio" name="진행" id="진행" value="진행" readonly>진행
				  </label>
				  <label class="btn btn-secondary">
				    <input type="radio" name="피드백" id="피드백" value="피드백" readonly>피드백
				  </label>
				   <label class="btn btn-info">
				    <input type="radio" name="완료" id="완료" value="완료" readonly>완료
				  </label>
				   <label class="btn btn-secondary">
				    <input type="radio" name="보류" id="보류" value="보류" readonly>보류
				  </label>			
			  </c:if>
			  
			  
			   <c:if test="${b.bkind eq '보류' }">
						
				 <label class="btn btn-secondary">
				    <input type="radio" name="진행" id="요청" value="요청" readonly >요청
				  </label> 
				  <label class="btn btn-secondary">
				    <input type="radio" name="진행" id="진행" value="진행" readonly>진행
				  </label>
				  <label class="btn btn-secondary">
				    <input type="radio" name="피드백" id="피드백" value="피드백" readonly>피드백
				  </label>
				   <label class="btn btn-secondary">
				    <input type="radio" name="완료" id="완료" value="완료" readonly>완료
				  </label>
				   <label class="btn btn-info">
				    <input type="radio" name="보류" id="보류" value="보류" readonly>보류
				  </label>			
			  </c:if>

			</div>
			<br><br>
			
			
			
			<div>
			   <i class="fas fa-user-friends"></i> 담당자 :  ${b.bchargename }
			</div>
			<hr>
			<div>
				<tr>
				 <td width="20%"><span style="float: left;">
				 	<i class="far fa-calendar-alt"> 시작일 : &nbsp;${b.bstartday }</i></span>
				 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
	             </td>
				 <td width="20%"><span style="float: center;">
				 	<i class="far fa-calendar-alt"> 마감일 : &nbsp;${b.bendday }</i></span>
	           	 </td>
	           	</tr>
			</div>
		
			<hr>
			
			<div>
			  <table>
			   <c:if test="${! empty b.bcontent }">
		
				 <tr>
				 <td><b>${b.bcontent}</b></td>
				 </tr>
				</c:if>
		      </table>
			<br>	
			  <table>
				 <c:if test="${! empty b.boriginfile }">
			
					<tr>
					   <td>
					  	 <c:url var="ubf" value="bfdown.do">
						  <c:param name="ofile" value="${b.boriginfile}"/>
						  <c:param name="rfile" value="${b.brenamefile}"/>
						 </c:url> 
				   
								   
			 		 <div id="showfile" style="overflow:hidden;"> 
					<c:forTokens var="ext" items="${b.brenamefile}" delims="." varStatus="status">
						
						    <c:if test="${status.last}">
						        <c:choose>
						            <c:when test="${ext eq 'jpg'}">
						               <img src="resources/bupfile/${b.brenamefile}" class="rounded" style="width : 220px;height : 150px;">
						            </c:when>
						            <c:when test="${ext != 'jpg'}">
						                <img src="resources/img/eettcc.png" style="width:40px; height :40px" >
						            </c:when>
						       
						        </c:choose>
						    </c:if>
						</c:forTokens> 
					     <br>
					     <a href="${ubf }"><i class="far fa-file"></i> :  ${b.boriginfile}</a>
			
					</div> 
				</td>
			
				</tr>
				
			    </c:if>
					<c:if test="${empty b.boriginfile}">
					&nbsp;
					</c:if>
			 </table><hr>
			 <table style="width: 100%;">
				<tr>
								
								
					<td style="width: 20%;"><a href="#" class="btn btn-primary btn-icon-split btn-sm"> 
					<span class="icon text-white-50"> <i class="far fa-heart"></i>
					</span> <span class="text">좋아요 </span>
					</a>
				 </td>
				 <td style="width: 20%;"></td>
				 <td style="width: 20%;"></td>
				 <td style="width: 20%;"></td>
				 <td style="width: 20%; float: right;"></td>
				</tr>
			</table>
		 </div>
		 <div class="px-3 py-5 bg-gradient-light text-white" style="height: 10px;">
			<input type="text" class="form-control" placeholder="답글을 입력하세요">
	  	 </div>
	
	 </div><!-- 게시글안쪽  -->			
	</div><!-- card shadow mb-4 -->
	</c:forEach>
	
            

    </div><!-- class="col-lg-11" -->

		
      
    </div><!-- /.container-fluid -->    
  		
   </div><!-- End of Main Content -->




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
    </div>
    
    <div style="width:25%"></div>
    <!-- End of Content Wrapper -->

   </div> 
   
    </div> <!-- 꼭대기 디브 닫기  div flex-->
  <!-- End of Page Wrapper -->

 
  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">Ã</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="login.jsp">Logout</a>
        </div>
      </div>
    </div>
  </div>


  <!-- Bootstrap core JavaScript-->
  <script src="/hwabo/resources/maincss/vendor/jquery/jquery.min.js"></script>
  <script src="/hwabo/resources/maincss/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="/hwabo/resources/maincss/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="/hwabo/resources/maincss/js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="/hwabo/resources/maincss/vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="/hwabo/resources/maincss/vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="/hwabo/resources/maincss/js/demo/datatables-demo.js"></script>

</body>

</html>
