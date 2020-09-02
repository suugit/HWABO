
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="CONTEXT_PATH" value="${pageContext.request.contextPath}"
	scope="application" />
<!DOCTYPE html>
<html lang="kr">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>HWABO</title>

<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="/hwabo/resources/maincss/css/styles_suugit.css"
	rel="stylesheet">
<style>
 .modal-backdrop {

        z-index: -1;

    }
</style>
</head>

<body class="bg-gradient-primary">
	<div class="container mt-5">
		<div class="row justify-content-center">
		<ul>
		<li><i class="fa fa-user-plus"></i><button class="btn btn-primary " data-toggle="modal" data-target="#Modal1">프로젝트 초대</button></li>
		<li></li>
		<li></li>
		<li></li>
		</ul>
			  
			  <button class="btn btn-primary " data-toggle="modal" data-target="#Modal1">프로젝트 초대-기존</button>
			  <button class="btn btn-primary " data-toggle="modal" data-target="#Modal1">포르젝트초대-신규</button>
			  <button class="btn btn-primary " data-toggle="modal" data-target="#Modal1"></button>
			  <button class="btn btn-primary " data-toggle="modal" data-target="#Modal1">비밀번호변경</button>
			<div class="inviteadd"></div>
		</div>
	</div>


         <!--Modal: Login / Register Form-->
<div class="modal fade" id="modalLRForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog cascading-modal" role="document">
    <!--Content-->
    <div class="modal-content">

      <!--Modal cascading tabs-->
      <div class="modal-c-tabs">

        <!-- Nav tabs -->
        <ul class="nav nav-tabs md-tabs tabs-2 light-blue darken-3" role="tablist">
          <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#panel7" role="tab"><i class="fas fa-user mr-1"></i>
              이메일로 초대하기</a>
          </li>
          <li class="nav-item"> <a class="nav-link" data-toggle="tab" href="#panel8" role="tab"><i class="fas fa-user-plus mr-1"></i>
              기존회원 초대하기</a>
          </li>
        </ul>

        <!-- Tab panels -->
        <div class="tab-content">
          <!--Panel 7-->
          <div class="tab-pane fade in show active" id="panel7" role="tabpanel">

            <!--Body-->
            <div class="modal-body mb-1">
              <div class="md-form form-sm m-3">
              <ul class="list-unstyled text-center">
              <small>
              	<li>이메일을 입력하여 프로젝트에 초대해보세요!</li>
              	<li>초대받은 사용자는 이메일을 통해 바로 프로젝트에 참여할 수 있습니다</li>
              </small>
              </ul>
              <form id="abcForm">
              <table id="inviteTable">
              <colgroup>
              	<col width="10%">
              	<col width="25%">
              	<col width="60%">
              	<col width="5%">
              </colgroup>
              <tbody>
              <tr class="qqq">
              	<td><i class="fas fa-envelope prefix"></i></td>
              	<td><label class="control-label mypage text-center mr-2">이메일</label></td>
              	<td><input class="form-control" type="email" name=""></td>
              	<td><a class="btn btn-primary" onclick="removetr()">삭제</a></td>

              </tr>
              </tbody>
              </table>
              	 
            </form>
              	<a class="btn my-3" onclick="callFunction()"><i class="fa fa-plus-square mr-1"></i>이메일 추가</a>
              </div>

             
              <div class="text-center mt-2">
                <button class="btn btn-info">추가하기 <i class="fas fa-sign-in ml-1"></i></button>
              </div>
            </div>
            <!--Footer-->
            <div class="modal-footer">
              <div class="options text-center text-md-right mt-1">
                <p>Not a member? <a href="#" class="blue-text">추가하기</a></p>
                <p>Forgot <a href="#" class="blue-text">Password?</a></p>
              </div>
              <button type="button" class="btn btn-outline-info waves-effect ml-auto" data-dismiss="modal">Close</button>
            </div>

          </div>
          <!--/.Panel 7-->

          <!--Panel 8-->
          <div class="tab-pane fade" id="panel8" role="tabpanel">

            <!--Body-->
            <div class="modal-body">
              <div class="md-form form-sm mb-5">
                <i class="fas fa-envelope prefix"></i>
                <input type="email" id="modalLRInput12" class="form-control form-control-sm validate">
                <label data-error="wrong" data-success="right" for="modalLRInput12">Your email</label>
              </div>

              <div class="md-form form-sm mb-5">
                <i class="fas fa-lock prefix"></i>
                <input type="password" id="modalLRInput13" class="form-control form-control-sm validate">
                <label data-error="wrong" data-success="right" for="modalLRInput13">Your password</label>
              </div>

              <div class="md-form form-sm mb-4">
                <i class="fas fa-lock prefix"></i>
                <input type="password" id="modalLRInput14" class="form-control form-control-sm validate">
                <label data-error="wrong" data-success="right" for="modalLRInput14">Repeat password</label>
              </div>

              <div class="text-center form-sm mt-2">
                <button class="btn btn-info">Sign up <i class="fas fa-sign-in ml-1"></i></button>
              </div>

            </div>
            <!--Footer-->
            <div class="modal-footer">
              <div class="options text-right">
                <p class="pt-1">Already have an account? <a href="#" class="blue-text">Log In</a></p>
              </div>
              <button type="button" class="btn btn-outline-info waves-effect ml-auto" data-dismiss="modal">Close</button>
            </div>
          </div>
          <!--/.Panel 8-->
        </div>

      </div>
    </div>
    <!--/.Content-->
  </div>
