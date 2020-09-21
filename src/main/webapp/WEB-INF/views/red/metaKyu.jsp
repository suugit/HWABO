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
