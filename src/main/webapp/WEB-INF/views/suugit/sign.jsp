<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="CONTEXT_PATH" value="${pageContext.request.contextPath}" scope="application"/>
<!DOCTYPE html>
<html lang="kr">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>HWABO</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="/hwabo/resources/maincss/css/styles_suugit.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

  <div class="container col-md-6">

    <div class="card o-hidden border-0 shadow-lg my-5">
      <div class="card-body p-0">
        <!-- Nested Row within Card Body -->
        <div class="row">
          <div class="col-md-5" style="padding-top:10%;">
            <img width=100% src="/hwabo/resources/maincss/img/suugit/easter_bunny_flatline.svg" ></img>
          </div>
          <div class="col-md-7">
            <div class="p-5">
              <div class="text-center">
                <h1 class="h4 text-gray-800 mb-4">회원가입</h1>
              </div>
              <form class="user ">
                <div class=" form-group row ">
                  <div class="mb-3 mb-sm-0 font-weight-bold">
                   <ul style="list-style:none;" >
                   <li style="margin-top:13px;margin-bottom:26px">이메일 주소</li>
                   <li style="margin-bottom:26px"> 사용자 이름</li>
                   <li style="margin-bottom:26px"> 비밀번호 </li>
                   <li style="margin-bottom:26px">비밀번호 확인</li>
                  </ul>  
                  </div>
                  <div class="col-sm-8 mb-3 mb-sm-0 ">
                    <form>
                  <input type="email" class="form-control form-control-user" id="exampleInputEmail" placeholder="이메일 주소">
                  <input type="text" class="form-control form-control-user" id="exampleFirstName" placeholder="사용자 이름">
                  <input type="password" class="form-control form-control-user" id="exampleInputPassword" placeholder="비밀번호">
                  <input type="password" class="form-control form-control-user" id="exampleRepeatPassword" placeholder="비밀번호 확인">
                  </div>
                </div>
                <a href="login.html" class="btn btn-primary btn-user btn-block">
                  가입하기
                </a>
              </form>
                <hr>
                <a href="index.html" class="btn btn-google btn-user btn-block">
                  <i class="fab fa-google fa-fw"></i> Google로 회원가입하기
                </a>
                 <a href="index.html" class="btn btn-naver btn-user btn-block">
                      <span class="font-weight-bolder" style="font-weight-bolder;font-size:1em">N&nbsp;</span>Naver로 회원가입하기
                    </a>
              </form>
              <hr>
              <div class="text-center">
                <a class="small" href="javascript:location.href='login.do';">이미 회원이신가요? 로그인하기</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

</body>

</html>
