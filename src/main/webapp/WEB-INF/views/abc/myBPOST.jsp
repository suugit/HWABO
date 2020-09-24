






<!DOCTYPE html>
<html lang="kr">

<head>
<link rel="icon" type="image/x-icon"
	href="/hwabo/resources/assets/img/favicon.png" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

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
    margin: 7% auto; /* 15% from the top and centered */
    padding: 20px;
    border: 1px solid #888;
    width: 30%; /* Could be more or less, depending on screen size */                          
}

.modal-backdrop {
	z-index: -1;
}

.modal {
	z-index: 1050;
}

#selected span {
	background-color: rgba(66, 182, 187, 0.5);
	padding: 0px 5px;
	margin: 0px 3px;
}
</style>


<title>HWABO</title>

<!-- Custom fonts for this template -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/css/bootstrap-select.min.css">
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
<link href="/hwabo/resources/maincss/css/github-markdown.css"
	rel="stylesheet">
</head>
<script src="resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	
	$.ajax({
		url: "bpostload.do",
		type: "POST",
		data: { 'ucode':'h123', 'pnum': '1'  },
		dataType: "Json",
		traditional: true,
		success: function(obj){
			
			var values = '<thead><tr style="vertical-align: middle; text-align: center;"><th>유형</th><th>제목</th>	<th>내용</th><th>등록일</th></tr></thead>';
			
			
//1. 사용자와 관련된 전체 업무 테이블에 뿌리기		
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
	            	 
	            	values  +='<td  style="vertical-align: middle;">' + decodeURIComponent(obj[i].btitle).replace(/\+/gi, "  ") + "</td>";
	        if(decodeURIComponent(obj[i].bcontent).replace(/\+/gi, "  ") != null){
	        	values +=  '<td style="vertical-align: middle; ">' + decodeURIComponent(obj[i].bcontent).replace(/\+/gi, "  ") + "</td>";
	        }else{
	        	values +=  '<td style="vertical-align: middle; ">&nbsp;</td>';
	        }
	           
	                values  +='<td style="vertical-align: middle; text-align: center;" >'+decodeURIComponent(obj[i].benrolldate).replace(/\+/gi, "  ")+"</td>"
	                + "</tr>" ;
	       } //for in문1 끗
	   		 $('#selectTable').html(values); 
	       
	       
//2. 요청한 업무 테이블에 뿌리기 (작성자는 로그인한 사용자)
			values2 =  '<thead><tr style="vertical-align: middle; text-align: center;"><th>유형</th><th>제목</th>	<th>내용</th><th>등록일</th></tr></thead>';
			
	   		for(var i in obj){
	   		 if(( obj.bucode == 'h123' ) && ( decodeURIComponent(obj[i].bkind) == '요청'  ) ){
		    	   values2 += '<tr id="trclick'+obj[i].bno+'" onclick="detailviewload(this.id);" style="cursor:hand;">';
	       		   
					 if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") =="요청"){
		           		 values2 +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #047AAC; margin-top:30px; vertical-align: middle; "'+'>요 청</strong></td>'
		           	 }
		           	if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") =="진행"){
		           		values2 +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #173192; margin-top:30px; vertical-align: middle; "'+'>진 행</strong></td>'
		           	 }
		           	if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") == "피드백"){
		           		values2 +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #f4b30d; margin-top:30px; vertical-align: middle; "'+'>피드백</strong></td>'
		           	 }
		           	if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") == "완료"){
		           		values2 +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #0C860F; margin-top:30px; vertical-align: middle; "'+'>완 료</strong></td>'
		           	 }
		           	if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") =="보류"){
		           		values2 +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #6b6d7d; margin-top:30px; vertical-align: middle; "'+'>보 류</strong></td>'
		           	 }
			            	 
			            	values2  +='<td  style="vertical-align: middle;">' + decodeURIComponent(obj[i].btitle).replace(/\+/gi, "  ") + "</td>"
			                 
			                      +'<td style="vertical-align: middle; ">' + decodeURIComponent(obj[i].bcontent).replace(/\+/gi, "  ") + "</td>"
			                
			                      +'<td style="vertical-align: middle; text-align: center;" >'+decodeURIComponent(obj[i].benrolldate).replace(/\+/gi, "  ")+"</td>"
			                + "</tr>"
			      $('#selectTable2').html(values2); 
		       }// for in문2 끗 		
	   		}
	   		
	   	 
	   		
	   		
	   		
