<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<!-- 재료시작 -->
<style type="text/css">

#counter:focus {outline:none;}
#counter{margin: 0;}

div#showfile imag{
	width : 10%;
	height : 10%;
	}
</style>
<script type="text/javascript"	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">


/* 리스트 들어올 시 보관된 정보 불러오기 */
$(document).ready(function(){
	console.log("cabinet list function get in");
	
	
	$.ajax({
		
		url: "cabinetList.do",
		data: {ucode: "${sessionScope.ucode }", pnum: "${sessionScope.pnum }" },
		type: "post",
		dataType: "json",
		success: function(obj){
			
			var str = JSON.stringify(obj);
			var json = JSON.parse(str);
			console.log("success : " + str);
			
			
			for(var i in json.list){
				console.log(json.list[i].no); 
				
			
			
			for(var a = 0; a <= ${fn:length(requestScope.list)}; a++ ){
				var val = $("#no_"+a).val();
				
				
				
				if(val == json.list[i].no){
					console.log("비교값"+val);
				
					console.log("됨");
					   $(".liketoggle"+a).find("i").toggleClass("fas far");
					   $(".liketoggle"+a).find("span").text(function(i, v) {
					     return v === '보관' ? '보관됨' : '보관'
				   });
					
				}
				
			}
			}
			
			
		},
		error: function(jqXHR, textstatus, errorthrown){
			console.log("error : " +jqXHR+", "+textstatus+", "+errorthrown);
		}
		
		
	});
	

	
});





function sendInsert(index){
	
	
	console.log("sendCabinet : " + index);
	console.log($("#no_"+ index).val());
	
	
	if ($(".liketoggle"+index).find("span").text() == '보관') {
		$.ajax({	      
		      url: "insertcabinet.do",
		      data: {no: $("#no_"+ index).val(), ucode: $("#ucode_" + index).val(), pnum: $("#pnum_" + index).val()},     
		      type: "post",
		      success: function(result){

		         if(result == "ok"){
		           /*  $("#open_"+index).val('n'); */
   					alert("보관 성공");
		            console.log("보관함 보내기 성공 !");
		         }else{
		            alert("값이 보내졌지만 결과는 ok가 아님");
		         }
		      
		      },
		      error: function(request, status, errorData){
		    	 
		            console.log("error code : " + request.status + "\nMessage : "+ request.responseText + "\nError : " + errorData);
		         }
		      
		      }); //에이작스
	      
	}else{  //이미 보관된 게시물이라면 삭제하기
		
		$.ajax({	      
		      url: "deletecabinet.do",
		      data: {no: $("#no_"+ index).val(), ucode: $("#ucode_" + index).val(), pnum: $("#pnum_" + index).val()},     
		      type: "post",
		      success: function(result){
		         if(result == "ok"){
		        	 /*  $("#open_"+index).val('y'); */
		          	alert("보관 취소 성공");
		            console.log("보관함 삭제 성공 !");
		         }else{
		            alert("디비 내부에서 삭제 문제 생김");
		         }
		      
		      },
		      error: function(request, status, errorData){
		    	 
		         console.log("error code : " + request.status + "\nMessage : "+ request.responseText + "\nError : " + errorData);
		         }
		      
		      }); //에이작스

		
			}   
	      
	      $(".liketoggle"+index).find("i").toggleClass("fas far");
		  $(".liketoggle"+index).find("span").text(function(i, v) {
		     return v === '보관' ? '보관됨' : '보관'
		    		 
	 });
}


/* 댓글기능 */

$(document).ready(function(){
	
	replyList();	
});
	
