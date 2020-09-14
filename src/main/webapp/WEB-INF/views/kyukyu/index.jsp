
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  
<!DOCTYPE html>
<html lang="en">

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
  <link href="/hwabo/resources/maincss/css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="/hwabo/resources/maincss/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">

</head>

<!-- 진행률시작 -->
<style>
#myProgress {
  width: 100%;
  background-color: #ddd;
}

#myBar {
  width: 0%;
  height: 30px;
  background-color: #4CAF50;
  text-align: center;
  line-height: 30px;
  color: white;
}
</style>
<style type="text/css">
#dis{ 
/* display 안보이게 해라 */
	display : none;
	/* background : gray; */
	
}

</style>
<!-- 진행률끝 -->

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

<script type="text/javascript"	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
	 
function buppage(){
	 $(document).ready(function(){
	    	
/* $(function(){ */
	/*  $("#buppage").on("click", function(){
		  */
	
	 	//날짜에 빈 공백이 들어오니까 공백일때 널로 바꿔라 라는 내용을 추가한다
	 	console.log("이동")
	 	var bpost = new Object();
	 	bpost.bno ="${b.bno}";
	 	bpost.btitle ="${b.btitle}";
	 	bpost.bcharge ="${b.bcharge}";
	 	bpost.bstartday="${b.bstartday}";
	 	bpost.bendday="${b.bendday}";
	 	bpost.bcontent="${b.bcontent}";
	 	bpost.boriginfile="${b.boriginfile}";
	 	
	 	
	 	$.ajax({
		
			url: "updatebpostpage.do",
			type:"post",
			data: JSON.stringify(bpost),
			dataType: "json",
			contentType: "application/json; charset=utf-8",
			success:function(jsonData){
				alert("전송성공 : " +jsonData);
				$("#d5").html(bpost.bno);
			},
			error: function(request, status, errorData){ //에러는 위에서 복붙
				console.log("error code는 : " + request.status + "\nMessage : "+ request.responseText + "\nError : " + errorData);
			}
		
		});
	 	
/* 	 });	 */ 
	 
 });  
}
	/* $("#buppage").on("click", function(){
		
		$.ajax({
		
			url: "updatebpostpage.do",
			date: {bno: $("#bno").val()},
			type: "post",
			success: function(){

				console.log("보관함 보내기 성공 !");

			}error: function(request, status, errorData){
				console.log("error code : " + request.status + "\nMessage : "+ request.responseText + "\nError : " + errorData);
			}
		
		}); */
	
		
	

	 
	 


