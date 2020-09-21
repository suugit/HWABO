<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="currentUcode" value="${sessionScope.ucode }"/>
<c:set var="bpostUcode" value="${post.bucode }"/>
<!DOCTYPE html>
<html lang="kr">
<head>
<meta charset="UTF-8">

<title>HWABO</title>

<style type="text/css">
div#showfile imag {
	width: 10%;
	height: 10%;
}

#import{
	pointer-events: none; 
}

</style>
</head>
<script type="text/javascript"src="resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	function bkindshow() {
		$("#'${b.bkind}'").button('toggle')
	}

	var names = "";

	function addbcharge() {
		var name = $(event.target).text();
		names += name + " ";

		$('#selected')
				.before(
						'<span>'
								+ name
								+ '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i> </span>');
		//$('#bform').val(name); 
		$('#bform').val(names);
		alert($("#bform").val());
	}

	function unSelected() {
		$(event.target).parent().remove();
	}

	function validate() {
		//날짜에 빈 공백이 들어오니까 공백일때 널로 바꿔라 라는 내용을 추가한다
		return true;
	}
	
	function sendInsert(index) {
		console.log("sendInsert : " + index);
		console.log($("#no_" + index).val());
		$.ajax({
			url : "insertcabinet.do",
			data : {
				no : $("#no_" + index).val(),
				ucode : $("#ucode_" + index).val(),
				pnum : $("#pnum_" + index).val()
			},
			type : "post",
			success : function(result) {
				if (result == "ok") {
					alert("보관함 보내기 성공 !");
					console.log("보관함 보내기 성공 !");
				} else {
					alert("값이 보내졌지만 결과는 ok가 아님");
				}

			},
			error : function(request, status, errorData) {

				console.log("error code : " + request.status + "\nMessage : "
						+ request.responseText + "\nError : " + errorData);
			}

		}); //에이작스
	}

	$(function() {
		//보관함

		$(".liketoggle").click(function() {
			$(this).find("i").toggleClass("fas far");
			$(this).find("span").text(function(i, v) {
				return v === '보관' ? '보관됨' : '보관'
			})
		});

	});
</script>



<body id="page-top">
<table style="position:fixed;z-index:8; width:100%;height:100%;">
<tr onclick="javascript:location.href='mybpost.do?ucode=${sessionScope.ucode}&pnum=${sessionScope.pnum}'"><td>&nbsp;</td><td style="height:20%;">&nbsp;</td><td>&nbsp;</td></tr>
<tr><td  onclick="javascript:location.href='mybpost.do?ucode=${sessionScope.ucode}&pnum=${sessionScope.pnum}'" style="width:30%;"></td><td style="width:40%;height:45%;background-color:white;border:1px solid skyblue;">
<div class="p-5" style="width:100%;">
                  <div class="text-center">
                    <h3 class="h4 text-gray-900 mb-4">${post.btitle }</h3>
                  </div>
                  <div align="right" style="padding-bottom: 10px;">
                  			<button id="cabinetshow" class="btn btn-light"
				name="like" onclick="sendInsert();">
				<span>보관</span>
			</button>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<c:if test="${bpostUcode == currentUcode}">
			<span >
				<c:url var="bup" value="moveBpostUpdate.do">
							<c:param name="bno" value="${post.bno }" />
							<c:param name="ucode" value="${sessionScope.ucode }" />
							<c:param name="pnum" value="${sessionScope.pnum }" />
				</c:url>
				<a class="btn btn-light" href="${bup }">수정</a>
			</span>
			&nbsp;
			<span>
				<c:url var="bdel" value="bpostdel.do">
					<c:param name="bno" value="${post.bno }" />
					<c:param name="brenamefile" value="${post.brenamefile }" />
				</c:url>
				<a class="btn btn-light" href="${bdel }">삭제</a>
			</span>
		</c:if>
			
                  </div>
                  
 	<table class="table">
	<tr><th style="width: 13%; text-align: center; vertical-align:middle;">작성자</th><td>${post.bwriter }</td></tr>
	<tr><th style="text-align: center;">유 형</th>
		  <td>
				<c:if test="${post.bkind eq '요청'}">
					요청
				</c:if>
				<c:if test="${post.bkind eq '진행'}">
					진행
				</c:if>
				<c:if test="${post.bkind eq '피드백'}">
					피드백
				</c:if>
				<c:if test="${post.bkind eq '완료'}">
					완료
				</c:if>
				<c:if test="${post.bkind eq '보류'}">
					보류
				</c:if>
		  </td>
	</tr>
	<c:if test="${!empty post.bstartday and !empty post.bendday }">
		<tr><th style="text-align: center;">날 짜</th><td style="text-align: left;">${post.bstartday }&nbsp; ~ &nbsp;${post.bendday }</td></tr>
		
	</c:if>
	<tr><th style="text-align: center; vertical-align:middle;">담당자</th><td>${post.bchargename }</td></tr>
	<tr><th style="text-align: center; vertical-align:middle;">내 용</th><td><c:if test="${post.bcontent != null }" > ${post.bcontent }</c:if><c:if test="${post.bcontent == null }" >&nbsp;</c:if></td></tr>
	
	<c:if test="${! empty post.boriginfile }">
		<tr>
			<th style="text-align: center; vertical-align:middle;">파 일</th>
			<td><div id="showfile" style="overflow: hidden;">
					<img src="resources/bupfile/${post.brenamefile}"
						style="width: 40%; height: 10%;">
				</div>
				<br>
				<c:url var="ubf" value="bfdown.do">
					<c:param name="ofile" value="${post.boriginfile}" />
					<c:param name="rfile" value="${post.brenamefile}" />
				</c:url>
				<a href="${ubf }"> ${post.boriginfile}</a>
			</td>
	</c:if>
	<c:if test="${empty post.boriginfile}">
	 <tr><td colspan="2">&nbsp;</td></tr>
	</c:if>
	</table>

</div>
</td><td  onclick="javascript:location.href='mybpost.do?ucode=${sessionScope.ucode}&pnum=${sessionScope.pnum}'" style="width:30%;"></td></tr>
<tr  onclick="javascript:location.href='mybpost.do?ucode=${sessionScope.ucode}&pnum=${sessionScope.pnum}'"><td>&nbsp;</td><td style="height:35%;">&nbsp;</td><td>&nbsp;</td></tr>      
</table>

<div id="import" style="opacity: 0.5">
<c:import url="/WEB-INF/views/abc/myBPOST.jsp" />
</div>
</body>

</html>