function replyList(){
	
	
	console.log("댓글 리스트 들어옴");
	
	$.ajax({
		
		url:"replyList.do",
		type: "post",
		dataType: "json",
		success: function(obj){
			
			console.log(obj);
			
			var objStr = JSON.stringify(obj);
			var jsonObj = JSON.parse(objStr);
			var output = "";
			
			
		
			
			
			for(var a= 0; a < ${requestScope.list.size()}; a++){ //전체 게시글 리스트
				console.log("1번 포문");
				var re = "";
				
				for(var i  in jsonObj.list){ //전체 댓글 리스트
				
					console.log("2번 포문");
					console.log("jsonObj.list[i].no"+jsonObj.list[i].no);
					console.log("$('#commentList_'+a).val()"+ document.getElementById('commentList_'+a).getAttribute('name'));
				
				if(jsonObj.list[i].no == document.getElementById('commentList_'+a).getAttribute('name')){ //게시글과 댓글의 게시글 번호 비교
					console.log("if 문");
					console.log("${sessionScope.ucode}");
					console.log( jsonObj.list[i].ucode);
					re += '<div class="commentArea" style="font-size:14px; border-bottom:1px solid darkgray; margin-bottom: 10px; margin-top: 14px;">';
	            	re += '<div class="commentInfo'+jsonObj.list[i].replyno+'">'+' 작성자 : '+decodeURIComponent(jsonObj.list[i].uname).replace(/\+/gi, " ");
	            if(jsonObj.list[i].secondenroll == null){
	            	re += '<small>'+ jsonObj.list[i].enrolldate+'</small>';
	           		}else{
	           		re += '<small> 수정일 '+ jsonObj.list[i].secondenroll+'</small>';
	           		}
	            if(jsonObj.list[i].ucode == "${ sessionScope.ucode }"){
	            	re += '<a onclick="commentUpdate('+jsonObj.list[i].replyno+',\''+decodeURIComponent(jsonObj.list[i].content).replace(/\+/gi, " ")+'\');"> 수정 </a>';
		            re += '<a onclick="commentDelete('+jsonObj.list[i].replyno+');"> 삭제 </a>';
	            	
	            	
	            	}
	            	re += '</div><div class="commentContent'+jsonObj.list[i].replyno+'"> <p> 내용 : '+decodeURIComponent(jsonObj.list[i].content).replace(/\+/gi, " ") +'</p>';
	            	re += '</div></div>';
	   
				}
				
			
				$("#commentList_"+a).html(re);
			
				}
		
			}
		
		},
		error: function(request, status, errorData){ 
			console.log("error code : " + request.status + "\nMessage : "+ request.responseText + "\nError : " + errorData);
		}
		
	});

}


function commentUpdate(replyno, content){
    var a ='';
    
    a += '<div class="input-group">';
    a += '<input type="text" class="form-control" name="content_'+replyno+'" value="'+content+'"/>';
    a += '<span class="input-group-btn"><button class="btn btn-default" type="button" onclick="commentUpdateProc('+replyno+');">수정</button> </span>';
    a += '</div>';
    
    $('.commentContent'+replyno).html(a);
    
}
 
//댓글 수정
function commentUpdateProc(replyno){
    var updateContent = $('[name=content_'+replyno+']').val();
    console.log("수정 들어옴")
    $.ajax({
        url : 'updatereply.do',
        type : 'post',
        data : {'content' : updateContent, 'replyno' : replyno},
        success : function(data){
            if(data == 1)
           		replyList();
        }
    });
}
 
   
//댓글 삭제 
function commentDelete(replyno){
	console.log("삭제 replyno : " + replyno)
    $.ajax({
        url : 'deletereply.do',
        data : {'replyno' : replyno},
        type : 'post',
        success : function(data){
            if(data == 1) 
            	replyList();
        }
    });
}
 
 



 
function enterkey(index) {
	console.log("enterkey function get in");
	
	   $.ajax({
	        url : 'insertreply.do',
	        type : 'post',
	        data : {no : $("#reply_no_"+ index).val(), content : $("#reply_content_"+ index).val(),
	        		ucode: "${sessionScope.ucode }", uname : "${sessionScope.uname }"
	        },
	        success : function(data){
	        	console.log("댓글 insert 성공");
	            if(data == "ok") {
	            	 replytList(index);  //댓글 작성 후 댓글 목록 reload
	            	$("#reply_content_"+ index).val('');
	            }else{
	            	alert("댓글 등록 실패! 재시도 하시오")
	            }
	        }
	    });
}


function replytList(index){
	console.log("reply 인써트 후 리스트 보여주기 function get in");
	
	
	
    $.ajax({
        url : 'selectOneReply.do',
        type : 'post',
        data : {no : $("#reply_no_"+ index).val()},
		
        success : function(data){
        	replyList();
        	

        	console.log("댓글 list 성공");
   
        }
    });
}



/* 담당자 기능 */

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
function validate(){
	//날짜에 빈 공백이 들어오니까 공백일때 널로 바꿔라 라는 내용을 추가한다
	return true;
}


</script>
<!-- 재료끝 -->
