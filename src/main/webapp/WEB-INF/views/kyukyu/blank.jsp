
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%-- <%= session.getAttribute("pnum") %> --%>
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

<title>HWABO</title>


<body>



<div class="px-3 pb-5 pr-20 pl-20 text-white" id="replyy">

	<div class="row">
		<div class="col-md-16">
			<div class="blog-comment">

				<hr />
				<ul class="comments">


			<!-- 	ëê¸ í¼ -->


					<li class="clearfix">
						<img src="https://bootdey.com/img/Content/user_1.jpg" class="avatar" alt="">
						<div class="post-comments">
							<div class="meta">
								날짜&nbsp;&nbsp;<a href="#">이름&nbsp;&nbsp;</a> 
								<i class="pull-right"><a href="#"><small>Reply</small></a></i>
							</div>

							Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam a
							sapien odio, sit amet

						</div>
					</li>
					
					
					
					
					<li class="clearfix">
					<img src="https://bootdey.com/img/Content/user_2.jpg" class="avatar" alt="">
						<div class="post-comments">
							<div class="meta">
								날짜&nbsp;&nbsp;<a href="#">이름&nbsp;&nbsp;</a>
								<i class="pull-right"><a href="#"><small>Reply</small></a></i>
							</div>

							Lorem ipsum dolor sit amet, consectetur adipiscing elit.Etiam a
							sapien odio, sit amet

						</div>
					</li>




		<!-- 	ëëê¸!!!!!!!!!!!!!!!!!!!!! -->
					<ul class="comments">
						<li class="clearfix"><img src="https://bootdey.com/img/Content/user_3.jpg" class="avatar" alt="">
							<div class="post-comments">
								<div class="meta">
									날짜&nbsp;&nbsp;<a href="#">이름&nbsp;&nbsp;</a><i
										class="pull-right"></i>
								</div>

								Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam a
								sapien odio, sit amet

							</div>
							
							</li>
					</ul>
					
					
					
					
					
				</ul>
			</div>
		</div>
	</div>
</div>

</body>




		
						re += '<div role="alert" style="font-size:14px; padding: 0rem; border: 1px;">';
						re += '<br><div class="commentInfo'+jsonObj.list[i].replyno+'">'+' <div style="float:left;" name="작성자">&nbsp;'+decodeURIComponent(jsonObj.list[i].uname).replace(/\+/gi, " ")+'</div>';
						if(jsonObj.list[i].secondenroll == null){
				           	re += '<small>&nbsp;&nbsp;'+ jsonObj.list[i].enrolldate+'</small>';
				       	}else{
				           	re += '<small>&nbsp;&nbsp; 수정일 '+ jsonObj.list[i].secondenroll+'</small>';
				        }
				        re += '<a onclick="commentRereply('+jsonObj.list[i].replyno+',\''+jsonObj.list[i].no+'\');"><div style="float:right;"> 답글 </a>';
				        if(jsonObj.list[i].ucode == "${ sessionScope.ucode }"){
				           re += '<a onclick="commentUpdate('+jsonObj.list[i].replyno+',\''+decodeURIComponent(jsonObj.list[i].content).replace(/\+/gi, " ")+'\');"> 수정 </a>';
					       re += '<a onclick="commentDelete('+jsonObj.list[i].replyno+');"> 삭제&nbsp;&nbsp; </a></div>';
					       re += '</div><div class="commentContent'+jsonObj.list[i].replyno+'"> &nbsp;내용 : '+decodeURIComponent(jsonObj.list[i].content).replace(/\+/gi, " "); 
				        }
						
						
					}else{ //답글일 때
						re += '<div role="alert" style="font-size:14px; padding: 0rem; border: 1px; margin-left: 30px;">';
						re += '<div class="commentInfo'+jsonObj.list[i].replyno+'">'+' <div style="float:left;" name="작성자">&nbsp;'+decodeURIComponent(jsonObj.list[i].uname).replace(/\+/gi, " ")+'</div> ';
						if(jsonObj.list[i].secondenroll == null){
				           	re += ' <small>&nbsp;&nbsp;'+ jsonObj.list[i].enrolldate+'</small>';
				       	}else{
				           	re += ' <small>&nbsp;&nbsp; 수정일 '+ jsonObj.list[i].secondenroll+'</small>';
				        }
					        /* re += '<a onclick="commentRereply('+jsonObj.list[i].replyno+',\''+jsonObj.list[i].no+'\');"> 답글 </a>'; */
					    if(jsonObj.list[i].ucode == "${ sessionScope.ucode }"){
					       re += '<div style="float:right;"><a onclick="commentUpdate('+jsonObj.list[i].replyno+',\''+decodeURIComponent(jsonObj.list[i].content).replace(/\+/gi, " ")+'\');"> 수정 </a>';
						   re += '<a onclick="commentDelete('+jsonObj.list[i].replyno+');"> 삭제&nbsp;&nbsp; </a></div>';
						   re += '</div><div class="commentContent'+jsonObj.list[i].replyno+'">&nbsp;답글내용 : '+decodeURIComponent(jsonObj.list[i].content).replace(/\+/gi, " ");
				           		
					    }
					
					}
					
					
					
					
					
