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

  <!-- Custom fonts for this template-->
  <link href="/hwabo/resources/maincss/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

<!-- 진행률시작 -->
<style>
#myProgress {
  width: 100%;
  background-color: #ddd;
  border-radius:8px;
}

#myBar {
  width: 75%;
  height: 30px;
  background-color: #4e73df;
  text-align: center;
  line-height: 30px;
  color: white;
  border-radius:8px;
}

</style>

<!-- 진행률끝 -->
<link href="/hwabo/resources/maincss/css/sb-admin-2.min.css" rel="stylesheet">
  <link href="/hwabo/resources/maincss/css/progressbar.css" rel="stylesheet">
</head>

<body id="page-top">

<!-- 1.topbar추가 -->
<!-- Topbar2 -->
        <c:import url="/WEB-INF/views/red/topbar.jsp"></c:import>
<!-- End of Topbar -->

<!-- 2.바로아래div추가 및 임포트 추가  -->
<div style="width:100%;display:flex;justify-content:center;align-item:center;">
<!-- Sidebar2right -->
     <c:import url="/WEB-INF/views/red/sideFixed.jsp"></c:import>
<!-- End of Sidebar2right -->

<!-- 3. id="wrapper" 스타일 1300px설정 -->
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
<div class="card shadow mb-4">
            <div class="card-header py-3">
           	프로젝트 진행률
            </div>
            <div class="card-body">
              <!-- 게시글안쪽 -->

<div id="myProgress">
  <div id="myBar">75%</div>
</div>
<br>
<table style="text-align:center;width:100%;color:white;"><tr><td style="width:20%;"></td><td style="width:20%;"></td>
<td style="width:20%;"></td><td style="width:20%;"></td><td style="width:20%;">
<a class="btn btn-light btn-icon-split" style="width:90%;" onclick="move()">
<span class="text" style="color:gray;">확인</span>
</a>
</td>
</tr></table>
<script>
var i = 0;
let c = 5;//목표 갯수 현재 5개
var devide = 0;
function move() {
	devide += 100 / c;
    if(devide > 100){
    	devide = 100;
    }
  if (i == 0) {

    var elem = document.getElementById("myBar");
    var width = 0;
    var id = setInterval(frame, 10);
    function frame() {
      if (width >= devide) {
        clearInterval(id);
        i = 0;
      } else {
        width++;
        elem.style.width = width + "%";
        elem.innerHTML = width  + "%";
      }
    }
  }
}
</script>
            </div>
          </div>
<!-- 진행률끝 -->
<% for(int i = 0; i < 7; i++){ %>
<!-- 개인진행률시작 -->
          <div class="card mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">사용자 이름</h6>
                </div>
                <div class="card-body">
                  <div class="mb-1 small">개인 전체 진행률 80%</div>
                  <div class="progress mb-4">
                    <div class="progress-bar1 progress-bar" role="progressbar" style="width: 80%;backgound-color:#F8E0E0;" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <div class="mb-1 small">목표1 진행률 75%</div>
                  <div class="progress progress-sm mb-2">
                    <div class="progress-bar progress-bar2" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <div class="mb-1 small">목표2 진행률 45%</div>
                  <div class="progress progress-sm mb-2">
                    <div class="progress-bar progress-bar3" role="progressbar" style="width: 45%" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <div class="mb-1 small">목표3 진행률 65%</div>
                  <div class="progress progress-sm mb-2">
                    <div class="progress-bar progress-bar4" role="progressbar" style="width: 65%" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <div class="mb-1 small">목표4 진행률 100%</div>
                  <div class="progress progress-sm mb-2">
                    <div class="progress-bar progress-bar5" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                  <div class="mb-1 small">목표5 진행률 50%</div>
                  <div class="progress progress-sm mb-2">
                    <div class="progress-bar progress-bar6" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                  </div>
                </div>
              </div>
<!-- 개인진행률끝 -->
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
 
</div><!-- flex -->
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

</body>

</html>
