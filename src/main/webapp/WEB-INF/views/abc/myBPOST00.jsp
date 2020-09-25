<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList"%>
<%@ page import="com.beet.HWABO.bpost.model.vo.Bpost" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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

<style type="text/css">
::-webkit-scrollbar { width: 6px; } /* 스크롤 바 */

::-webkit-scrollbar-track { background-color:#fff; } /* 스크롤 바 밑의 배경 */

::-webkit-scrollbar-thumb { background: #ddd; border-radius: 10px; } /* 실질적 스크롤 바 */

::-webkit-scrollbar-thumb:hover { background: #404040; } /* 실질적 스크롤 바 위에 마우스를 올려다 둘 때 */

::-webkit-scrollbar-thumb:active { background: #808080; } /* 실질적 스크롤 바를 클릭할 때 */

::-webkit-scrollbar-button { display: none; } /* 스크롤 바 상 하단 버튼 */

 /* The Modal (background) */
.modalD {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  }
    
        /* Modal Content/Box */
        .modalD-content {
            background-color: #fefefe;
            margin: 5% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 30%; /* Could be more or less, depending on screen size */                          
        }
</style>


<!-- Custom fonts for this template -->
<link
	href="/hwabo/resources/maincss/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="/hwabo/resources/maincss/css/sb-admin-2.css"
	rel="stylesheet">

<!-- Custom styles for this page -->
<link
	href="/hwabo/resources/maincss/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">

<script type="text/javascript" src="resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
		
	$.ajax({
		url: "bpostload.do",
		type: "POST",
		data: { 'ucode':'${ucode}', 'pnum': '${pnum}'  },
		dataType: "Json",
		traditional: true,
		success: function(obj){
				
				var values = '<thead><tr style="vertical-align: middle; text-align: center;"><th>유형</th><th>제목</th>	<th>내용</th><th>등록일</th></tr></thead>';
				
				
				
			 for(var i in obj){
			
				 values += '<tr id="trclick'+obj[i].bno+'" onclick="detailviewload(this.id);" style="cursor:hand;">';
	       		   
				 if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") =="요청"){
	           		 values +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #047AAC; margin-top:30px; vertical-align: middle; "'+'>요 청</strong></td>'
	           	 }
	           	if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") =="진행"){
	           		values +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #173192; margin-top:30px; vertical-align: middle; "'+'>진 행</strong></td>'
	           	 }
	           	if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") == "피드백"){
	           		values +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #f4b30d; margin-top:30px; vertical-align: middle; "'+'>피드백</strong></td>'
	           	 }
	           	if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") == "완료"){
	           		values +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #0C860F; margin-top:30px; vertical-align: middle; "'+'>완 료</strong></td>'
	           	 }
	           	if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") =="보류"){
	           		values +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #6b6d7d; margin-top:30px; vertical-align: middle; "'+'>보 류</strong></td>'
	           	 }
		            	 
		            	values  +='<td  style="vertical-align: middle;">' + decodeURIComponent(obj[i].btitle).replace(/\+/gi, "  ") + "</td>"
		                 
		                      +'<td style="vertical-align: middle; ">' + decodeURIComponent(obj[i].bcontent).replace(/\+/gi, "  ") + "</td>"
		                
		                      +'<td style="vertical-align: middle; text-align: center;" >'+decodeURIComponent(obj[i].benrolldate).replace(/\+/gi, "  ")+"</td>"
		                + "</tr>"
		       } //for in
		       
		       
	
		   		 $('#selectTable').html(values); 
	       
		}, 				
		error: function(request, status, errorData){ //에러는 위에서 복붙
			console.log("error code : " + request.status + "\nMessage : "+ request.responseText + "\nError : " + errorData);
		}
		
	});


	$('.type').change(function(){
		var types = [];
		
		$("input[name=type]:checked").each(function(){
			types.push($(this).val());
		});
		
		var ucodeval = "${ucode}";
		var pnumval = "${pnum}";

		var allData ={"ucode" : ucodeval , "pnum": pnumval, "types": types};

		$.ajax({
			url: "chooseBpost.do",
			type: "POST",
			data: allData, 
			dataType: "Json",
			traditional: true,
			success: function(obj){
				
			if(obj != null){	
				var values = '<thead><tr style="vertical-align: middle; text-align: center;"><th>유형</th><th>제목</th>	<th>내용</th><th>등록일</th></tr></thead>';
				
				$("#selectTable").empty();
				//출력용 문자열 만들기 (for in 문을 사용해보자)
				
			 for(var i in obj){
			
				 values += '<tr id="trclick'+obj[i].bno+'" onclick="detailviewload(this.id);" style="cursor:hand;">';

        		   
				 if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") =="요청"){
            		 values +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #047AAC; margin-top:30px; vertical-align: middle; "'+'>요 청</strong></td>'
            	 }
            	if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") =="진행"){
            		values +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #173192; margin-top:30px; vertical-align: middle; "'+'>진 행</strong></td>'
            	 }
            	if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") == "피드백"){
            		values +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #f4b30d; margin-top:30px; vertical-align: middle; "'+'>피드백</strong></td>'
            	 }
            	if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") == "완료"){
            		values +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #0C860F; margin-top:30px; vertical-align: middle; "'+'>완 료</strong></td>'
            	 }
            	if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") =="보류"){
            		values +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #6b6d7d; margin-top:30px; vertical-align: middle; "'+'>보 류</strong></td>'
            	 }	            	 
		            	values  +='<td  style="vertical-align: middle;">' + decodeURIComponent(obj[i].btitle).replace(/\+/gi, "  ") + "</td>"
		                 
		                      +'<td style="vertical-align: middle; ">' + decodeURIComponent(obj[i].bcontent).replace(/\+/gi, "  ") + "</td>"
		                
		                      +'<td style="vertical-align: middle; text-align: center;" >'+decodeURIComponent(obj[i].benrolldate).replace(/\+/gi, "  ")+"</td>"
		                + "</tr>"
		       } //for in
		   		 $('#selectTable').html(values); 
		       
				}
			}, 				
			error: function(request, status, errorData){ //에러는 위에서 복붙
				console.log("error code : " + request.status + "\nMessage : "+ request.responseText + "\nError : " + errorData);
			}		
		});	
	}); 

});//document.ready 끗

	function detailviewload(id){
		var bno = id.replace('trclick', '');
	
		$.ajax({
			url: "detailview.do",
			type: "POST",
			data: {'bno' : bno}, 
			dataType: "Json",
			traditional: true,
			success: function(obj){
			
			var values = '';
			$("#detail-table").empty();
			
			values += '<tr><th style="width: 18%; text-align: center; vertical-align:middle;">제목</th><td style="vertical-align:middle;">'+decodeURIComponent(obj.btitle).replace(/\+/gi, "  ")+'</td></tr>';
			
			values += '<tr><th style="width: 15%; text-align: center; vertical-align:middle;">작성자</th><td style="vertical-align:middle;">'+decodeURIComponent(obj.bwriter).replace(/\+/gi, "  ")+'</td></tr>';
			
			 if(decodeURIComponent(obj.bkind).replace(/\+/gi, "  ") =="요청"){
				 values += '<tr><th style="width: 15%; text-align: center; vertical-align:middle;">유형</th><td style="vertical-align:middle;">요청</td></tr>';
           	 }
           	if(decodeURIComponent(obj.bkind).replace(/\+/gi, "  ") =="진행"){
           		values += '<tr><th style="width: 15%; text-align: center; vertical-align:middle;">유형</th><td style="vertical-align:middle;">진행</td></tr>';
           	 }
           	if(decodeURIComponent(obj.bkind).replace(/\+/gi, "  ") == "피드백"){
           		values += '<tr><th style="width: 15%; text-align: center; vertical-align:middle;">유형</th><td style="vertical-align:middle;">피드백</td></tr>';
           	 }
           	if(decodeURIComponent(obj.bkind).replace(/\+/gi, "  ") == "완료"){
           		values += '<tr><th style="width: 15%; text-align: center; vertical-align:middle;">유형</th><td style="vertical-align:middle;">완료</td></tr>';
           	 }
           	if(decodeURIComponent(obj.bkind).replace(/\+/gi, "  ") =="보류"){
           		values += '<tr><th style="width: 15%; text-align: center; vertical-align:middle;">유형</th><td style="vertical-align:middle;">보류</td></tr>';
           	 }	      
           	
           	if(obj.bchargename != null){
           		values += '<tr><th style="width: 15%; text-align: center; vertical-align:middle;">담당자</th><td style="vertical-align:middle;">'+decodeURIComponent(obj.bchargename).replace(/\,/gi, ",  ")+'</td></tr>';
           	 }	  
           	
        	if(obj.bstartday != null){
           		values += '<tr><th style="width: 15%; text-align: center; vertical-align:middle;">날짜</th><td style="vertical-align:middle;">'+decodeURIComponent(obj.bstartday)+'&nbsp;&nbsp;~&nbsp;&nbsp;'+decodeURIComponent(obj.bendday)+'</td></tr>';
           	 }	     
           	
        	if(obj.bcontent != null){
        		values += '<tr><th style="width: 15%; text-align: center; vertical-align:middle;">내용</th><td style="vertical-align:middle;">'+decodeURIComponent(obj.bcontent).replace(/\+/gi, "  ")+'</td></tr>';
        	}
        	
        	if(obj.boriginfile != null){
        		
        		values += '<tr><th style="width: 15%; text-align: center; vertical-align:middle;">파일</th>';
        		values += '<td style="vertical-align:middle;align-items: center;">';
        		values += '<div id="showfile" style=" text-align: center;  overflow: hidden; width: 200px;  height: 150px;"><img style="max-width: 100%; height: auto;" src="resources/bupfile/'+decodeURIComponent(obj.brenamefile).replace(/\+/gi, "  ")+'"></div><br>';
        		values += '<a href="bfdown.do?ofile='+decodeURIComponent(obj.boriginfile).replace(/\+/gi, "  ")+'&rfile='+decodeURIComponent(obj.brenamefile).replace(/\+/gi, "  ")+'">'+decodeURIComponent(obj.boriginfile).replace(/\+/gi, "  ")+'</a></td></tr>';
        	}
			if(obj.bucode == '${ucode}'){
				values += '<tr><td colspan="2" style="vertical-align:middle; text-align: right;"><button id="upbutton'+obj.bno+'" class="btn btn-sm btn-outline-info" onclick="moveUpdate(this.id);">수정</button>&nbsp;&nbsp;&nbsp;&nbsp;<button  id="delbutton'+obj.bno+'"  class="btn btn-sm btn-outline-danger" onclick="deleteBpost(this.id);">삭제</button>&nbsp;</td></tr>';
			}
	   		 $('#detail-table').html(values); 	       
			}, 				
			error: function(request, status, errorData){ //에러는 위에서 복붙
				console.log("error code : " + request.status + "\nMessage : "+ request.responseText + "\nError : " + errorData);
			}		
		});	
		$('#detailModal').show();
	};

	
	function moveUpdate(id){
		$('#detailModal').hide();
		var bno = id.replace('upbutton', '');
		
		$.ajax({
			url: "moveUpdateModal.do",
			type: "POST",
			data: {'bno' : bno, 'pnum': '${sessionScope.pnum}'}, 
			dataType: "Json",
			traditional: true,
			success: function(obj){
			
			var values = '';
			$("#update-content").empty();
			//폼 열고 테이블 열고
			values += '<form action="bpostup.do" method="post" id="bupdate" enctype="multipart/form-data"><table class="table" style="text-align: center; width: 100%;">';
			//히든 값 전달부분
			values += '<input type ="hidden" name="bno" value="'+obj.bno+'"><input type="hidden" name="bucode" value="${sessionScope.ucode }"><input type="hidden" name="bpnum" value="${sessionScope.pnum }"><input type="hidden" id="bform" name="bcharge">';
			values += '<input type="hidden" name="boriginfile" value="'+decodeURIComponent(obj.boriginfile).replace(/\+/gi, "  ")+'"><input type="hidden" name="brenamefile" value="'+decodeURIComponent(obj.brenamefile).replace(/\+/gi, "  ")+'">';
			//제목
			values += '<tr><th style="width: 18%;vertical-align:middle; text-align: center;">제목</th><td><input type="text" name="btitle" class="form-control" placeholder="일정 제목을 입력하세요" required="required" value="'+decodeURIComponent(obj.btitle).replace(/\+/gi, "  ")+'"></td></tr>';
			//유형
			values += '<tr><th style="width: 18%;vertical-align:middle;  text-align: center;">유형</th><td>';
			
			if(decodeURIComponent(obj.bkind)=="요청"){
				 values += '<div class="btn-group btn-group-toggle" data-toggle="buttons"><label class="btn btn-secondary active"><input type="radio" name="bkind" id="option1" value="요청" checked="checked">요청</label>';
				 values += '<label class="btn btn-secondary"><input type="radio" name="bkind" id="option2" value="진행">진행</label><label class="btn btn-secondary"><input type="radio" name="bkind" id="option3" value="피드백">피드백</label>';
				 values += '<label class="btn btn-secondary"><input type="radio" name="bkind" id="option3" value="완료">완료</label><label class="btn btn-secondary"><input type="radio" name="bkind" id="option3" value="보류">보류</label></div>';
          	 }
          	if(decodeURIComponent(obj.bkind) =="진행"){
          		values += '<div class="btn-group btn-group-toggle" data-toggle="buttons"><label class="btn btn-secondary"><input type="radio" name="bkind" id="option1" value="요청" >요청</label>';
				 values += '<label class="btn btn-secondary active"><input type="radio" name="bkind" id="option2" value="진행" checked="checked" >진행</label><label class="btn btn-secondary"><input type="radio" name="bkind" id="option3" value="피드백">피드백</label>';
				 values += '<label class="btn btn-secondary"><input type="radio" name="bkind" id="option3" value="완료">완료</label><label class="btn btn-secondary"><input type="radio" name="bkind" id="option3" value="보류">보류</label></div>';
          	 }
          	if(decodeURIComponent(obj.bkind) == "피드백"){
          		values += '<div class="btn-group btn-group-toggle" data-toggle="buttons"><label class="btn btn-secondary"><input type="radio" name="bkind" id="option1" value="요청">요청</label>';
				 values += '<label class="btn btn-secondary"><input type="radio" name="bkind" id="option2" value="진행">진행</label><label class="btn btn-secondary active"><input type="radio" name="bkind" id="option3" value="피드백" checked="checked">피드백</label>';
				 values += '<label class="btn btn-secondary"><input type="radio" name="bkind" id="option3" value="완료" >완료</label><label class="btn btn-secondary"><input type="radio" name="bkind" id="option3" value="보류">보류</label></div>';
          	 }
          	if(decodeURIComponent(obj.bkind) == "완료"){
          		values += '<div class="btn-group btn-group-toggle" data-toggle="buttons"><label class="btn btn-secondary"><input type="radio" name="bkind" id="option1" value="요청">요청</label>';
				 values += '<label class="btn btn-secondary"><input type="radio" name="bkind" id="option2" value="진행">진행</label><label class="btn btn-secondary"><input type="radio" name="bkind" id="option3" value="피드백">피드백</label>';
				 values += '<label class="btn btn-secondary active"><input type="radio" name="bkind" id="option3" value="완료" checked="checked">완료</label><label class="btn btn-secondary"><input type="radio" name="bkind" id="option3" value="보류">보류</label></div>';
          	 }
          	if(decodeURIComponent(obj.bkind) =="보류"){
          		values += '<div class="btn-group btn-group-toggle" data-toggle="buttons"><label class="btn btn-secondary"><input type="radio" name="bkind" id="option1" value="요청">요청</label>';
				 values += '<label class="btn btn-secondary"><input type="radio" name="bkind" id="option2" value="진행">진행</label><label class="btn btn-secondary"><input type="radio" name="bkind" id="option3" value="피드백">피드백</label>';
				 values += '<label class="btn btn-secondary"><input type="radio" name="bkind" id="option3" value="완료">완료</label><label class="btn btn-secondary active"><input type="radio" name="bkind" id="option3" value="보류" checked="checked">보류</label></div>';
          	 }	
            values += '</td></tr>';
 
            //담당자
            values += '<tr><th style="width: 18%;vertical-align:middle; text-align: center;" >담당자</th><td style="vertical-align:middle; text-align: left;">기존 담당자  : &nbsp; '+decodeURIComponent(obj.bchargename).replace(/\,/gi, ",  ")+'<br>';
            values += '<div style="padding-top: 10px; padding-bottom: 0px; margin-bottom: 0px;"><nav class="navbar navbar-expand navbar-light bg-light mb-4">';
            values += '<div class="dropdown"><button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">담당자 수정</button><div id="selected"></div><div class="dropdown-menu" aria-labelledby="dropdownMenu2">';

            <c:forEach var="i" items="${pmlist}" varStatus="status">
				values += '<button class="dropdown-item" type="button" onclick="addbcharge${status.index}();" value="${i.ucode}">${i.uname}</button>';
				values += '<input type="checkbox" id="user${status.index}" name="bcharge" style="display: none">';
				values += '<input type="checkbox" id="name${status.index}" name="bchargename" style="display: none">';
			</c:forEach>
			values += '</div></div></nav></div></td></tr>';
            					
            //시작날짜 & 끝날짜
			if(obj.bstartday != null){
           		values += '<tr><th style="width: 18%;vertical-align:middle; text-align: center;" >시작날짜</th><td><input type="date" class="form-control" name="bstartday" value="'+obj.bstartday+'"></td></tr>';
           		values += '<tr><th style="width: 18%;vertical-align:middle; text-align: center;" >끝날짜</th><td><input type="date" class="form-control" name="bendday" value="'+obj.bendday+'"></td></tr>';
			}
			
			//내용
			if(obj.bcontent != null){
        		values += '<tr><th style="width: 18%;vertical-align:middle; text-align: center;" >내용</th><td><textarea cols="50" rows="6" class="w-100 form-control" name="bcontent">'+decodeURIComponent(obj.bcontent).replace(/\+/gi, "  ")+'</textarea></td></tr>';
        	}
			
			//파일 있을 때
		   if(obj.boriginfile != null){
			   values += '<tr><th style="width: 18%;vertical-align:middle; text-align: center;" >파일</th><td style="vertical-align:middle; text-align: left;">'+decodeURIComponent(obj.boriginfile).replace(/\+/gi, "  ");
			   values += '${post.boriginfile }&nbsp;&nbsp;&nbsp;<input type="checkbox" name="deleteFlag" value="yes">삭제<br><br><input type="file" name="upfile">';
			   values += '</td></tr>';
        	}
			// 파일 없을 때
		   if(obj.boriginfile == null){
			   values += '<tr><th style="width: 18%;vertical-align:middle; text-align: center;" >파일</th><td style="vertical-align:middle; text-align: left;">';
			   values += '<input class="form-control" type="file" name="upfile">';
			   values += '</td></tr>';
       		}
			
			//서브밋 버튼 
			
			values += '<tr><td colspan="2"><button type="submit" class="btn btn-sm btn-info" value="수정완료 ">수정완료</button>&nbsp;&nbsp;<button type="reset" class="btn btn-sm btn-danger" value="">원래대로</button></td></tr>';
			
			//테이블 닫고 폼 닫고
			values += '</table></form>';
			
	   		 $('#update-content').html(values); 	       
			
			
			},
			error: function(request, status, errorData){ 
				console.log("error code : " + request.status + "\nMessage : "+ request.responseText + "\nError : " + errorData);
			}		
		});	

		$('#updateModal').show();

	};
	
	
	

	//팝업 Close 기능
	function close_pop(flag) {
	     $('.modalD').hide();
	};

	
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

	   }
	function unSelected(){
	   
	   $(event.target).parent().remove();
	   
	 
	}

	function upcharge(){
		var result = "y";
		$('#upc').var(result);
	}
	