//3. 요청받은 업무 테이블에 뿌리기 (작성자는 로그인한 사용자가 아니고 담당자는 사용자일때)
		values3 =  '<thead><tr style="vertical-align: middle; text-align: center;"><th>유형</th><th>제목</th>	<th>내용</th><th>등록일</th></tr></thead>';
		
		for(var i in obj){
			if(( obj.bucode != 'h123' ) && ( decodeURIComponent(obj[i].bkind) == '요청' ) && ( '{fn: contains('+decodeURIComponent(obj[i].bcharge)+', h123 }') ) {	    	
		    	   values3 += '<tr id="trclick'+obj[i].bno+'" onclick="detailviewload(this.id);" style="cursor:hand;">';
	       		   
					 if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") =="요청"){
		           		 values3 +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #047AAC; margin-top:30px; vertical-align: middle; "'+'>요 청</strong></td>'
		           	 }
		           	if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") =="진행"){
		           		values3 +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #173192; margin-top:30px; vertical-align: middle; "'+'>진 행</strong></td>'
		           	 }
		           	if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") == "피드백"){
		           		values3 +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #f4b30d; margin-top:30px; vertical-align: middle; "'+'>피드백</strong></td>'
		           	 }
		           	if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") == "완료"){
		           		values3 +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #0C860F; margin-top:30px; vertical-align: middle; "'+'>완 료</strong></td>'
		           	 }
		           	if(decodeURIComponent(obj[i].bkind).replace(/\+/gi, "  ") =="보류"){
		           		values3 +=   '<td  style="vertical-align: middle; text-align: center;"><strong style='+'"font-size:12pt; color: #6b6d7d; margin-top:30px; vertical-align: middle; "'+'>보 류</strong></td>'
		           	 }
			            	 
			            	values3  +='<td  style="vertical-align: middle;">' + decodeURIComponent(obj[i].btitle).replace(/\+/gi, "  ") + "</td>"
			                 
			                      +'<td style="vertical-align: middle; ">' + decodeURIComponent(obj[i].bcontent).replace(/\+/gi, "  ") + "</td>"
			                
			                      +'<td style="vertical-align: middle; text-align: center;" >'+decodeURIComponent(obj[i].benrolldate).replace(/\+/gi, "  ")+"</td>"
			                + "</tr>"
			        $('#selectTable3').html(values3);
		       }// for in문3 끗 
	   		}
	   		
	       
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
		
		var ucodeval = "h123";
		var pnumval = "1";

		var allData ={"ucode" : ucodeval , "pnum": pnumval, "types": types};

		$.ajax({
			url: "chooseBpost.do",
			type: "POST",
			data: allData, 
			dataType: "Json",
			traditional: true,
			success: function(obj){
				if(obj[0].bno != null){
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
			$("#detail-content").empty();
			//폼열고 테이블 열고
			values += '<table class="table"  width: 100%;">';
			values += '<tr><th style="width: 18%; text-align: center; vertical-align:middle;">제목</th><td style="vertical-align:middle;">'+decodeURIComponent(obj.btitle).replace(/\+/gi, "  ")+'</td></tr>';
			
			values += '<tr><th style="width: 15%; text-align: center; vertical-align:middle;">작성자</th><td style="vertical-align:middle;">'+decodeURIComponent(obj.bwriter).replace(/\+/gi, "  ")+'</td></tr>';
			
			
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
			if(obj.bucode == 'h123'){
				values += '<tr><td colspan="2" style="vertical-align:middle; text-align: right;"><button id="upbutton'+obj.bno+'" class="btn btn-sm btn-outline-info" onclick="moveUpdate(this.id); return false;">수정</button>&nbsp;&nbsp;&nbsp;&nbsp;<button  id="delbutton'+obj.bno+'"  class="btn btn-sm btn-outline-danger" onclick="deleteBpost(this.id); return false;">삭제</button>&nbsp;</td></tr>';
			}
			values += '</table>';
	   		 $('#detail-content').html(values); 	       
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
			data: {'bno' : bno, 'pnum': '1'}, 
			dataType: "Json",
			traditional: true,
			success: function(obj){
			
			var values = '';
			$("#update-content").empty();
			//폼 열고 테이블 열고
			values += '<form action="bpostup.do" method="post" id="bupdate" enctype="multipart/form-data"><table class="table" style="text-align: center; width: 100%;">';
			//히든 값 전달부분
			values += '<input type ="hidden" name="bno" value="'+obj.bno+'"><input type="hidden" name="bucode" value="h123"><input type="hidden" name="bpnum" value="1"><input type="hidden" id="bform" name="bcharge">';
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
            values += '<div class="dropdown"><button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">담당자 수정</button><div id="selectedcc"></div><div class="dropdown-menu" aria-labelledby="dropdownMenu2">';

            
				values += '<button class="dropdown-item" type="button" onclick="addbcharge0();" value="h22">정회원</button>';
				values += '<input type="checkbox" id="user0" name="bcharge" style="display: none">';
				values += '<input type="checkbox" id="name0" name="bchargename" style="display: none">';
			
				values += '<button class="dropdown-item" type="button" onclick="addbcharge1();" value="h124">한여진</button>';
				values += '<input type="checkbox" id="user1" name="bcharge" style="display: none">';
				values += '<input type="checkbox" id="name1" name="bchargename" style="display: none">';
			
				values += '<button class="dropdown-item" type="button" onclick="addbcharge2();" value="h125">서동재</button>';
				values += '<input type="checkbox" id="user2" name="bcharge" style="display: none">';
				values += '<input type="checkbox" id="name2" name="bchargename" style="display: none">';
			
				values += '<button class="dropdown-item" type="button" onclick="addbcharge3();" value="h126">영은수</button>';
				values += '<input type="checkbox" id="user3" name="bcharge" style="display: none">';
				values += '<input type="checkbox" id="name3" name="bchargename" style="display: none">';
			
				values += '<button class="dropdown-item" type="button" onclick="addbcharge4();" value="h130">정재구</button>';
				values += '<input type="checkbox" id="user4" name="bcharge" style="display: none">';
				values += '<input type="checkbox" id="name4" name="bchargename" style="display: none">';
			
				values += '<button class="dropdown-item" type="button" onclick="addbcharge5();" value="h102">백규림</button>';
				values += '<input type="checkbox" id="user5" name="bcharge" style="display: none">';
				values += '<input type="checkbox" id="name5" name="bchargename" style="display: none">';
			
				values += '<button class="dropdown-item" type="button" onclick="addbcharge6();" value="h123">김회원</button>';
				values += '<input type="checkbox" id="user6" name="bcharge" style="display: none">';
				values += '<input type="checkbox" id="name6" name="bchargename" style="display: none">';
			
				values += '<button class="dropdown-item" type="button" onclick="addbcharge7();" value="h129">윤세아</button>';
				values += '<input type="checkbox" id="user7" name="bcharge" style="display: none">';
				values += '<input type="checkbox" id="name7" name="bchargename" style="display: none">';
			
				values += '<button class="dropdown-item" type="button" onclick="addbcharge8();" value="h127">이창준</button>';
				values += '<input type="checkbox" id="user8" name="bcharge" style="display: none">';
				values += '<input type="checkbox" id="name8" name="bchargename" style="display: none">';
			
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
			   values += '<input type="hidden" name="boriginfile" value="'+decodeURIComponent(obj.boriginfile).replace(/\+/gi, "  ")+'"><input type="hidden" name="brenamefile" value="'+decodeURIComponent(obj.brenamefile).replace(/\+/gi, "  ")+'">';
				
			   values += '<tr><th style="width: 18%;vertical-align:middle; text-align: center;" >파일</th><td style="vertical-align:middle; text-align: left;">'+decodeURIComponent(obj.boriginfile).replace(/\+/gi, "  ");
			   values += '&nbsp;&nbsp;&nbsp;<input type="checkbox" name="deleteFlag" value="yes">삭제<br><br><input type="file" name="upfile">';
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
		$("#''").button('toggle')

	}

	function addbcharge0(){
	     var name = $(event.target).text();
	     var code = $(event.target).val();
	      
	       $('#selectedcc').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
	       //$('#bform').val(name); 
	       
	       $('#name0').val(name);
	       $('#user0').val(code);
	       $("input:checkbox[id='user0']").prop("checked", true);
	       $("input:checkbox[id='name0']").prop("checked", true);  
	   }

	function addbcharge1(){
	   var name = $(event.target).text();
	   var code = $(event.target).val();
	   
	    $('#selectedcc').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
	    //$('#bform').val(name); 
	    
	    $('#name1').val(name);
	    $('#user1').val(code);
	    $("input:checkbox[id='user1']").prop("checked", true);
	    $("input:checkbox[id='name1']").prop("checked", true);
	    

	    
	}
	function addbcharge2(){
	      var name = $(event.target).text();
	      var code = $(event.target).val();
	       $('#selectedcc').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
	       //$('#bform').val(name); 
	       
	      $('#name2').val(name);
	       $('#user2').val(code);
	       $("input:checkbox[id='user2']").prop("checked", true);
	       $("input:checkbox[id='name2']").prop("checked", true);
	       
	       
	   }
	function addbcharge3(){
	      var name = $(event.target).text();
	      var code = $(event.target).val();
	       $('#selectedcc').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
	       //$('#bform').val(name); 
	       
	      $('#name3').val(name);
	       $('#user3').val(code);
	       $("input:checkbox[id='user3']").prop("checked", true);
	       $("input:checkbox[id='name3']").prop("checked", true);

	       
	   }
	function addbcharge4(){
	      var name = $(event.target).text();
	      var code = $(event.target).val();
	       $('#selectedcc').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
	       //$('#bform').val(name); 
	       
	      $('#name4').val(name);
	       $('#user4').val(code);
	       $("input:checkbox[id='user4']").prop("checked", true);
	       $("input:checkbox[id='name4']").prop("checked", true);
	       
	   }
	function addbcharge5(){
	      var name = $(event.target).text();
	      var code = $(event.target).val();
	     
	       $('#selectedcc').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
	       //$('#bform').val(name); 
	       
	      $('#name5').val(name);
	       $('#user5').val(code);
	       $("input:checkbox[id='user5']").prop("checked", true);
	       $("input:checkbox[id='name5']").prop("checked", true);

	   }
	function addbcharge6(){
	      var name = $(event.target).text();
	      var code = $(event.target).val();
	       $('#selectedcc').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
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

<body id="page-top">

	<!-- 11111111111111111 -->
	

<!DOCTYPE html>
<html lang="kr">



<body id="page-top">

   <!-- Topbar -->
<nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow" style="position:fixed;width:100%;z-index:99;width:100%;display:flex;justify-content:center;align-item:center;">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

<!--  -->
<table style="width:1300px"><tr><td></td><td>
<!--  -->

          <!-- Topbar Search -->
          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>
          </form>

<!--  -->
</td><td style="width:43%;"></td><td>
<!--  -->

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in " aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..sds." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>

            <!-- Nav Item - Alerts -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-bell fa-fw"></i>
                <!-- Counter - Alerts -->
                <span class="badge badge-danger badge-counter">3+</span>
              </a>
              <!-- Dropdown - Alerts -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="alertsDropdown">
                <h6 class="dropdown-header">
                  Alerts Center
                </h6>
	             <a class="dropdown-item d-flex align-items-center" href="#">    
 				



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
<link href="/hwabo/resources/maincss/css/sb-admin-2.css"
	rel="stylesheet">
<style>
.modal-backdrop {
	z-index: -1;
}

.thumbnail {
	background-color: gray;
	margin: 10px;
	width: 50px;
	height: 50px;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center center;
}

.thumbnail.round {
	border-radius: 10%;
}

.thumbnail.circle {
	border-radius: 100%;
}

#selected span {
	background-color: rgba(66, 182, 187, 0.5);
	padding: 0px 5px;
	margin: 0px 3px;
}
</style>
</head>

<body>
                  <div class="mr-3">
                  
                    <div class="icon-circle bg-primary">
                      <i class="fas fa-paper-plane text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 7, 2019</div>
                   	[프로젝트]초대장이 도착했습니다! 
                   	<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalPush">Launch modal</button>
                  </div>
        
		<div class="row justify-content-center">
			<!-- 버튼 -->
		
		</div>

	<!-- --------------------------------------------------------------------------- -->


	<!-- --------------------------------------------------------------------------- -->

	<!--Modal 초대폼-->

<!--Modal: modalPush-->
<div class="modal fade" id="modalPush" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
  aria-hidden="true">
  <div class="modal-dialog modal-notify modal-info" role="document">
    <!--Content-->
    <div class="modal-content text-center">
      <!--Header-->
      <div class="modal-header d-flex justify-content-center">
        <p class="heading">Be always up to date</p>
      </div>

      <!--Body-->
      <div class="modal-body">

        <i class="fas fa-bell fa-4x animated rotateIn mb-4"></i>

        <p>Do you want to receive the push notification about the newest posts?</p>

      </div>

      <!--Footer-->
      <div class="modal-footer flex-center">
        <a href="https://mdbootstrap.com/pricing/jquery/pro/" class="btn btn-info">Yes</a>
        <a type="button" class="btn btn-outline-info waves-effect" data-dismiss="modal">No</a>
      </div>
    </div>
    <!--/.Content-->
  </div>
</div>
<!--Modal: modalPush-->


		<!-- Bootstrap core JavaScript-->
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

		<!-- Core plugin JavaScript-->
		<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

		<!-- Custom scripts for all pages-->
		<script src="js/sb-admin-2.min.js"></script>

		<script>
	function callFunction() {
			$('.new_tr').first().clone().appendTo('#inviteTable');
			$('.newe').last().val('');
			$('#inviteTable').find('td:last').append('<i class="fa fa-times-circle mt-2" onclick="removetr()"></i>');
		}

	function removetr() {
			$(event.target).closest('tr').remove();
			
		
		}
	
	$(document).ready(function(){
		  $('#myInput').on('keyup', function() {
		    var value = $(this).val().toLowerCase();
		    $('#myTable tr').filter(function() {
		      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		    });
		  });
		});
	
	function addInvite(){
		var ele = $(event.target);
		if(ele.val() ==  '초대하기'){
			$(event.target).val("초대완료");
			$(event.target).addClass('disable btn-outline-dark')
			var name = $(event.target).parent().parent().children().eq(1).text();
			$('#selected').append('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i> </span>')
		}
	}
	
	function unSelected(){
		$(event.target).parent().remove();
	}
	
	$('#invtBtn').on('click',function(){
		var n = $('input[name=newinvt]').length;
		var fileData = new Array(n);
		for(var i=0;i<n;i++){
			fileData[i] = $('input[name=newinvt]')[i].value;

		}
		
		$.ajax({
			url:"invtexist.do",
			type:"post",
			data:JSON.stringify(fileData),
			dataType:"json",
			contentType:"application/json; charset=utf-8;",
			success: function(data){
				alert("전송성공!")
				
				
			},
			error: function(request, status, errorData){
				alert('b');
			}
		});
		
	});
	
	$('#invtEBtn').on('click',function(){
		
		 $.ajax({
			url:"invtee.do",
			type:"post",
			contentType:"application/json; charset=utf-8;",
			dataType:"Json",
			success: function(data){
				alert('성공');
				var values = $("#nmlistBox").html();
				
				var values = $("#nmlistBox").html("");
				for(var i in data){
					values += 
					'<tr style="width:80px height: 80px">'
					+ '<td colspan="2" class="thumbnail circle"'
					+ 'style="background-image: url(\'' + data[i].uimg + '\')"></td>'
					+ '<td class="my-6">' + data[i].uname + '</td>'
					+ '<td>' + data[i].ugroup + '</td>'
					+ '<td>' + data[i].urole + '</td>'
					+ '<td><input type="button"'
					+ 'class="btn btn-sm btn-outline-primary" value="초대하기"'
					+ 'onclick="addInvite()"></td></tr>'
			
				}
				
				$('#nmlistBox').html(values);
			},
			error: function(request, status, errorData){
				alert('h');
			}
		}); 
	});
	
	
	
	</script>
</body>

</html>


 				</a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                	
                  <div class="mr-3">
                    <div class="icon-circle bg-primary">
                      <i class="fas fa-file-alt text-white"></i>
                    </div>
                  </div>
	                  
                  
                  <div>
                    <div class="small text-gray-500">December 12, 2019</div>
                    <span class="font-weight-bold">A new monthly report is ready to download!</span>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-success">
                      <i class="fas fa-donate text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 7, 2019</div>
                    $290.29 has been deposited into your account!
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="mr-3">
                    <div class="icon-circle bg-warning">
                      <i class="fas fa-exclamation-triangle text-white"></i>
                    </div>
                  </div>
                  <div>
                    <div class="small text-gray-500">December 2, 2019</div>
                    Spending Alert: We've noticed unusually high spending for your account.
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
              </div>
            </li>

            <!-- Nav Item - Messages -->
            <li class="nav-item dropdown no-arrow mx-1">
              <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-envelope fa-fw"></i>
                <!-- Counter - Messages -->
                <span class="badge badge-danger badge-counter">7</span>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
                <h6 class="dropdown-header">
                  Message Center
                </h6>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div class="font-weight-bold">
                    <div class="text-truncate">Hi there! I am wondering if you can help me with a problem I've been having.</div>
                    <div class="small text-gray-500">Emily Fowler Â· 58m</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">
                    <div class="status-indicator"></div>
                  </div>
                  <div>
                    <div class="text-truncate">I have the photos that you ordered last month, how would you like them sent to you?</div>
                    <div class="small text-gray-500">Jae Chun Â· 1d</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">
                    <div class="status-indicator bg-warning"></div>
                  </div>
                  <div>
                    <div class="text-truncate">Last month's report looks great, I am very happy with the progress so far, keep up the good work!</div>
                    <div class="small text-gray-500">Morgan Alvarez Â· 2d</div>
                  </div>
                </a>
                <a class="dropdown-item d-flex align-items-center" href="#">
                  <div class="dropdown-list-image mr-3">
                    <img class="rounded-circle" src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">
                    <div class="status-indicator bg-success"></div>
                  </div>
                  <div>
                    <div class="text-truncate">Am I a good boy? The reason I ask is because someone told me that people say this to all dogs, even if they aren't good...</div>
                    <div class="small text-gray-500">Chicken the Dog Â· 2w</div>
                  </div>
                </a>
                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
              </div>
            </li>

            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-capitalize font-weight-bold text-primary mr-1">김회원</span>
                <img class="img-profile rounded-circle border border-primary" src="resources/profileImg/h123수정됨_1.png" style="max-width:80px;max-height:80px">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
              	
                <a class="dropdown-item" href="myinfo.do?ucode=h123"><i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>내 정보</a>
                <a class="dropdown-item" href="#"><i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i> 환경설정 </a>
                <a class="dropdown-item" href="/hwabo/mvlogin.do"><i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>로그인(임시) </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="/hwabo/logout.do" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

<!--  -->
</td>
</tr>
</table>
<!--  -->

        </nav>
        <!-- End of Topbar -->
        
	 <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">로그아웃 하시겠습니까?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true"><i class="fa fa-times-circle"></i></span>
          </button>
        </div>
        <div class="modal-body">~로그아웃~ </div>
        <div class="modal-footer d-flex justify-content-center ">
          <button class="btn btn-secondary w-25" type="button" data-dismiss="modal">취소</button>
          <a class="btn btn-primary w-25" href="/hwabo/logout.do">로그아웃</a>
        </div>
      </div>
    </div>
  </div>
	
 	<script type="text/javascript" src="resources/js/jquery-3.5.1.min.js"></script>
</body>

</html>


	<div style="width: 100%; display: flex; justify-content: center; align-item: center;">
		<!-- Sidebar2right -->
		

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="position:fixed;height:100%;">

<table style="width:1300px;height:100%;">
<tr>
<td style="width:17%;">

<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar" style="width:1300px;height:100%;">

<br><br><br><br>
      <!-- Sidebar - Brand -->
      
      
      
      <img src="resources/maincss/img/hwaboLogo.png" style="width: 100%; max-width: 780px; vertical-align: middle" onclick="javascript:location.href='ftables.do?project_num=1'">
      
     
			<li class="nav-item"><a class="nav-link collapsed" href="cards2.do?ucode=h123"
				data-target="#collapsePages" aria-expanded="true"
				aria-controls="collapsePages"><i class="fas fa-list"></i> <span>프로젝트 모아보기</span>
			</a> </li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<li class="nav-item"><a class="nav-link collapsed" href="moveMyBpost.do"
				data-target="#collapsePages" aria-expanded="true"
				aria-controls="collapsePages"> <i class="far fa-list-alt"></i></i> <span>업무 모아보기</span>
			</a> </li>

			<!-- Divider -->
			<hr class="sidebar-divider">


			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="mycabinet.do"
				data-target="#collapsePages" aria-expanded="true"
				aria-controls="collapsePages" ><i class="fas fa-box-open"></i>
					<span>보관함</span></a> 
					
				<a class="nav-link collapsed" href="Fileboxlist.do?pnum=1" data-target="#collapsePages"
				aria-expanded="true" aria-controls="collapsePages" > 
				<i class="far fa-folder-open"></i><span> 파일함</span>
			</a></li>
			
						<!-- Divider -->
			<hr class="sidebar-divider">
			
			<li class="nav-item"><a class="nav-link collapsed" href="myhwabo.do?ucode=h123&pnum=1"
				data-target="#collapsePages" aria-expanded="true"
				aria-controls="collapsePages"> <i class="fas fa-chalkboard"></i>
					<span>나의 화보</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Nav Item - Pages Collapse Menu -->
			<li class="nav-item"><a class="nav-link collapsed" href="#"
				data-toggle="collapse" data-target="#collapseOne"
				aria-expanded="true" aria-controls="collapseOne" onclick="javascript: return false;"> 
				<i class="fas fa-chalkboard-teacher"></i> <span>팀원들의 화보</span>
			</a>
				<div id="collapseOne" class="collapse" aria-labelledby="headingOne"
					data-parent="#accordionSidebar">
					<div class="bg-white py-2 collapse-inner rounded" style="overflow: auto; max-height: 250px;">
						<h6 class="collapse-header">HWABO</h6>
						
							
							
								<a class="collapse-item" href="javascript: location.href='yourhwabo.do?ucode=h22&pnum=1'">
									<span><label>정회원</label></span>
								</a>
							
							
							
								<a class="collapse-item" href="javascript: location.href='yourhwabo.do?ucode=h124&pnum=1'">
									<span><label>한여진</label></span>
								</a>
							
							
							
								<a class="collapse-item" href="javascript: location.href='yourhwabo.do?ucode=h125&pnum=1'">
									<span><label>서동재</label></span>
								</a>
							
							
							
								<a class="collapse-item" href="javascript: location.href='yourhwabo.do?ucode=h126&pnum=1'">
									<span><label>영은수</label></span>
								</a>
							
							
							
								<a class="collapse-item" href="javascript: location.href='yourhwabo.do?ucode=h130&pnum=1'">
									<span><label>정재구</label></span>
								</a>
							
							
							
								<a class="collapse-item" href="javascript: location.href='yourhwabo.do?ucode=h102&pnum=1'">
									<span><label>백규림</label></span>
								</a>
							
							
							
								<a class="collapse-item" href="javascript: location.href='yourhwabo.do?ucode=h123&pnum=1'">
									<span><label>김회원</label></span>
								</a>
							
							
							
								<a class="collapse-item" href="javascript: location.href='yourhwabo.do?ucode=h129&pnum=1'">
									<span><label>윤세아</label></span>
								</a>
							
							
							
								<a class="collapse-item" href="javascript: location.href='yourhwabo.do?ucode=h127&pnum=1'">
									<span><label>이창준</label></span>
								</a>
							
														
					</div>
				</div></li>

</ul>
    
</td>
<td style="width:57%;">

</td>
<td style="width:23.5%;">



<!-- 채팅위치조정테이블하단 시작 -->
<table style="height:100%;width:100%;">
<tr><td style="height:90px;"></td></tr><tr>
<td style="height:30%;">
<!-- 채팅위치조정테이블하단 시작 -->

<!-- 채팅 폼 시작 -->





<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- 채팅 폼 시작 -->

<div class="card shadow mb-4" style="height:100%;max-height:840px">
            <div class="card-header py-3">
            
            	
            
            	
            
            	
            
            	
            
            	
            
            	
            
            	
            <a class="btn btn-primary d-flex justify-content-center" href="javascript:location.href='/hwabo/invtadmin.do'">프로젝트 관리</a>
            	
            
            	
            
            	
            
			</div>
            <div class="card-body">
              <!-- 게시글안쪽 -->
              
<!-- 채팅내용 시작 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 채팅기능 시작 -->

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" type="text/css" rel="stylesheet">

<link href="/hwabo/resources/maincss/css/chatting.css" type="text/css" rel="stylesheet">

<!-- 삭제버튼 css 시작 -->
<style>
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 6px;
  margin: 1px 1px;
  transition-duration: 0.4s;
  cursor: pointer;
}
.button3 {
  background-color: white; 
  color: #f44336; 
  border: 1px solid #f44336;
  border-radius:50%;
}
.button3:hover {
  background-color: #f44336;
  color: white;
}
</style>
<!-- 삭제버튼 css 끝 -->

<script>
var speed = 110000;
$(function(){
	$("#enter_chat").on("click", function(){
		enterChat();
	}); //enter btn click
});
function enterChat(){
		$.ajax({
			url:"sendChat.do",
			data: {
				content : $("#enter_content").val().toString(),
				ucode :	$("#enter_ucode").val().toString(),
				project_num : $("#enter_project_num").val().toString(),
				project_name : $("#enter_project_name").val().toString(),
				uname : $("#enter_uname").val().toString()
			},
			type: "POST",
			success: function(result){
				selectChat();
				$("#enter_content").val("");
				if(result == "ok"){
					console.log("채팅 보내기 성공...");
					
				}else{
					console.log("채팅 전송 실패...");
				}
			},
			error: function(request,status, errorDate){
				console.log("error code : " + requet.status + "\nMessage :" + request.responseText + "\nError :" + errorData);
			}
	 	}); //ajax
		$("#chat").scrollTop($("#chat")[0].scrollHeight);
}
function delChat(target){
		$.ajax({
			url:"delChat.do",
			data: {
				content : target,
				ucode :	$("#enter_ucode").val().toString(),
				project_num : $("#enter_project_num").val().toString()
			},
			type: "POST",
			success: function(result){
				selectChat();
				if(result == "ok"){
					console.log("메시지 삭제성공...");
				}else{
					console.log("메시지 삭제실패...");
				}
			},
			error: function(request,status, errorDate){
				console.log("error code : " + requet.status + "\nMessage :" + request.responseText + "\nError :" + errorData);
			}
	 	}); //ajax
		$("#chat").scrollTop($("#chat")[0].scrollHeight);
}
function selectChat(){
	$.ajax({
		url: "riseChat.do?project_num=1",
		type: "POST",
		dataType: "json", 
		success: function(json){
			var jsonStr = JSON.stringify(json);
			var json = JSON.parse(jsonStr);
			console.log("success : " + jsonStr);
			var values = "";
			//시계 시작 ///////////////////
			const date = new Date();
			var h = date.getHours();
			if(h < 10){
				h = "0" + h; 
			}
			var m = date.getMinutes();
			if(m < 10){
				m = "0" + m; 
			}
			values +=
				"<center><div style=\"width:70%;\"><div style=\"position:fixed;font-size:300%;\"><br>HWABO<br>" +
				h +":"+ m + 
				"</div></div></center>";
			//시계 끝 ////////////////////
			for(var i in json.chatList){
				var chat_ucode = decodeURIComponent(json.chatList[i].ucode).replace(/\+/gi, " ");
				var chat_uname = decodeURIComponent(json.chatList[i].uname).replace(/\+/gi, " ");
				var chat_content = decodeURIComponent(json.chatList[i].content).replace(/\+/gi, " ");
				var chat_pnum = decodeURIComponent(json.chatList[i].pnum).replace(/\+/gi, " ");
				var chat_time = decodeURIComponent(json.chatList[i].time).replace(/\+/gi, " ");
				
				if(chat_ucode == "h123"){
					values += 
					"<div class=\"outgoing_msg\" style=\"position:relative;z-index:2;\"><div class=\"sent_msg\"><p>" +
					chat_content +
		            "</p><span class=\"time_date\">" +
		            chat_time.substring(0, 16) +
		            //삭제버튼 시작
	                "&nbsp;&nbsp;<button class=\"button button3\" " +
					"onclick=\"javascript:delChat(\'"+chat_time+"\')\" >X</button>" +
	                //삭제버튼끝
		            "</span> </div></div>";
				}else{
				values += 
					"<div class=\"incoming_msg\">" +
	              	"<div class=\"incoming_msg_img\"> <img src=\"https://ptetutorials.com/images/user-profile.png\" alt=\"sunil\"></div>" +
	              	"<span style=\"font-size:9pt;\">" +
	              	chat_uname +
	              	"</span><div class=\"received_msg\">" +
	                "<div class=\"received_withd_msg\"><p>" +
	                chat_content +
	                "</p><span class=\"time_date\">" +
	                chat_time.substring(0, 16) +
	                "</span></div></div></div>";
				}
			}
			$("#chat").html(values); 
			$("#chat").scrollTop($("#chat")[0].scrollHeight);
		},
		error: function(jqXHR, textstatus, errorthrown){
			console.log("error : " +jqXHR+", "+textstatus+", "+errorthrown);
		}
	});//ajax
};

selectChat();
setInterval(selectChat,speed);

</script>
<!-- 채팅기능 끝 -->

</head>
<body>

<div class="messaging">
      <div class="inbox_msg">
        <div class="mesgs">
          <div class="msg_history" id="chat">
            
            <!-- <div class="incoming_msg">
              <div class="incoming_msg_img"> <img src="https://ptetutorials.com/images/user-profile.png" alt="sunil"></div>
              <span style="font-size:9pt;">우리 사랑스러운 비뜨</span>
              <div class="received_msg">
                <div class="received_withd_msg">
                  <p>Test which is a new approach to have all
                    solutions</p>
                  <span class="time_date"> 11:01 AM    |    June 9</span></div>
              </div>
            </div>
            
            <div class="outgoing_msg">
              <div class="sent_msg">
                <p>Test which is a new approach to have all
                  solutions</p>
                <span class="time_date"> 11:01 AM    |    June 9</span> </div>
            </div> -->
          
          </div>
          <div class="type_msg">
            <div class="input_msg_write">
<!-- 채팅 입력창 시작 -->
            <input id="enter_ucode" type="hidden" value="h123" />
            <input id="enter_project_num" type="hidden" value="1" />
            <input id="enter_project_name" type="hidden" value="test" />
            <input id="enter_uname" type="hidden" value="김회원" />
            
<input id="enter_content" type="text" class="write_msg" placeholder="Type a message" onKeypress="javascript:if(event.keyCode==13) {enterChat();}"/>
              <button id="enter_chat" class="msg_send_btn" type="button"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
<!-- 채팅 입력창 끝 -->            
            </div>
          </div>
        </div>
      </div>
</div>

</body>
</html>
<!-- 채팅내용 끝 -->

<!-- 접속자 명단시작 -->
<hr>
<div style="font-size:50%;color:pink;" onclick="javascript:console.log('꾸쭈')">MEMBER</div>
<i class="fas fa-circle text-success"></i>
suggit
<hr>
<i class="fas fa-circle text-success"></i>
red
<hr>
<i class="fas fa-circle text-dark"></i>
kyukyu
<hr>
<i class="fas fa-circle text-success"></i>
khc
<hr>
<i class="fas fa-circle text-dark"></i>
daun
<hr>
<!-- 접속자 명단끝 -->
</div>
</div>
<!-- 채팅 폼 끝 -->

</body>
</html>

<!-- 채팅 폼 끝 -->

<!-- 채팅위치조정테이블하단 끝 -->
</td>
</tr>
<tr><td style="height:70%;"></td></tr>
</table>
<!-- 채팅위치조정테이블하단 끝 -->
</td>
</tr>    
</table>
    
    </div>
</body>
</html>
		<!-- End of Sidebar2right -->
		<!-- 111111111111111111 -->


		<!-- Page Wrapper -->
		<div id="wrapper" style="width: 1300px;">

			<!-- Sidebar -->
			<div style="width: 17%"></div>
			<!-- End of Sidebar -->

			<!-- Content Wrapper -->
			<div id="content-wrapper" class="d-flex flex-column bg-white"
				style="width: 62%;">

				<!-- Main Content -->
				<div id="content">

					<!-- Topbar -->
					<br> <br> <br> <br>
					<!-- End of Topbar -->

					<!-- Begin Page Content -->
					<div class="container-fluid col-text-left float-left" style="min-width: fit-content; max-width: 97%;">

					 <div class="card mb-4" style="border-style:none; ">
					     
					        
					           <div class="card-body">
					          <ul class="nav nav-tabs" style="margin-bottom: 0px; width: 100%;" id="myTab" role="tablist">
							<li class="nav-item">
							    <a class="nav-link active" id="allBpost-tab" data-toggle="tab" href="#project" role="tab" aria-controls="profile" aria-selected="true"><strong>전체업무</strong></a>
							  </li>
							  <li class="nav-item">
							    <a class="nav-link " id="request-tab" data-toggle="tab" href="#pmember" role="tab" aria-controls="pmember" aria-selected="false"><strong>요청한 업무</strong></a>
							  </li>
							  <li class="nav-item">
							    <a class="nav-link" id="requested-tab" data-toggle="tab" href="#npmember" role="tab" aria-controls="npmember" aria-selected="false"><strong>요청받은 업무</strong></a>
							  </li>
							  </ul>
					        </div>
					        
					        
		          
 <div class="tab-content mt-3">
 
<!--  업무 전체 모아보기 --> 
 <div class="tab-pane fade show active" id="project" role="tabpanel" aria-labelledby="nav-allBpost-tab">

<div id="tableview" style="border: none;" class="card mb-4 py-3 ">

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
				<tr><td style="text-align: center; vertical-align: middle;" colspan="4">조회하신 유형의 게시글이 없습니다</td></tr>
				</tbody>
				
			</table>

		</div>
	</div>
</div>
</div>
					          
	
	
	
					          
<!-- 요청한 업무 -->
<div class="tab-pane fade " id="pmember" role="tabpanel" aria-labelledby="nav-request-tab">
    
<div id="tableview2" style="border: none;" class="card mb-4 py-3 ">
<div class="card-body" style="overflow: auto;">

				<div id ="bpost_table2"  class="table-responsive">
		
					<table class="table table-hover" id="selectTable2"
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
				
				<tr><td style="text-align: center; vertical-align: middle;" colspan="4">요청하신 업무가 없습니다</td></tr>
				<tbody id = "bpost_tbody2">
				
				</tbody>
				
			</table>

		</div>
	</div>
</div>
</div>
					       
			




<!-- 요청받은 업무 -->		       
<div class="tab-pane fade" id="npmember" role="tabpanel" aria-labelledby="nav-requested-tab">
<div id="tableview3" style="border: none;" class="card mb-4 py-3 ">
<div class="card-body" style="overflow: auto;">

				<div id ="bpost_table3"  class="table-responsive">
		
					<table class="table table-hover" id="selectTable3"
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
				
				<tbody id = "bpost_tbody3">
				<tr><td style="text-align: center; vertical-align: middle;" colspan="4">요청받은 업무가 없습니다</td></tr>
				</tbody>
				
			</table>

		</div>
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

			       
</div><!-- tab-content mt-3 끝 -->
					      

					</div>
					<!-- /.container-fluid -->

				</div>
				<!-- End of Main Content -->

				<!-- Footer -->
				<footer style="align-content: flex-end;" class="sticky-footer bg-white">
					<div class="container my-auto">
						<div class="copyright text-center my-auto">
							<span>Copyright &copy; Your Website 2020</span>
						</div>
					</div>
				</footer>
				<!-- End of Footer -->

			</div>
			<!-- End of Content Wrapper -->
			<div style="width: 25%"></div>
		</div>
		<!-- End of Page Wrapper -->
	</div>
	<!-- div flex -->
	</div>
	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>
	  
	
	<!-- Bootstrap core JavaScript-->
	<script src="/hwabo/resources/maincss/vendor/jquery/jquery.min.js"></script>
	<script src="/hwabo/resources/maincss/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="/hwabo/resources/maincss/vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="/hwabo/resources/maincss/js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script
		src="/hwabo/resources/maincss/vendor/datatables/jquery.dataTables.min.js"></script>
	<script
		src="/hwabo/resources/maincss/vendor/datatables/dataTables.bootstrap4.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap-select@1.13.14/dist/js/bootstrap-select.min.js"></script>
	<!-- Page level custom scripts -->
	<script src="/hwabo/resources/maincss/js/demo/datatables-demo.js"></script>






</body>

</html>
