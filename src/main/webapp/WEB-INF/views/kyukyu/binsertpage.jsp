
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  
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

<!-- Custom fonts for this template -->
<link
   href="/hwabo/resources/maincss/vendor/fontawesome-free/css/all.min.css"
   rel="stylesheet" type="text/css">
<link
   href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
   rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/hwabo/resources/maincss/css/sb-admin-2.min.css"
   rel="stylesheet">

<!-- Custom styles for this page -->
<link
   href="/hwabo/resources/maincss/vendor/datatables/dataTables.bootstrap4.min.css"
   rel="stylesheet">
   
   <style type="text/css">
   #counter:focus {outline:none;}
   
   #counter{margin: 0;}
   </style>
</head>
<script type="text/javascript"   src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
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





</script>


                        
<body id="page-top">

   <!-- Page Wrapper -->
   <div id="wrapper">

      <!-- Content Wrapper -->
      <div id="content-wrapper" class="d-flex flex-column">

         <!-- Main Content -->
         <div id="content">

            <!-- Begin Page Content -->
            <div class="container-fluid">
               <!-- Page Heading -->
               <h1 class="h3 mb-2 text-gray-800"></h1>
               <p class="mb-4"></p>

               <!-- DataTales Example -->
               <div class="card shadow mb-4">
              



                  <div class="card-body">
                     <!-- 게시글안쪽 -->
                  <form action="insertbpost.do" name="b" method="post" id="bInsert" enctype="multipart/form-data">
            
                     <input type="hidden" name="bucode" value="${sessionScope.ucode }">
                     <input type="hidden" name="bwriter" value="${sessionScope.uname }">
                     <input type="hidden" name="bpnum" value="${sessionScope.pnum }">
                       <input type="hidden" id="bform" name="bcharge">
                  
                        <table style="text-align: center; width: 100%;">
                           <tr>
                              <td colspan="5">
                                 <hr>
                              </td>
                           </tr>
                           <tr>
                              <td colspan="5"><span style="float: left;"><i class="fa fa-pen"></i>&nbsp;제 목</span>                                 
                              <input type="text" name="btitle" class="form-control" placeholder="일정 제목을 입력하세요" required="required"></td>
                           </tr>
                           <tr>
                              <td colspan="5">&nbsp;</td>
                           </tr>
                        
                           <tr>
                              <td colspan="5">
                              
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
                              
                              </td>
                           </tr>
                           <tr>
                              <td colspan="5">&nbsp;</td>
                           </tr>
                     
                           <tr>
                           <td colspan="5">
                           <div>   
                        <nav class="navbar navbar-expand navbar-light bg-light mb-4">
                    
                        <br><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                             담당자
                        </a>
                    <!-- 담당자 이름 -->
                       <div><input type="text" id="selected" name="bcharge"></div>
              
                    
                        <div class="dropdown-menu dropdown-menu-left animated--grow-in" aria-labelledby="navbarDropdown">
                        <c:forEach var="pm" items="${ }">
                          <a class="dropdown-item" onclick="addbcharge()"> ${pm.puser }</a>
                       	
                          <div class="dropdown-divider"></div>
                          <a class="dropdown-item" href="#">더보기</a>
                          </c:forEach>
                        </div>
                        
                        <a class="navbar-brand" href="#"></a>
                    <ul class="navbar-nav ml-auto">
                      <li class="nav-item dropdown">
                      </li>
                    </ul>
                  </nav>
                </div>
                     </td>
                     </tr>      
                           
                           <tr>
                              <td width="20%"><span style="float: left;"><i
                                    class="far fa-calendar-alt"></i>&nbsp;시 작 날 짜</span><input
                                 type="date" class="form-control" name="bstartday" id="beforesstartday"></td>

                              <td width="20%"><span style="float: left;"><i
                                    class="far fa-calendar-alt"></i>&nbsp;끝 날 짜</span><input
                                 type="date" class="form-control" name="bendday" id="beforesendday"></td>
                              <td colspan="3"></td>
                           </tr>
                           <tr>
                              <td colspan="3" style="text-align: left;"><span style="color: blue;" id="placespan"></span></td>
                              <td colspan="2">&nbsp;</td>
                           </tr>
                        
                        
                           <tr>
                              <td colspan="5"><span style="float: left;"><i class="far fa-keyboard"></i>&nbsp;메 모</span>
                              <textarea cols="50" rows="6" class="w-100 form-control" name="bcontent"></textarea>
                              </td>
                           </tr>
                           
                           <tr>
                              <td colspan="5">&nbsp;</td>
                           </tr>
                           <tr>
                              <td><input type="file" name="ofile"></td>
                              <!--  #f8f9fc   -->
                              <td>
                              <select name="bopen" class="form-control" >
                                 <option value="y" selected>전체공개</option>
                                 <option value="n">나만보기</option>
                              </select>
                              </td>
                              <td colspan="3">
                              <!-- <a class="btn btn-success btn-icon-split"   href="javascript: spostInsert.submit();"  style="width: 90%;">
                                    <span class="text">등록</span> </a> -->
                                    <input type="submit" class="btn btn-sm btn-info" value=" 등  록 ">
                                 <!--    <button type="submit" class="btn btn-sm btn-info" >&nbsp;등 &nbsp;록&nbsp;</button> -->
                           
                              <!-- <a href="javascript:spostInsert.reset();"   class="btn btn-danger btn-icon-split" style="width: 90%;">
                                    <span class="text">취소</span> </a> -->
                                    <input type="reset" class="btn btn-sm btn-danger"  value=" 취  소 ">
                                    <!-- <button type="reset" class="btn btn-sm btn-danger" >&nbsp;취 &nbsp;소&nbsp;</button> -->
                              </td>
                           </tr>
                        </table>
                     </form>

                     
                  </div>
               </div>
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

   </div>
   <!-- End of Page Wrapper -->

   <!-- Scroll to Top Button-->
   <a class="scroll-to-top rounded" href="#page-top"> <i
      class="fas fa-angle-up"></i>
   </a>

   <!-- Logout Modal-->
   <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
      aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
         <div class="modal-content">
            <div class="modal-header">
               <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
               <button class="close" type="button" data-dismiss="modal"
                  aria-label="Close">
                  <span aria-hidden="true">Ã </span>
               </button>
            </div>
            <div class="modal-body">Select "Logout" below if you are ready
               to end your current session.</div>
            <div class="modal-footer">
               <button class="btn btn-secondary" type="button"
                  data-dismiss="modal">Cancel</button>
               <a class="btn btn-primary" href="login.jsp">Logout</a>
            </div>
         </div>
      </div>
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