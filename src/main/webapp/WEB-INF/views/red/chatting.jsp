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

<script>



</script>
<!-- 채팅기능 끝 -->

</head>
<body>

<div class="messaging">
      <div class="inbox_msg">
        <div class="mesgs">
          <div class="msg_history" id="chat">
            
            <div class="incoming_msg">
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
            </div>
          
          </div>
          <div class="type_msg">
            <div class="input_msg_write">
              <input id="enter_content" type="text" class="write_msg" placeholder="Type a message" />
              <button id="enter_chat" class="msg_send_btn" type="button"><i class="fa fa-paper-plane-o" aria-hidden="true"></i></button>
            </div>
          </div>
        </div>
      </div>
</div>

</body>
</html>