</script>

 



 <!-- Begin Page Content -->
        <div class="container-fluid">

             

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">업무 게시글</h1>
          <p class="mb-4"></p>


 <!-- Content Row -->
          <div class="row">

            <!-- 게시글 크기 넓이 지정부분!!! -->
            <div class="col-lg-11">



          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
            
              
            </div>
            <div class="card-body">
              <!-- 게시글안쪽 -->
              
              
              <form action="insertbpost.do" name="b" method="post" id="bInsert" enctype="multipart/form-data" onsubmit="return validate();">
              <table style="text-align:center;width:100%;">
              <tr class="m-0 font-weight-bold text-primary"><td style="width:20%;">
              <span>글작성</span>
              </td><td style="width:20%;"> 
              <span>업무</span>
              </td><td style="width:20%;">
              <span>일정</span>
              </td><td style="width:20%;">
              <span>할일</span>
              </td><td style="width:20%;">
              <span>투표</span> 
              </td></tr>
              <!-- 구분선 -->
            </table>
              <hr>
        
              <!-- 글작성 본문 -->
              
              <input type="hidden" id="bucode" value="${sessionScope.ucode }">
               <input type="hidden" id="bwriter" value="${sessionScope.uname }">
    		
    		<input type="hidden" id="bform" name="bcharge">
    		
    		
	        <input type="text" class="form-control mb-1" name="btitle" placeholder="제목(선택값)">
	               
	     	
	            <!-- <input class="btn btn-outline-primary" class="bkind" type="button" name="bkind1" onclick="return bkind();" value="요청">&nbsp&nbs
	            <input class="btn btn-outline-info" class="bkind" type="button" name="bkin1d" onclick="return bkindcheckd();" value="승인">&nbsp&nbsp
	            <input class="btn btn-outline-warning" class="bkind" type="button" name="bki1nd" onclick="return bkindcheck();" value="피드백">&nbsp&nbsp
	            <input class="btn btn-outline-success" class="bkind" type="button" name="bki1nd" onclick="return bkindcheck();" value="완료">&nbsp&nbsp
	            <input class="btn btn-outline-secondary" class="bkind" type="button" name="bki1nd" onclick="return bkindcheck();" value="보류"><br>
	             -->
         
					<div class="btn-group btn-group-toggle" data-toggle="buttons">
			  <label class="btn btn-secondary active">
			    <input type="radio" name="bkind" id="option1" value="요청" checked>요청
			  </label>
			  <label class="btn btn-secondary">
			    <input type="radio" name="bkind" id="option2" value="진행">진행
			  </label>
			  <label class="btn btn-secondary">
			    <input type="radio" name="bkind" id="option3" value="피드백" >피드백
			  </label>
			   <label class="btn btn-secondary">
			    <input type="radio" name="bkind" id="option3" value="완료">완료
			  </label>
			   <label class="btn btn-secondary">
			    <input type="radio" name="bkind" id="option3" value="보류">보류
			  </label>
			</div>
	      			
	      			
	     
	      			
	      			
	      			
	      			
			<div>	
			<nav class="navbar navbar-expand navbar-light bg-light mb-4">
                    
                        <br><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          	담당자
                        </a>
                    <!-- 담당자 이름 -->
           				<div id="selected"></div>
           	
           			
                        <div class="dropdown-menu dropdown-menu-left animated--grow-in" aria-labelledby="navbarDropdown">
                          <a class="dropdown-item" onclick="addbcharge()">백규림</a>
                          <a class="dropdown-item" onclick="addbcharge()">박수현</a>
                          <a class="dropdown-item" onclick="addbcharge()">정다운</a>
                          <a class="dropdown-item" onclick="addbcharge()">백신후</a>
                          <div class="dropdown-divider"></div>
                          <a class="dropdown-item" href="#">더보기</a>
                        </div>
                        
                        <a class="navbar-brand" href="#"></a>
                    <ul class="navbar-nav ml-auto">
                      <li class="nav-item dropdown">
                      </li>
                    </ul>
                  </nav>
                </div>
                
                
                
              
               <div class="row mt-2">
					<p class="form-control-static"><i class="fa fa-clock ml-4 mt-2"></i></p>
					   <div class="col-5"><input type="date" class="form-control" name="bstartday"></div>
					      <label class="form-control-label h3">~</label>
					   <div class="col-5"><input type="date" class="form-control" name="bendday"></div>
		     </div>
	
              	<textarea cols="50" rows="6" class="w-100 form-control" name="bcontent"></textarea>
             
              <hr>
         
	
	           <!-- <input type="file" name="ofile" style="visibility: hidden;"><span class="fa fa-link m-2">첨부파일</span> -->
	          <input type="file" name="ofile">
	          
	           <select name="bopen" class="form-control">
					<option value="y" selected>전체공개</option>
					<option value="n">나만 공개</option>
			  </select>
	        
				
        	<!-- <label><input type="file" class="fa fa-link m-2" name="ofile" style="visibility: hidden;"/><span class="d-none d-md-inline-block ml-1">파일</span></label>
				<br>  -->
              	 <!-- 버튼 -->
              <input class="btn btn-primary" type="submit" value="등록">
			  <input class="btn btn-primary" type="reset" value="취소">
			  </form>
			 </div>
         </div>
           
           <!--  리스트  -->
           
           <c:forEach var="b" items="${requestScope.list }">
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
               
               <input type="hidden" id="ucode" value="${sessionScope.ucode }">
			   <input type="hidden" id="no" value="${b.bno }">
               <button id="cabinetshow" class="btn btn-custom btn-sm liketoggle" name="like">
           	   <span>보관</span> <i class="far fa-bookmark"></i></button>
				
             
              <!--  </form> -->
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
					
				</div>
					<div class="card-body">
							<!-- 게시글안쪽 -->
						
							
							   <c>제목 : ${b.btitle}</c>
							<hr>
							
							
			<div class="btn-group btn-group-toggle" data-toggle="buttons">
			  <label class="btn btn-secondary active">
			    <input type="radio" name="요청" id="요청" value="요청" >요청
			  </label>
			  <label class="btn btn-secondary">
			    <input type="radio" name="진행" id="진행" value="진행">진행
			  </label>
			  <label class="btn btn-secondary">
			    <input type="radio" name="피드백" id="피드백" value="피드백" >피드백
			  </label>
			   <label class="btn btn-secondary">
			    <input type="radio" name="완료" id="완료" value="완료">완료
			  </label>
			   <label class="btn btn-secondary">
			    <input type="radio" name="보류" id="보류" value="보류">보류
			  </label>
			</div>
							
							
						<table>
							<tr>
							   <td>내용</td>
								<td> ${b.bcontent}</td>
							</tr>
						</table>
							
						<table>
						<c:if test="${! empty b.boriginfile }">
							<tr>
							   <td>파일</td>
							   <br>
							   </tr>
							   <tr>
							   <th>
							   
							   	<div id="showfile" style="overflow:hidden;"> 
							   	<img src="resources/bupfile/${b.brenamefile}" style="width : 60%;height : 60%;">
								
								 </div> 
							   
							  </th>
						   <c:url var="ubf" value="bfdown.do">
								<c:param name="ofile" value="${b.boriginfile}"/>
								<c:param name="rfile" value="${b.brenamefile}"/>
							</c:url> 
								<td><a href="${ubf }"> ${b.boriginfile}</a></td>
							</tr>
							</c:if>
							<c:if test="${empty b.boriginfile}">
							&nbsp;
							</c:if>
						</table>
						
							<hr>
							<table style="width: 100%;">
								<tr>
								
								
									<td style="width: 20%;"><a href="#"
										class="btn btn-primary btn-icon-split btn-sm"> <span
											class="icon text-white-50"> <i class="far fa-heart"></i>
										</span> <span class="text">좋아요 </span>
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
				</c:forEach>
				
           
           
           
           
              
            
          </div>
          </div>
          <!-- </div> -->
          

<!-- </div> -->









        


		
      
      </div>
        <!-- /.container-fluid -->
      <!--   </div> -->
       
  		
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
    
    <div style="width:25%"></div>
    <!-- End of Content Wrapper -->

   </div> 
  <!-- End of Page Wrapper -->
 </div> <!-- 꼭대기 디브 닫기  div flex-->
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
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

부가적인 테마
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

합쳐지고 최소화된 최신 자바스크립트
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

 -->

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
