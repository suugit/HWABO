<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>second</title>
<script type="text/javascript" src="/second/resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	//테스트1 버튼을 클릭했을 때 서버 컨트롤러 메소드로 값 보내기 
	$("#test1").on("click", function(){
		
		alert('hi');
		$.ajax({
			url:"test1.do", //얘한테 요청
			data: {name: $("#name").val(), age: $("#age").val()}, //object
			type: "post",
			success: function(result){
				if(result == "ok"){
					alert("값 보내기 성공!");
					console.log("result:" + result);
					$('#d1').html("<h5>" + result + "</h5>");
				}else{ //ok가 아닌 다른 문자열 값이면
					alert("값 전송 실패!");
				}
					
			}, //success
			error: function(request,status, errorDate){
				console.log("error code : " + requet.status + "\nMessage :" + request.responseText + "\nError :" + errorData);
			}
 		}); //ajax
	}); //test1 click
	
	//테스트2 버튼을 클릭하면 서버 컨트롤러에서 전송한 json을 받아서 출력
	$("#test2").on("click", function(){
		alert('hi');
		$.ajax({
			url: "test2.do",
			type: "post", //json을 받을 떄는 post로 지정해야함 
			dataType: "json", //받는 값의 종류(기본:text) - 문자열은 지정안해도 ㅇㅋ 근데 json, xml로 받는경우 data type option써야함
			success: function(jsonData){ //매개변수로 데이터 꼭 받아올 수 이도록() 써줘야함 
				//json 하나만 받으면 파싱 노필요 바로 .속성 으로 다루면 됨 
				//json 객체 한 개를 받았을 때는 바로 출력 처리할 수 있다
				console.log("jsonData :" + jsonData);
			
				$("#d2").html("번호:" + jsonData.no + 
						"<br>제목 : "+ jsonData.title + 
						"<br>작성자:" + decodeURIComponent(jsonData.writer) + 
						"<br>내용:" + decodeURIComponent(jsonData.content.replace(/\+/gi," ")));
				
				//urlencode한경우에는 decode필요 공백이 더하기 문자로 출력되니까 replace 필요
			},
			error: function(request,status, errorDate){
				console.log("error code : " + requet.status + "\nMessage :" + request.responseText + "\nError :" + errorData);
			}
		}); //ajax
		
	}); //test2 click
	
	$("#test3").on("click", function(){
		$.ajax({
			url: "test3.do",
			type: "post", 
			dataType: "json",
			success: function(obj){
				console.log(obj);
				var objStr = JSON.stringify(obj);
				var jsonObj = JSON.parse(objStr);

				var output = $("#d3").html();
				
				for(var i in jsonObj.list){
					output += jsonObj.list[i].userid
							+ ", " + jsonObj.list[i].userpwd
							+ ", " + decodeURIComponent(jsonObj.list[i].username.replace(/\+/gi," "))
							+ ", " + jsonObj.list[i].age
							+ ", " + jsonObj.list[i].email
							+ ", " + jsonObj.list[i].phone
							+ ", " + jsonObj.list[i].birth + "<br>"
					
				}
				
				$("#d3").html(output);
			},
			error: function(request,status, errorDate){
				console.log("error code : " + requet.status + "\nMessage :" + request.responseText + "\nError :" + errorData);
			}
		}); //ajax
		
	}); //test3 click 
	
	
	
	
	//테스트4 버튼을 클릭하면 서버 컨트롤러에서 전송한 json을 받아서 출력
	$("#test4").on("click", function(){}); //test4 click
	
	//테스트5 버튼을 클릭하면 서버 컨트롤러에서 전송한 json을 받아서 출력
	$("#test5").on("click", function(){}); //test5 click
	
	//테스트6 버튼을 클릭하면 서버 컨트롤러에서 전송한 json을 받아서 출력
	$("#test6").on("click", function(){
		var jarr = new Array(5); //index 사용할 수 있음
		//jarr[i] = {name: 홍길동}
		
		var jarr = new Array(); //Stack 구조가 됨 index가 없음
		//저장 push() / 꺼내기 pop() 사용 
		
		var jarr = [{name: "홍길동", age:25},
			{name: "핸드", age:15},
			{name: "크림", age:55}]
		
		$.ajax({
			url: "test6.do",
			type: "post",
			data: JSON.stringify(jarr),
			contentType: "application/json; charset=utf-8",
			success: function(result){
				alert("전송 성공 : " + result);
				
				var values = $("#d6").html();
				for(var i in jarr){
					values += i + "번째 이름 :" + jarr[i].name +
					", 나이 : " + jarr[i].age + "<br>";
				}
			},
			error: function(request,status, errorDate){
				console.log("error code : " + requet.status + "\nMessage :" + request.responseText + "\nError :" + errorData);
			}
		})
	}); //test6 click
})
</script>
</head>
<body>
<c:import url="/WEB-INF/views/common/header.jsp" />
<hr>
<h1>spring second : Ajax test page</h1>
<ol>
<li>서버쪽 컨트롤러 메소드로 값 보내기 <button id="test1">테스트1</button></li>
<input type="text" id="name"><br>
<input type="number" id="age"><br>
<li>컨트롤러에서 보낸 json 객체 받아서 출력하기 <button id="test2">테스트2</button></li>
<p><div id="d2"></div></p>
<li>컨트롤러에서 보낸 json 배열 받아서 출력하기<button id="test3">테스트3</button></li>
<p><div id="d3"></div></p>
<li>컨트롤러에서 보낸 Map 객체 받아서 출력하기<button id="test4">테스트4</button></li>
<p><div id="d4"></div></p>
<li>컨트롤러로 json 객체 보내기<button id="test5">테스트5</button></li>
<p><div id="d5"></div></p>
<li>컨트롤러로 json 배열 보내기 <button id="test6">테스트6</button></li>
<p><div id="d6"></div></p>
</ol>
</body>
</html>