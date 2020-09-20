<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>  

<!DOCTYPE html>

<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<title>HWABO</title>

   
<style type="text/css">
#counter:focus {
	outline:none;
}
   
#counter{
	margin: 0;
}

#import{
	pointer-events: none; 
}
</style>
</head>
<script type="text/javascript"   src="resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
function bkindshow(){
	$("#'${b.bkind}'").button('toggle')

}


function addbcharge0(){
     var name = $(event.target).text();
     var code = $(event.target).val();
      
       $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
       //$('#bform').val(name); 
       
       $('#name0').val(name);
       $('#user0').val(code);
       $("input:checkbox[id='user0']").prop("checked", true);
       $("input:checkbox[id='name0']").prop("checked", true);
       

       alert($("#user0").val()+" 0번"+ $("#name0").val()); 
       
   }


function addbcharge1(){
   var name = $(event.target).text();
   var code = $(event.target).val();
   
    $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
    //$('#bform').val(name); 
    
    $('#name1').val(name);
    $('#user1').val(code);
    $("input:checkbox[id='user1']").prop("checked", true);
    $("input:checkbox[id='name1']").prop("checked", true);
    
    alert($("#user1").val()+" 1번"+ $("#name1").val()); 
    
}
function addbcharge2(){
      var name = $(event.target).text();
      var code = $(event.target).val();
       $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
       //$('#bform').val(name); 
       
      $('#name2').val(name);
       $('#user2').val(code);
       $("input:checkbox[id='user2']").prop("checked", true);
       $("input:checkbox[id='name2']").prop("checked", true);
       
       alert($("#user2").val()+" 2번" + $("#name2").val()); 
       
   }
function addbcharge3(){
      var name = $(event.target).text();
      var code = $(event.target).val();
       $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
       //$('#bform').val(name); 
       
      $('#name3').val(name);
       $('#user3').val(code);
       $("input:checkbox[id='user3']").prop("checked", true);
       $("input:checkbox[id='name3']").prop("checked", true);
       
       alert($("#user3").val()+" 3번"); 
       
   }
function addbcharge4(){
      var name = $(event.target).text();
      var code = $(event.target).val();
       $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
       //$('#bform').val(name); 
       
      $('#name4').val(name);
       $('#user4').val(code);
       $("input:checkbox[id='user4']").prop("checked", true);
       $("input:checkbox[id='name4']").prop("checked", true);
       
       alert($("#user4").val()+" 4번"); 
       
   }
function addbcharge5(){
      var name = $(event.target).text();
      var code = $(event.target).val();
     
       $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
       //$('#bform').val(name); 
       
      $('#name5').val(name);
       $('#user5').val(code);
       $("input:checkbox[id='user5']").prop("checked", true);
       $("input:checkbox[id='name5']").prop("checked", true);
       
       alert($("#user5").val()+" 5번"); 
       
   }
function addbcharge6(){
      var name = $(event.target).text();
      var code = $(event.target).val();
       $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
       //$('#bform').val(name); 
       
      
       $('#user6').val(code);
       $('#name6').val(name);
       $("input:checkbox[id='user6']").prop("checked", true);
       $("input:checkbox[id='name6']").prop("checked", true);
       
       alert($("#user6").val()+" 6번"); 
       
   }
function unSelected(){
   
   $(event.target).parent().remove();
   
 
}

function upcharge(){
	var result = "y";
	$('#upc').var(result);

}
</script>


                        
<body id="page-top">

 <form action="bpostup.do" method="post" id="bupdate" enctype="multipart/form-data">
            
            
<table style="position:fixed;z-index:8; width:100%;height:70%;">
<tr onclick="javascript:location.href='mybpost.do?ucode=${sessionScope.ucode}&pnum=${sessionScope.pnum}'"><td>&nbsp;</td><td style="height:20%;">&nbsp;</td><td>&nbsp;</td></tr>
<tr><td  onclick="javascript:location.href='mybpost.do?ucode=${sessionScope.ucode}&pnum=${sessionScope.pnum}'" style="width:30%;"></td><td style="width:40%;height:45%;background-color:white;border:1px solid skyblue;">
<div class="p-5" style="width:100%;">