</div>
<!--Modal: Login / Register Form-->

<div class="text-center">
	
  <a href="" class="btn my-3" data-toggle="modal" data-target="#modalLRForm"><i class="fa fa-plus-square mr-1"></i>프로젝트 초대하기</a>
</div>
            
            






	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>



          <script>
            document.getElementById('btn_pwd').addEventListener('click',function(){
              $('Modal1').modal('show');
              e.stopPropagation();
            })
			
            document.getElementById('btn_signout').addEventListener('click',function(){
            	var result = confirm('회원 탈퇴 시 어떠한 경우에도 계정을 복구할 수 없습니다. 계속하시겠습니까?'); 
            	if(result) { 
            		//yes location.replace('index.php'); 
            		} else { //no 
            			}
            })
            
             document.getElementById('btn_add').addEventListener('click',function(){
            	 alert("클릭");
            	 e.preventDefault();
            	
            	
            	/*  document.getElementsByClassName('inviteadd').clone().appendTo(".inviteform"); */
             });
            
            function callFunction(){
            	alert("hi");
            	 $('.qqq').first().clone().appendTo( '#inviteTable' );
            }
            
            function removetr(){
            	var a = $('this').closest("tr").rowIndex;
            	alert(a);
            }
      /*       function callFunction(){
            	alert("hi");
            
            	var tbl = document.getElementById("inviteTable");
            	var trow = tbl.insertRow(tbl.rows.length);
       			alert(tbl.rows.length);
				var cell1 = row.insertCell(0);
				var cell2 = row.insertCell(1);
				var cell3 = row.insertCell(2);
				var cell4 = row.insertCell(3);
				
				cell1.innerHTML ="<td>javascript</td>"
				cell2.innerHTML ="<td>javas</td>"
				cell3.innerHTML ="<td>japt</td>"
				cell4.innerHTML ="<td>javt</td>"
            /* 	const tr = document.createElement("tr");
            	const td = document.createElement("td");
           	 const delBtn = document.createElement("button");
            	delBtn.innerHTML="X";
            	const span = document.createELement("span");
            	span.innerText = "hi";
     			td.appendchild(span);
     			td.appendchild(delBtn);
     			toDoList.appendChlid(td);
				e.preventDefault();
            } */
          </script>
</body>

</html>

