<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
  <link href="/hwabo/resources/maincss/css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="/hwabo/resources/maincss/vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
  <link href="/hwabo/resources/maincss/css/github-markdown.css"  rel="stylesheet">
<style>
.del_img{
    color: red;
    display: none;
}
.select_img:hover .del_img {
   display:block  
}
</style>
</head>

<body id="page-top">

<!-- 11111111111111111 -->
  <c:import url="/WEB-INF/views/suugit/topbar.jsp"></c:import>
 
 <div style="width:100%;display:flex;justify-content:center;align-item:center;">
<!-- Sidebar2right -->
     <c:import url="/WEB-INF/views/red/sideFixed.jsp"></c:import>
<!-- End of Sidebar2right -->
<!-- 111111111111111111 -->
 
 
  <!-- Page Wrapper -->
  <div id="wrapper" style="width:1300px;">

    <!-- Sidebar -->
    <div style="width:17%"></div>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column bg-white" style="width:62%;">

      <!-- Main Content -->
     <div id="content">

        <!-- Topbar -->
        <br><br><br><br>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">
<!-- 진행률 시작 -->
<div class="card mb-4">
                <div class="card-body">
                  <div class="mb-1 small">프로젝트 진행률 75%</div>
                  <div class="progress progress-sm mb-2">
                    <div class="progress-bar" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
              </div>
<!-- 진행률끝 -->
          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800"></h1>
          <p class="mb-4"></p>
        
<div class="card shadow mb-4">
            <div class="card-header py-3">
            </div>
               <div class="card-body">
              <!-- 게시글안쪽 -->
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
              <tr><td colspan="5">
              <hr>
              </td></tr>
              <!-- 글작성 본문 -->
             <form action="incp.do" id="InsertCpost" method="post" enctype="multipart/form-data">
             
              <tr><td colspan="5"> <input name="ctitle" type="text" class="form-control mb-1" placeholder="제목"></td></tr>
              <tr><td colspan="5"><textarea id="ccontent" name="ccontent" rows="6" class="w-100 form-control "></textarea></td></tr>
              <tr id="preview"></tr>
              <tr id="file_list">
       				<input type="hidden" name="cwriter" value="${sessionScope.uname }">
              	<td>
              		<img src="" />
              		<a class="del_img" style="position:relative;bottom:80%;left:20%"><i class="fa fa-times-circle"></i></a>
              		</div>
              		</div>
              	</td>
              	<td>
              		<div class="select_img rounded float-left">
              		<a class="del_img" style="position:relative;bottom:80%;left:20%"><i class="fa fa-times-circle"></i></a>
              		</div>
              	</td>
              	<td>
              		<div class="select_img rounded float-left">
              		<img src="" />
              		<a class="del_img" style="position:relative;bottom:80%;left:20%"><i class="fa fa-times-circle"></i></a>
              		</div>
              	</td>
              	<td>
              	<div class="imgs_wrap">
              		<img id="img" />
               	</div>
              	</td>
              
              </tr>
              <tr>
              <!-- 옵션메뉴 --> 
              	<div class="clearfix d-flex ">
              	<td colspan="2" class="flex-grow-5 ">
              	
              		<label class="btn btn-light small" onclick="fileUpload" >
              			 <input type="file" name="file" id="file" style="display:none" multiple>
              			<i class="fa fa-link ">&nbsp;파일</i>
              		</label>
              		 <label class="btn btn-light small">
              			<input type="file" name="ofile" style="display:none" id="atchm_img" accept=".jpg,.png,.svg" multiple>
              			<i class="fa fa fa-image ">&nbsp;사진</i>
              		</label> 
              		<label class="btn btn-light small" >
              			<input type="file" name="hashtag" style="display:none">
              			<i class="fa fa-hashtag ">&nbsp;</i>
              		</label>
              		<label class="btn btn-light small" >
              			<input type="file" name="mention" style="display:none">
              			<i class="fa fa-at">&nbsp;</i>
              		</label>
              	</td>
              	<td></td>
              	<td>
              	<select name="copen" class="form-control form-control-small selectpicker">
  					<option value="Y" selected>전체공개</option>
  					<option value="N">비공개</option>
				</select>
				
              	</td>
				</form>
              	 <!-- 버튼 -->
              	 <td colspan="2" style="width:5%"> 
             	 	<button type="submit" id="btn-save" class="btn btn-success p-1" form="InsertCpost">등록</button>
             		<button type="reset" class="btn btn-danger p-1" style="width:40%;float:right;">
                    <span class="text">취소</span>
             		</button>
              	</td>
              </tr>

             </div>
              </table>
            </div>
          </div>
          
           
          <!-- 새 글작성끝 -->
          
          
<% for(int i = 0; i < 7; i++){ %>
<!-- 게시글시작 -->
<div class="card shadow mb-4">
            <div class="card-header py-3">
            </div>
            <div class="card-body">
              <!-- 게시글안쪽 -->
<h1>게시글 제목</h1>
<hr>
가<br>
나다<br>
라마바<br>
사아자차<br>
<br>
<br>
<hr>
<table style="width:100%;">
<tr><td style="width:20%;">
<a href="#" class="btn btn-primary btn-icon-split btn-sm">
                    <span class="icon text-white-50">
                      <i class="fas fa-flag"></i>
                    </span>
                    <span class="text">좋아요 0</span>
                  </a>
</td><td style="width:20%;"></td><td style="width:20%;"></td>
<td style="width:20%;"></td><td style="width:20%;float:right;">
</td>
</tr>
</table>
            </div>
<div class="px-3 py-5 bg-gradient-light text-white" style="height:10px;">
<input type="text" class="form-control" placeholder="답글을 입력하세요">
</div>
          </div>
<!-- 게시글끝 -->
<% } %>


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
</div><!-- div flex -->
  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

 
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

   <script src="resources/js/jquery-3.5.1.min.js"></script>
   <script src="resources/js/cpost.js"></script>



</body>

</html>
