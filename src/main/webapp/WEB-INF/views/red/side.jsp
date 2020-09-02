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
  <!-- Custom fonts for this template-->
  <link href="/hwabo/resources/maincss/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="/hwabo/resources/maincss/css/sb-admin-2.min.css" rel="stylesheet">
  <link href="/hwabo/resources/maincss/css/progressbar.css" rel="stylesheet">
</head>

<body id="page-top">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <img src="resources/maincss/img/hwaboLogo.png" style="width: 100%; max-width: 780px; vertical-align: middle" onclick="javascript:location.href='/hwabo/'">

      <!-- Divider -->
      <hr class="sidebar-divider my-0">
      <!-- Heading -->
      <div class="sidebar-heading">
        Main
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">

      <!-- Nav Item - Charts -->
      <li class="nav-item">
        <a class="nav-link" href="fborder.do">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>캘린더</span></a>
      </li>

      <!-- Nav Item - Tables -->
      <li class="nav-item">
        <a class="nav-link" href="ftables.do">
          <i class="fas fa-fw fa-table"></i>
          <span>리스트</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">
      
      <div class="sidebar-heading">
        progress
      </div>

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">

      <!-- Nav Item - Charts -->
      <li class="nav-item">
        <a class="nav-link" href="fother.do">
          <i class="fas fa-fw fa-chart-area"></i>
          <span>목표</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider d-none d-md-block">

      <!-- Sidebar Toggler (Sidebar) -->
      <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div>

    </ul>
    <!-- End of Sidebar -->

    

  <!-- Bootstrap core JavaScript-->
  <script src="/hwabo/resources/maincss/vendor/jquery/jquery.min.js"></script>
  <script src="/hwabo/resources/maincss/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="/hwabo/resources/maincss/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="/hwabo/resources/maincss/js/sb-admin-2.min.js"></script>

  <!-- Page level plugins -->
  <script src="/hwabo/resources/maincss/vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="/hwabo/resources/maincss/js/demo/chart-area-demo.js"></script>
  <script src="/hwabo/resources/maincss/js/demo/chart-pie-demo.js"></script>

</body>

</html>