<script type="text/javascript">

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
            
               
               
               
               
            
               if(jsonObj.list[i].kind == "0"){ //댓글일 때
                  re += '<div role="alert" style="font-size:14px; padding: 0rem; border: 1px;">';
                  re += '<br><div class="commentInfo'+jsonObj.list[i].replyno+'">'+' <div style="float:left;" name="작성자">&nbsp;'+decodeURIComponent(jsonObj.list[i].uname).replace(/\+/gi, " ")+'</div>';
                  if(jsonObj.list[i].secondenroll == null){
                          re += '<small>&nbsp;&nbsp;'+ jsonObj.list[i].enrolldate+'</small>';
                      }else{
                          re += '<small>&nbsp;&nbsp; 수정일 '+ jsonObj.list[i].secondenroll+'</small>';
                    }
                    re += '<a onclick="commentRereply('+jsonObj.list[i].replyno+',\''+jsonObj.list[i].no+'\');"><div style="float:right;"> 답글 </a>';
                    if(jsonObj.list[i].ucode == "${ sessionScope.ucode }"){
                       re += '<a onclick="commentUpdate('+jsonObj.list[i].replyno+',\''+decodeURIComponent(jsonObj.list[i].content).replace(/\+/gi, " ")+'\');"> 수정 </a>';
                      re += '<a onclick="commentDelete('+jsonObj.list[i].replyno+');"> 삭제&nbsp;&nbsp; </a></div>';
                      re += '</div><div class="commentContent'+jsonObj.list[i].replyno+'"> &nbsp;내용 : '+decodeURIComponent(jsonObj.list[i].content).replace(/\+/gi, " "); 
                    }
                  
                  
               }else{ //답글일 때
                  re += '<div role="alert" style="font-size:14px; padding: 0rem; border: 1px; margin-left: 30px;">';
                  re += '<div class="commentInfo'+jsonObj.list[i].replyno+'">'+' <div style="float:left;" name="작성자">&nbsp;'+decodeURIComponent(jsonObj.list[i].uname).replace(/\+/gi, " ")+'</div> ';
                  if(jsonObj.list[i].secondenroll == null){
                          re += ' <small>&nbsp;&nbsp;'+ jsonObj.list[i].enrolldate+'</small>';
                      }else{
                          re += ' <small>&nbsp;&nbsp; 수정일 '+ jsonObj.list[i].secondenroll+'</small>';
                    }
                       /* re += '<a onclick="commentRereply('+jsonObj.list[i].replyno+',\''+jsonObj.list[i].no+'\');"> 답글 </a>'; */
                   if(jsonObj.list[i].ucode == "${ sessionScope.ucode }"){
                      re += '<div style="float:right;"><a onclick="commentUpdate('+jsonObj.list[i].replyno+',\''+decodeURIComponent(jsonObj.list[i].content).replace(/\+/gi, " ")+'\');"> 수정 </a>';
                     re += '<a onclick="commentDelete('+jsonObj.list[i].replyno+');"> 삭제&nbsp;&nbsp; </a></div>';
                     re += '</div><div class="commentContent'+jsonObj.list[i].replyno+'">&nbsp;답글내용 : '+decodeURIComponent(jsonObj.list[i].content).replace(/\+/gi, " ");
                             
                   }
               
               }
               
                  
                  re += '<div class="Rere'+jsonObj.list[i].replyno+'"></div>';
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
</script>