<%-- <form action="bpostup.do" method="post" id="bupdate" enctype="multipart/form-data">
       
   <div align="right" style="padding-bottom: 10px;">
        <button type="reset" class="btn btn-light">
			<span>원래대로</span>
		</button>
		&nbsp;&nbsp;&nbsp;&nbsp;
			<span >
				<input class="btn btn-light" type="submit" value="수정 완료" >
			</span>
			&nbsp;
			<span>
				<c:url var="bpostone" value="bpostOne.do">
					<c:param name="bno" value="${post.bno }" />
					<c:param name="ucode" value="${sessionScope.ucode }" />
					<c:param name="pnum" value="${sessionScope.pnum }" />
				</c:url>
				<a class="btn btn-light" href="${bpostone }">수정 취소</a>
			</span>
                  </div>


		 <input type ="hidden" name="bno" value="${post.bno }">
         <input type="hidden" name="bucode" value="${sessionScope.ucode }">
         <input type="hidden" name="bwriter" value="${sessionScope.uname }">
         <input type="hidden" name="bpnum" value="${sessionScope.pnum }">
       	 <input type="hidden" id="bform" name="bcharge">
       	 <input type="hidden" name="boriginfile" value="${post.boriginfile }">
       	 <input type="hidden" name="brenamefile" value="${post.brenamefile }">
       	 
      
        <table class="table" style="text-align: center; width: 100%;">
        <tr><th style="width: 13%; text-align: center;">제목</th><td><input type="text" name="btitle" class="form-control" placeholder="일정 제목을 입력하세요" required="required" value="${post.btitle }"></td></tr>
	<tr><th style="width: 13%; text-align: center;">유형</th><td>${post.bwriter }</td></tr>
	<tr><th style="width: 13%; text-align: center;">담당자</th><td>${post.bwriter }</td></tr>
	<tr><th style="width: 13%; text-align: center;">시작날짜</th><td>${post.bwriter }</td></tr>
	<tr><th style="width: 13%; text-align: center;">끝날짜</th><td>${post.bwriter }</td></tr>
	<tr><th style="width: 13%; text-align: center;">내용</th><td>${post.bwriter }</td></tr>
	<tr><th style="width: 13%; text-align: center;">파일</th><td>${post.bwriter }</td></tr>
	
        	<tr>
              <td colspan="5"><span style="float: left;"><i class="fa fa-pen"></i>&nbsp;제 목</span>                                 
              <input type="text" name="btitle" class="form-control" placeholder="일정 제목을 입력하세요" required="required" value="${post.btitle }"></td>
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
     
     
 