</script>

</head>

<body id="page-top">
<!-- 1.탑바 임포트 -->
	<c:import url="/WEB-INF/views/abc/topbar.jsp"></c:import>
	
<!-- 2.바로아래div추가 및 임포트 추가  -->
	<div style="width:100%;display:flex;justify-content:center;align-item:center;">
<!-- Sidebar2right -->
     <c:import url="/WEB-INF/views/abc/entersideFixed.jsp"></c:import>
<!-- End of Sidebar2right -->

	
	<div id="wrapper"  style="width:1300px;">

		<!-- Sidebar -->
<div style="width:17%"></div>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column bg-white"  style="width:62%;">

			<!-- Main Content -->
			<div id="content" style="width:100%;">

				<!-- Topbar -->
<br><br><br><br>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">


						<!-- 업무 모아보기 시작 -->
						 
							<div id="tableview" class="card mb-4 py-3 ">
								<div style="font-size:15pt; margin-top: 10px; margin-left: 15px;margin-bottom: 0px;">
									<strong>&nbsp;&nbsp;${sessionScope.uname } </strong>님의 업무 모아보기								
								</div>
								<!-- 게시글안쪽 -->

								<div class="card-body" style="overflow: auto;">
								<div class="checks" align="right" style="margin-left: 1%; font-size: 17px; font-weight: bold; " >
						<form action="#">
							<span style="color: #42BBBA;"><label class="checkbox-inline"><input id="inlineCheckbox1" class="type" name="type" type="checkbox"  value="요청" checked="checked">&nbsp;요 청&nbsp;&nbsp;&nbsp;&nbsp; </label></span>
							<span style="color: #42BBBA;"><label class="checkbox-inline"><input id="inlineCheckbox2" class="type" name="type" type="checkbox"  value="진행" checked="checked">&nbsp;진 행&nbsp;&nbsp;&nbsp;&nbsp; </label></span>
							<span style="color: #42BBBA;"><label class="checkbox-inline"><input id="inlineCheckbox3" class="type" name="type" type="checkbox"  value="피드백" checked="checked">&nbsp;피드백&nbsp;&nbsp;&nbsp;&nbsp; </label></span>
							<span style="color: #42BBBA;"><label class="checkbox-inline"><input id="inlineCheckbox4" class="type" name="type" type="checkbox"  value="완료" checked="checked">&nbsp;완 료&nbsp;&nbsp;&nbsp;&nbsp; </label></span>
							<span style="color: #42BBBA;"><label class="checkbox-inline"><input id="inlineCheckbox5" class="type" name="type" type="checkbox" value="보류" checked="checked">&nbsp;보 류&nbsp;&nbsp;&nbsp;&nbsp; </label></span>
						</form>
					</div>
									<div id ="bpost_table"  class="table-responsive">
									
									
										<table class="table table-hover" id="selectTable"
											style="width: 100%; cellspacing: 0;">
											<colgroup>
											    <col style="width:15%" >
											    <col style="width:25%">
											    <col style="width:40%">
											    <col style="width:20%">
											  </colgroup> 
											<thead>
												<tr>
													<th>유형</th>
													<th>제목</th>
													<th>내용</th>													
													<th>등록일</th>
												</tr>
											</thead>
											
											<tbody id = "bpost_tbody">
											
											</tbody>
											
										</table>
							
									</div>
								</div>
							</div>
				
				
				
						
