<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 채팅기능 시작 -->

<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" type="text/css" rel="stylesheet">

<link href="/hwabo/resources/maincss/css/chatting.css" type="text/css" rel="stylesheet">


<!-- 스나이퍼 재료 시작 -->
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
<!-- 스나이퍼 재료 끝 -->


<script>

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
					console.log("보낸 채팅 :" + result);
					
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

function delChat(target,target_code,target_num){
		$.ajax({
			url:"delChat.do",
			data: {
				content : target,
				ucode :	target_code,
				project_num : target_num
			},
			type: "POST",
			success: function(result){
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
}

function selectChat(){
	$.ajax({
		url: "riseChat.do?project_num=${ sessionScope.pnum }",
		type: "POST",
		dataType: "json", 
		success: function(json){
			
			var jsonStr = JSON.stringify(json);
			var json = JSON.parse(jsonStr);
			console.log("success : " + jsonStr);
			
			var values = "";
			for(var i in json.chatList){
				var chat_ucode = decodeURIComponent(json.chatList[i].ucode).replace(/\+/gi, " ");
				var chat_uname = decodeURIComponent(json.chatList[i].uname).replace(/\+/gi, " ");
				var chat_content = decodeURIComponent(json.chatList[i].content).replace(/\+/gi, " ");
				var chat_pnum = decodeURIComponent(json.chatList[i].pnum).replace(/\+/gi, " ");
				var chat_time = decodeURIComponent(json.chatList[i].time).replace(/\+/gi, " ");
				if(chat_ucode == "${ sessionScope.ucode }"){
					values += 
					"<div class=\"outgoing_msg\"><div class=\"sent_msg\"><p>" +
					chat_content +
		            "</p><span class=\"time_date\">" +
		            chat_time.substring(0, 16) +
		            //삭제버튼 시작
	                "&nbsp;&nbsp;<button class=\"button button3\" " +
					"onclick=\"javascript:location.href=\'delChat.do?project_num=${sessionScope.pnum}&ucode=${sessionScope.ucode}&content="+chat_time+"\' \" >X</button>" +
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
			//$("stars").html() + 
			$("#chat").html(values); 
			$("#chat").scrollTop($("#chat")[0].scrollHeight);
		},
		error: function(jqXHR, textstatus, errorthrown){
			console.log("error : " +jqXHR+", "+textstatus+", "+errorthrown);
		}
	});//ajax
};

selectChat();
setInterval(selectChat,3000);

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
            <input id="enter_ucode" type="hidden" value="${ sessionScope.ucode }" />
            <input id="enter_project_num" type="hidden" value="${ sessionScope.pnum }" />
            <input id="enter_project_name" type="hidden" value="${ sessionScope.pnames }" />
            <input id="enter_uname" type="hidden" value="${ sessionScope.uname }" />
            
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