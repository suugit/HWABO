<%@ page session="false" %>
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

<!-- 진행률끝 -->

<body id="page-top">

<c:import url="/WEB-INF/views/kyukyu/topbar.jsp"></c:import>

<div style="width:100%;display:flex;justify-content:center;align-item:center;">
<!-- Sidebar2right -->
     <c:import url="/WEB-INF/views/kyukyu/entersideFixed.jsp"></c:import>
<!-- End of Sidebar2right -->


	<!-- Page Wrapper -->
	<div id="wrapper" style="width:1300px;"">

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





<script type="text/javascript" src="resources/js/jquery-3.5.1.min.js"></script>
<script>



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
	/* var name = $(event.target).parent().text();
	var s = $('#bform').val();
	var index = s.indexOf(name);
	 
	renames = s.replace(name, ",");
	
	alert(name);
	 */
	/* var or = "";
	var re = "";
	var orz = $('#bform').val();
	var rez = $(event.target).parent().text();
	or += orz;
	re += rez;
	

	var na = or.replace(re, '귤');
	

	alert(re); */
	
	
	/* var sOriginText = " 동해바다 서해바다 남해바다 ";

	var sTargetText = "바다";

	var sConvertedText = sOriginText.replace(sTargetText, '산');

	alert(sConvertedText);


	

	/*  $('#bform').val(rename);
	
	 var rename = s.slice(index, index + 2);
	var rename = s.slice(index, index + 2);
		
	
	var str = "Hello World";
	str = str.replace('H', 'k'); */
	 

	
	
	/* alert(names); */

	/* var renames = s.substring(index, index + 2); */

	/*  alert($("#bform").val());  */
 
}



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
              
              
              <form action="insertbpost.do" name="b" method="post" id="bInsert" enctype="multipart/form-data">
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
              
              
    		<input type="hidden" name="bwriter" value="백규류">
    		
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
			    <input type="radio" name="bkind" id="option2" value="승인">승인
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
           				
           				
           				<input type="hidden" id="bform" name="bcharge">
           				
           			
           			<!doctype html>

           			
           			
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
					              <div class="col-5"><input type="date" class="form-control" name="bstartday" value=""></div>
					              <label class="form-control-label h3">~</label>
					              <div class="col-5"><input type="date" class="form-control" name="bendday" value=""></div>
					              </div>
					              
					              
					              
			
              	<textarea cols="50" rows="6" class="w-100 form-control " name="bcontent"></textarea>
             
              <hr>
         
              <!-- 옵션메뉴 -->
              	
              	
              <!-- 	<td colspan="3" class="flex-grow-5"> -->
              
              
              	
              	
	           <label><input type="file" name="ofile" style="visibility: hidden;"><span class="fa fa-link m-2" >첨부파일</span></label>
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
          <!--    	 	<a class="btn btn-success btn-icon-split" href="javascript:mainInsert.submit();" style="width:10%;" >
                    <span class="text">등록</span>
                 	</a>
             
             		<a href="javascript:mainInsert.reset();" class="btn btn-danger btn-icon-split" style="width:10%;">
                    <span class="text">취소</span>
             		</a>
             
             </div>
         -->
           
              
            </div>
          </div>
          </div>
          </div>
          

</div>









        <!-- Begin Page Content -->
        
        <div class="container-fluid">
        <div class="col-lg-8">

  	  <div class="row d-inline-flex w-50" style="max-width:1000px">

      <div class="col">
   
          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800"></h1>
           
          <p class="mb-8"></p>

          <!-- DataTales Example -->

              <!-- 게시글안쪽 -->

			 <div class="card mb-4">
					        <div class="card-header">
					          <ul class="nav nav-tabs card-header-tabs" id="writeForm" role="tablist">
					            <li class="nav-item">
					            <a class="nav-link  href="#gnrlwrite" role="tab2" aria-controls="gnrlwrite" aria-selected="false">글 작성</a>
					            </li>
					            <li class="nav-item">
					              <a class="nav-link active""  href="#tap2" role="tab" aria-controls="tap2" aria-selected="ture">업무</a>
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
					            <div class="tab-pane " id="gnrlwrite" role="tabpanel">
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
					            <div class="tab-pane active"" id="tap2" role="tabpanel">
					              <input type="text" class="form-control mb-1" placeholder="일정 제목을 입력하세요">
					              <!-- Standard button -->
								
									<!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
									 <div class="form-inline m-2 border-primary">
									&nbsp&nbsp
									<button type="button" class="btn btn-primary btn-sm">요청</button>&nbsp&nbsp
									<button type="button" class="btn btn-success btn-sm">진행</button>&nbsp&nbsp
									<button type="button" class="btn btn-info btn-sm">피드백</button>&nbsp&nbsp
									<button type="button" class="btn btn-warning btn-sm">완료</button>&nbsp&nbsp					
									<button type="button" class="btn btn-default btn-sm">보류</button>&nbsp&nbsp	
									
									<ul class="nav navbar-nav navbar-right">
        
								        <li class="dropdown">
								          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">담당자 추가 <span class="caret"></span></a>
								           <input type="text" class="form-control" aria-label="...">
								          <ul class="dropdown-menu" role="menu">
								            <li><a href="#">백규림</a></li>
								            <li><a href="#">박수현</a></li>
								            <li><a href="#">김희철</a></li>
								            <li><a href="#">정재구</a></li>
								            <li><a href="#">구영민</a></li>
								            <li><a href="#">정다운</a></li>
								            <li class="divider"></li>
								            <li><a href="#">Separated link</a></li>
								          </ul>
								          
								        </li>
								          
								      </ul>
								     
								      </div>
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
					     	     
           				   </form>


		
      
        
        <!-- /.container-fluid -->
        </div>
        </div>
  		
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
