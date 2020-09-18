<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 채팅기능 시작 -->
<script>

$(function(){
	$.ajax({
		url: "starList.do?ucode=${ who }",
		type: "POST",
		dataType: "json", 
		success: function(json){
			
			var jsonStr = JSON.stringify(json);
			var json = JSON.parse(jsonStr);
			console.log("success : " + jsonStr);
			
			var values = "";
			for(var i in json.list5){
				var starName = decodeURIComponent(json.list5[i].name).replace(/\+/gi, " ");
				var starUcode = decodeURIComponent(json.list5[i].ucode).replace(/\+/gi, " ");
				var starStar = decodeURIComponent(json.list5[i].star).replace(/\+/gi, " ");
				values += 
					"<li class=\"nav-item\"><a class=\"nav-link\">" +
		            "<i class=\"fas fa-fw fa-chart-area\"></i><span onclick=\"javascript:location.href=\'cards.do\'\">" +
					starName +
					"</span><span>" +
					"&nbsp;&nbsp;<button class=\"button button3\" " +
					"onclick=\"javascript:location.href=\'delStar.do?ucode=" + starUcode + "&star=" + starStar + "\'\" >X</button>" +
					"</span></a></li>";
			}
			//$("stars").html() + 
			$("#chat").html(values); 		
		},
		error: function(jqXHR, textstatus, errorthrown){
			console.log("error : " +jqXHR+", "+textstatus+", "+errorthrown);
		}
	});//ajax
	
});

</script>
<!-- 채팅기능 끝 -->
</head>
<body>

<!-- 채팅 폼 시작 -->
<div class="card shadow mb-4">
            <div class="card-header py-3">
            </div>
            <div class="card-body">
              <!-- 게시글안쪽 -->

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
<!-- 채팅내용 시작 -->
<div id="chat"></div>
<input type="text" class="form-control">
<!-- 채팅내용 끝 -->
<hr>
<a href="#" class="btn btn-primary btn-icon-split btn-sm" style="width:100%;">
                    <span class="text">프로젝트 채팅</span>
                  </a>

            </div>
</div>

<!-- 채팅 폼 끝 -->

</body>
</html>