<div class="dropdown"> 
     <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
       담당자 수정
     </button>
       <div id="selected"> 기존 담당자 : ${ post.bchargename }</div>
      
  
    <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
  	
     <c:forEach var="pm" items="${sessionScope.pmlist}" varStatus="status">
     <button class="dropdown-item" type="button" onclick="addbcharge${status.index}();" value="${pm.ucode }">${pm.uname }</button>
     <input type="checkbox" id="user${status.index }" name="bcharge" style="display:none">
     <input type="checkbox" id="name${status.index }" name="bchargename" style="display:none">
     </c:forEach>
       </div>
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
                 type="date" class="form-control" name="bstartday" id="beforesstartday" value="${post.bstartday }"></td>

              <td width="20%"><span style="float: left;"><i
                    class="far fa-calendar-alt"></i>&nbsp;끝 날 짜</span><input
                 type="date" class="form-control" name="bendday" id="beforesendday" value="${post.bendday }"></td>
              <td colspan="3"></td>
           </tr>
           <tr>
              <td colspan="3" style="text-align: left;"><span style="color: blue;" id="placespan"></span></td>
              <td colspan="2">&nbsp;</td>
           </tr>
        
        
           <tr>
              <td colspan="5"><span style="float: left;"><i class="far fa-keyboard"></i>&nbsp;메 모</span>
              <textarea cols="50" rows="6" class="w-100 form-control" name="bcontent">${post.bcontent }</textarea>
              </td>
           </tr>
           
           <tr>
              <td colspan="5">&nbsp;</td>
           </tr>
           <tr>
              <td>
               <c:if test="${!empty post.boriginfile }">
             	${post.boriginfile }
             
             	<input type="checkbox" name="deleteFlag" value="yes">삭제
          	  </c:if>
             </td>
           </tr>
           <tr>
             <td>
               <input type="file" name="upfile">
             </td>
            </tr>

        </table>
                    

 </form> --%>
 
                 
            		<input type ="hidden" name="bno" value="${post.bno }">
                     <input type="hidden" name="bucode" value="${sessionScope.ucode }">
                     <input type="hidden" name="bwriter" value="${sessionScope.uname }">
                     <input type="hidden" name="bpnum" value="${sessionScope.pnum }">
                   	 <input type="hidden" id="bform" name="bcharge">
                   	 <input type="hidden" name="boriginfile" value="${post.boriginfile }">
                   	 <input type="hidden" name="brenamefile" value="${post.brenamefile }">
                   	 
                  
                        <table class="table" style="text-align: center; width: 100%;">
                           
                           <tr>
                              <td colspan="5"><span style="float: left;"><i class="fa fa-pen"></i>&nbsp;제 목</span>                                 
                              <input type="text" name="btitle" class="form-control" placeholder="일정 제목을 입력하세요" required="required" value="${post.btitle }"></td>
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
                           <td colspan="5">
                           <div>   
                        <nav class="navbar navbar-expand navbar-light bg-light mb-4">
                    
                    
                
               <div class="dropdown"> 
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" >
                      담당자 수정
                    </button>
                      <div id="selected"> 기존 담당자 : ${ post.bchargename }</div>
                      
                  
                    <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                  	
                     <c:forEach var="pm" items="${sessionScope.pmlist}" varStatus="status">
                     <button class="dropdown-item" type="button" onclick="addbcharge${status.index}();" value="${pm.ucode }">${pm.uname }</button>
                     <input type="checkbox" id="user${status.index }" name="bcharge" style="display:none">
                     <input type="checkbox" id="name${status.index }" name="bchargename" style="display:none">
                     </c:forEach>
                    </div>
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
                                 type="date" class="form-control" name="bstartday" id="beforesstartday" value="${post.bstartday }"></td>

                              <td width="20%"><span style="float: left;"><i
                                    class="far fa-calendar-alt"></i>&nbsp;끝 날 짜</span><input
                                 type="date" class="form-control" name="bendday" id="beforesendday" value="${post.bendday }"></td>
                              <td colspan="3"></td>
                           </tr>
                           <tr>
                              <td colspan="3" style="text-align: left;"><span style="color: blue;" id="placespan"></span></td>
                              <td colspan="2">&nbsp;</td>
                           </tr>
                        
                        
                           <tr>
                              <td colspan="5"><span style="float: left;"><i class="far fa-keyboard"></i>&nbsp;메 모</span>
                              <textarea cols="50" rows="6" class="w-100 form-control" name="bcontent">${post.bcontent }</textarea>
                              </td>
                           </tr>

                           <tr>
                              <td>
                               <c:if test="${!empty post.boriginfile }">
                             	${post.boriginfile }
                             
                             	<input type="checkbox" name="deleteFlag" value="yes">삭제
                          	  </c:if>
                             </td>
                           </tr>
                           <tr>
                             <td>
                               <input type="file" name="upfile">
                             </td>
                            </tr>
                            <tr>
                             
                              <td>
                              &nbsp;
                              </td>
                              <td colspan="3">
                              <!-- <a class="btn btn-success btn-icon-split"   href="javascript: spostInsert.submit();"  style="width: 90%;">
                                    <span class="text">등록</span> </a> -->
                                    <input type="submit" class="btn btn-sm btn-info" value="수 정 ">
                                 <!--    <button type="submit" class="btn btn-sm btn-info" >&nbsp;등 &nbsp;록&nbsp;</button> -->
                           
                              <!-- <a href="javascript:spostInsert.reset();"   class="btn btn-danger btn-icon-split" style="width: 90%;">
                                    <span class="text">취소</span> </a> -->
                                    <input type="reset" class="btn btn-sm btn-danger" value="취 소">
                                    <!-- <button type="reset" class="btn btn-sm btn-danger" >&nbsp;취 &nbsp;소&nbsp;</button> -->
                              </td>
                           </tr>
                        </table>
                   
 
 
 
 
</div>
</td><td  onclick="javascript:location.href='mybpost.do?ucode=${sessionScope.ucode}&pnum=${sessionScope.pnum}'" style="width:30%;"></td></tr>
<tr  onclick="javascript:location.href='mybpost.do?ucode=${sessionScope.ucode}&pnum=${sessionScope.pnum}'"><td>&nbsp;</td><td style="height:35%;">&nbsp;</td><td>&nbsp;</td></tr>      
</table>
  </form>
  
<div id="import" style="opacity: 0.5">
<c:import url="/WEB-INF/views/abc/myBPOST.jsp" />
</div>





</body>

</html>