<!-- 상세보기 페이지 -->

    <!-- The Modal -->
    <div id="detailModal" class="modalD"  >
 
      <!-- Modal content -->
      <div class="modalD-content" style="width: 40%; max-height: 90%; overflow: auto;">
      		<div id="detail-content" >
      		 	<table id="detail-table" class="table">
      		 	
      		 	</table>
                
      		</div>
               
            <div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px;" onClick="close_pop();">
                <span class="pop_bt" style="font-size: 13pt;" >
                     목록으로
                </span>
            </div>
      </div>
 
    </div>
        <!--End Modal-->
        
        
<!-- 수정 페이지 -->

    <!-- The Modal -->
    <div id="updateModal" class="modalD"  >
 
      <!-- Modal content -->
      <div class="modalD-content" style="width: 40%; max-height: 90%; overflow: auto;">
      		<div id="update-content" >
      		 	<table id="update-table" class="table">
      		 	
      		 	</table>
                
      		</div>
               
            <div style="cursor:pointer;background-color:#DDDDDD;text-align: center;padding-bottom: 10px;padding-top: 10px;" onClick="close_pop();">
                <span class="pop_bt" style="font-size: 13pt;" >
                     목록으로
                </span>
            </div>
      </div>
 
    </div>
        <!--End Modal-->









					

		<br>

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