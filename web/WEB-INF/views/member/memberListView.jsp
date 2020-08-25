<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="member.model.vo.Member, java.util.ArrayList"%>
<% 
	ArrayList<Member> list = (ArrayList<Member>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lets</title>
<style type="text/css">
form.sform{
	display : none;
	background : lightgray;
}
</style>
<script type="text/javascript" src="/lets/resources/js/jquery-3.5.1.min.js"> </script>
<script type="text/javascript">
//jquery 로 이벤트 처리 : form 을 보이게 안보이게 처리함
/* 원래 jquery 쓰는법
 	jQuery(document.ready(){}); => 이 문서가 브라우저에 읽어 들이기가 완료되면 
 jQuery 는 $ 로 표기해도 됨  
 	$(function(){}); 로 줄여서 사용해도 됨
 	=> 자바스크립트로는  window.onload = function(){}; 과 같음
 */
$(function(){
	//작성된 이벤트 처리 코드는 실행 대기 상태가 됨
	//jQuery("선택자").실행시킬메소드(전달값, 전달값, ...);  => 메소드는 jquery메소드
	$("input[name=item]").on("change", function(){
		//이벤트가 발생한 radio 와 연결된 폼만 보이게 하고
		//나머지 폼은 안보이게 처리함
		$("input[name=item]").each(function(index){   //for 문이라고 생각.이름이 item인 얘들을 하나씩 꺼내서 처리해라.
			// each안의 콜백함수는 인덱스를 사용할 수 있다.
			// radio 하나씩 checked 인지 확인하고
			if($(this).is(":checked")){ // checked 속성이 true냐 라고 묻는 것임
				//해당 인덱스 순번의 radio가 체크표시가 되어있는지 = 체크상태니?
				// 순번이 중요한데 아래 써진 순서와 index의 순번이 같아야한다. 
				//form도 만들어진 순서대로 0번부터 번호부여 (form 순번과 item의 순번이 같도록 작업하는 것이 좋다)
				$("form.sform").eq(index).css("display", "block"); // 다시 보이게 하는 함수 : display
					// 체크된 얘들은 보이게하고
			}else{
				$("form.sform").eq(index).css("display", "none"); 
					// 체크안 된 얘들은 안보이게 해라
			}
		}); 
	});
});

function changeLogin(element){
	// 선택한 radio의 name속성값에서 userid 분리 추출함
	var userid = element.name.substring(8);
	console.log(userid);
	if(element.checked == true && element.value == "false"){
		console.log("로그인제한 체크함");
		location.href = "/lets/loginOK?userid=" + userid + "&ok=false";
	}else{
		console.log("로그인제한 해제함");
		location.href = "/lets/loginOK?userid=" + userid + "&ok=true";
	}
}
</script>
</head>
<body>
<%@ include file="../common/header.jsp" %>
<hr>
<h1 align="center">전체회원 관리 페이지</h1>
<h2 align="center">현재 회원수 : <%=list.size() %> 명</h2>
<center>
	<button onclick="javascript:location.href='/lets/mlist'">전체 보기</button>
<br>
<!-- 항목별 검색 기능 추가 -->
<fieldset id="ss">
<legend>검색할 항목을 선택하세요</legend>
<input type="radio" name="item" id="uid"> 회원 아이디 &nbsp;
<input type="radio" name="item" id="ugen"> 성별 &nbsp;
<input type="radio" name="item" id="uage"> 연령대 &nbsp;
<input type="radio" name="item" id="uenroll"> 가입날짜 &nbsp;
<input type="radio" name="item" id="ulogok"> 로그인제한
</fieldset>
<!-- 검색 기능 영역 끝 -->

<br>
<!-- 회원 아이디로 검색 폼 (action과 keyword 전달)-->
<form action="/lets/msearch" method="post" id="idform" class="sform">
<input type="hidden" name="action" value="id">
<fieldset>
<legend>검색할 아이디를 입력하세요</legend>
<input type="search" name="keyword"> &nbsp;
<input type="submit" value="검색">
</fieldset>
</form>
<!-- 성별로 검색 폼 -->
<form action="/lets/msearch" method="post" id="genderform" class="sform">
<input type="hidden" name="action" value="gender">
<fieldset>
<legend>검색할 성별을 선택하세요</legend>
<input type="radio" name="keyword" value="M"> 남자 &nbsp;
<input type="radio" name="keyword" value="F"> 여자 &nbsp;
<input type="submit" value="검색">
</fieldset>
</form>
<!-- 연령대로 검색 폼 -->
<form action="/lets/msearch" method="post" id="ageform" class="sform">
<input type="hidden" name="action" value="age">
<fieldset>
<legend>검색할 연령대를 선택하세요</legend>
<input type="radio" name="keyword" value="20"> 20대 &nbsp;
<input type="radio" name="keyword" value="30"> 30대 &nbsp;
<input type="radio" name="keyword" value="40"> 40대 &nbsp;
<input type="radio" name="keyword" value="50"> 50대 &nbsp;
<input type="radio" name="keyword" value="60"> 60대 이상&nbsp;
<input type="submit" value="검색">
</fieldset>
</form>
<!-- 가입날짜로 검색 폼 -->
<form action="/lets/msearch" method="post" id="enrollform" class="sform">
<input type="hidden" name="action" value="enrolldate">
<fieldset>
<legend>검색할 가입날짜를 선택하세요</legend>
<input type="date" name="begin"> ~ 
<input type="date" name="end"> &nbsp;
<input type="submit" value="검색">
</fieldset>
</form>
<!-- 로그인 제한/가능 검색 폼 -->
<form action="/lets/msearch" method="post" id="lokform" class="sform">
<input type="hidden" name="action" value="loginok">
<fieldset>
<legend>검색할 로그인 제한/가능을 선택하세요</legend>
<input type="radio" name="keyword" value="Y"> 로그인 가능 &nbsp;
<input type="radio" name="keyword" value="N"> 로그인 제한&nbsp;
<input type="submit" value="검색">
</fieldset>
</form>

</center>
<br>
<table align="center" border="1" cellspacing="0" cellpadding="3">
<tr>
<th>아이디</th><th>이름</th><th>성별</th><th>나이</th><th>전화번호</th><th>이메일</th>
<th>취미</th><th>하고싶은 말</th><th>가입날짜</th><th>마지막 수정날짜</th><th>로그인 제한 여부</th>
</tr>
<% for(Member m : list){ %>
<tr>
<td><%= m.getUserid() %></td>
<td><%= m.getUsername() %></td>
<td><%= (m.getGender().equals("M"))? "남자" : "여자" %></td>
<td><%= m.getAge() %></td>
<td><%= m.getPhone() %></td>
<td><%= m.getEmail() %></td>
<td><%= m.getHobby() %></td>
<td><%= m.getEtc() %></td>
<td><%= m.getEnrollDate() %></td>
<td><%= m.getLastModified() %></td>
<td>
<% if( m.getLoginok().equals("Y")){ %>
<input type="radio" name="loginok_<%= m.getUserid() %>" onchange="changeLogin(this);" value="true" checked> 가능 &nbsp;
<input type="radio" name="loginok_<%= m.getUserid() %>" onchange="changeLogin(this);" value="false" > 제한
<% }else{ %>
<input type="radio" name="loginok_<%= m.getUserid() %>" onchange="changeLogin(this);" value="true" > 가능 &nbsp;
<input type="radio" name="loginok_<%= m.getUserid() %>" onchange="changeLogin(this);" value="false" checked> 제한
<% } %>
</td>
</tr>
<% } %>
</table>
<hr>
<!-- 상대경로만 사용가능 -->
<%@ include file="../common/footer.jsp" %>
</body>
</html>