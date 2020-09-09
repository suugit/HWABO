<%@ page session="false" %>
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

</head>

<body id="page-top">

<!-- 11111111111111111 -->
  <c:import url="/WEB-INF/views/red/topbar.jsp"></c:import>
 
 <div style="width:100%;display:flex;justify-content:center;align-item:center;">
<!-- Sidebar2right -->
     <c:import url="/WEB-INF/views/red/entersideFixed.jsp"></c:import>
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

          <!-- 게시글 작성 시작 -->
         <!--  <div class="card shadow mb-4">
            <div class="card-header py-3">
            </div>
            <div class="card-body">
              게시글안쪽
              <form action="blank.do" id="mainInsert">
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
              <tr><td colspan="5">
              <hr>
              </td></tr>
              <tr><td colspan="5">
              <input type="text" class="form-control" placeholder="일정 제목을 입력하세요">
              </td></tr>
              <tr><td colspan="5">&nbsp;</td></tr>
              <tr><td colspan="2">
              <input type="date" class="form-control">
              </td><td>
              <img src="/hwabo/resources/maincss/img/tilde.png" style="width:100px;height:35px;">
              </td><td colspan="2">
              <input type="date" class="form-control">
              </td></tr>
              <tr><td colspan="5">&nbsp;</td></tr>
              <tr><td colspan="5">
              <input type="text" class="form-control" placeholder="장소를 입력하세요">
              </td></tr>
              <tr><td colspan="5">&nbsp;</td></tr>
              <tr><td colspan="5">
              <input type="text" class="form-control" placeholder="일정 제목을 입력하세요">
              </td></tr>
              <tr><td colspan="5">&nbsp;</td></tr>
              <tr><td colspan="5">
              <input type="text" class="form-control" placeholder="메모를 입력하세요">
              </td></tr>
              <tr><td colspan="5">&nbsp;</td></tr>
              <tr><td colspan="3"></td>
              <td>
              <a class="btn btn-success btn-icon-split" href="javascript:mainInsert.submit();" style="width:90%;" >
                    <span class="text">등록</span>
                  </a>
              </td><td>
              <a href="javascript:mainInsert.reset();" class="btn btn-danger btn-icon-split" style="width:90%;">
                    <span class="text">취소</span>
              </a>
              </td></tr>
              </table>
              </form>
            </div>
          </div> -->
          <!-- 게시글작성끝 -->
          <!-- 새 글작성 시작 -->
          <!-- 프로젝트생성시작 -->
<div class="card shadow mb-4" onclick="javascript:location.href='writeB.do'">
            <div class="card-body">
              <!-- 게시글안쪽 -->
                            <h1 class="m-0 text-primary" style="text-align:center">
                <img src="/hwabo/resources/maincss/img/plus2.png" style="width:45px;height:45px;">            
                            새 글쓰기
                            </h1>


            </div>
          </div>
          <!-- 프로젝트생성끝 -->
          
          
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
