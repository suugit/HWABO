<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ab3b0466fa883da1d7216010325a5bcc&libraries=services"></script>
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script type="text/javascript" src="resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	//수정폼 가리기
	$("[id^=up]").css("display", "none" );
	
	//수정폼안에 입력가능글자수 변경
	$('#scontent').on("propertychange change keyup paste input", function() {
		var content = $(this).val();
		$('#counter').val(200 - content.length);

		if (content.length > 200) {
			$(this).val(
					$(this).val().substring(0, 200));
		}
	});

	//수정폼 입력부분 빈칸이면 주소입력창띄우기
	$("#sample5_address3").on("click", function(){
		if($(this).val().length == 0 ){
			sample5_execDaumPostcode2()
		}
	});	
	
	//수정폼에 spost내용값 읽어와서 (200 - 입력된 값)를 글자수에 적용
	var content = $('#scontent').val();
	$('#counter').val(200-content.length);
	var str = $('#scontent').val();
	str = str.split('<br>').join("\r\n");
	$('#scontent').val(str);
	
	
});	//document.ready;

	//일정게시글 등록시 날짜 유효성 체크
	function daycheck() {
		var startday = document.uspostform.beforesstartday.value.replace("T", " ");
		var endday = document.uspostform.beforesendday.value.replace("T", " ");
		var start = new Date(startday);
		var end = new Date(endday);
		if (start > end) {
			$("#placespan").html("끝 날짜가 시작날짜보다 이전일 수 없습니다<br>다시 선택해주세요");
			$("#beforesendday").focus();
			return false;
		} else {
			return true;
		}
	}
	
	//수정폼 띄우기
	function moveupdateform(click) {
		
		$("#up"+click).css("display", "block" );
		$("#se"+click).css("display", "none" );
	}
	
	//출력폼 띄우기
	function moveselectfeed(click) {
		
		$("#up"+click).css("display", "none" );
		$("#se"+click).css("display", "block" );
	}
	
	//수정완료 버튼 누르면 실행되는 펑션
	function spostupdate(){
		var param = $("#uspostform").serialize();
		$.ajax({
			url: "supdate.do",
			data: param,
			type: "post", 
			success: function(Data){
				if(Data != null){
					alert("수정에 성공하였습니다");
				}else{
					alert("수정에 실패하였습니다");
				}	
			},
			error: function(request, status, errorData){
				console.log("error code : " + request.status + "\nMessage : "+ request.responseText + "\nError : " + errorData);
			}
		}); //ajax
}; 
	//삭제 메소드
	function spostdelete(){
		if(confirm("정말로 삭제하시겠어요?")){
			$.ajax({
				url: "sdelete.do",
				data: { sno: $("#sno").val() },
				type: "post", 
				dataType: "text",
				success: function(sno){
						alert("삭제에 성공하였습니다");
						$("#up"+sno).css("display", "none" );
						$("#se"+sno).css("display", "none" );
				},
				error: function(request, status, errorData){ //에러는 위에서 복붙
					console.log("error code : " + request.status + "\nMessage : "+ request.responseText + "\nError : " + errorData);
				}
			}); //ajax
		}//확인
	}; 
	
	
	
	function bkindshow(){
		$("#'${b.bkind}'").button('toggle')

	}


	function addbcharge0(){
	     var name = $(event.target).text();
	     var code = $(event.target).val();
	      
	       $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
	       //$('#bform').val(name); 
	       
	       $('#name0').val(name);
	       $('#user0').val(code);
	       $("input:checkbox[id='user0']").prop("checked", true);
	       $("input:checkbox[id='name0']").prop("checked", true);
	       

	       alert($("#user0").val()+" 0번"+ $("#name0").val()); 
	       
	   }


	function addbcharge1(){
	   var name = $(event.target).text();
	   var code = $(event.target).val();
	   
	    $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
	    //$('#bform').val(name); 
	    
	    $('#name1').val(name);
	    $('#user1').val(code);
	    $("input:checkbox[id='user1']").prop("checked", true);
	    $("input:checkbox[id='name1']").prop("checked", true);
	    
	    alert($("#user1").val()+" 1번"+ $("#name1").val()); 
	    
	}
	function addbcharge2(){
	      var name = $(event.target).text();
	      var code = $(event.target).val();
	       $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
	       //$('#bform').val(name); 
	       
	      $('#name2').val(name);
	       $('#user2').val(code);
	       $("input:checkbox[id='user2']").prop("checked", true);
	       $("input:checkbox[id='name2']").prop("checked", true);
	       
	       alert($("#user2").val()+" 2번" + $("#name2").val()); 
	       
	   }
	function addbcharge3(){
	      var name = $(event.target).text();
	      var code = $(event.target).val();
	       $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
	       //$('#bform').val(name); 
	       
	      $('#name3').val(name);
	       $('#user3').val(code);
	       $("input:checkbox[id='user3']").prop("checked", true);
	       $("input:checkbox[id='name3']").prop("checked", true);
	       
	       alert($("#user3").val()+" 3번"); 
	       
	   }
	function addbcharge4(){
	      var name = $(event.target).text();
	      var code = $(event.target).val();
	       $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
	       //$('#bform').val(name); 
	       
	      $('#name4').val(name);
	       $('#user4').val(code);
	       $("input:checkbox[id='user4']").prop("checked", true);
	       $("input:checkbox[id='name4']").prop("checked", true);
	       
	       alert($("#user4").val()+" 4번"); 
	       
	   }
	function addbcharge5(){
	      var name = $(event.target).text();
	      var code = $(event.target).val();
	     
	       $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
	       //$('#bform').val(name); 
	       
	      $('#name5').val(name);
	       $('#user5').val(code);
	       $("input:checkbox[id='user5']").prop("checked", true);
	       $("input:checkbox[id='name5']").prop("checked", true);
	       
	       alert($("#user5").val()+" 5번"); 
	       
	   }
	function addbcharge6(){
	      var name = $(event.target).text();
	      var code = $(event.target).val();
	       $('#selected').before('<span>'+name + '&nbsp; <i class="fa fa-times" onclick="unSelected()"></i></span>');
	       //$('#bform').val(name); 
	       
	      
	       $('#user6').val(code);
	       $('#name6').val(name);
	       $("input:checkbox[id='user6']").prop("checked", true);
	       $("input:checkbox[id='name6']").prop("checked", true);
	       
	       alert($("#user6").val()+" 6번"); 
	       
	   }
	function unSelected(){
	   
	   $(event.target).parent().remove();
	   
	 
	}

	function upcharge(){
		var result = "y";
		$('#upc').val(result);

	}
	//spost function 끗
</script> 
<body>
<c:forEach var="main" items="${ requestScope.list }"  varStatus="status">  

<%-- ${ status.count } --%>
<c:if test="${ main.firstword eq 's' }">
<c:set var="post" value="${ main }"></c:set>
	<div id="se${post.sno }" class="card shadow mb-4">
		<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
			<h6 class="m-0 font-weight-bold text-primary">
				<i class="fas fa-user-circle"></i> 
				${post.swriter}<br>
				<fmt:formatDate value="${post.senrolldate}" pattern="yyyy-MM-dd HH시 mm분 E요일"/>
			</h6>
			<div class="dropdown no-arrow">
				<!-- 보관함 담기여부 -->
				<button id="cavinetin_${status.index }"
							class="btn btn-custom btn-sm liketoggle${status.index }"
							name="like" onclick="sendInsert(${status.index});">
							<span>보관</span> <i class="far fa-bookmark"></i>
						</button>
						<input type="hidden" id="ucode_${status.index }"	value="${sessionScope.ucode }"> 
						<input type="hidden"id="no_${status.index }" value="${post.sno }"> <input	type="hidden" id="pnum_${status.index }" value="${post.spnum }">

				<!-- 드롭다운 -->
				<c:if test="${post.sucode eq sessionScope.ucode }">
					<a class="dropdown-toggle" href="#" role="button"
						id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"	aria-expanded="false"> 
						<i 	class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
					</a>
					<div class="dropdown-menu dropdown-menu-right shadow animated--fade-in"	aria-labelledby="dropdownMenuLink">
						<div class="dropdown-header">메뉴:</div>
						<button class="dropdown-item" id="${post.sno}"   onclick="moveupdateform(this.id);">수정</button>
						<button class="dropdown-item"  id="dspost" type="submit" onclick="spostdelete(); return false;">삭제</button>
					</div>
				</c:if>
				

			</div>
			<!-- 드롭다운 끝 -->
		</div>
		<div class="card-body" style="margin: 0px;">
			<!-- 게시글안쪽 -->
			<h6><strong>제목</strong> : ${post.stitle }</h6>
			<hr>
			<table style="width: 100%;">
				<tr>
					<th width="50%">시 작 날 짜</th><th width="50%">끝 날 짜</th>
				</tr>
				<tr>
					<td><fmt:formatDate value="${post.sstartday}" pattern="yyyy-MM-dd HH시 mm분 E요일"/>	</td>
					<td><fmt:formatDate value="${post.sendday}" pattern="yyyy-MM-dd HH시 mm분 E요일"/></td>
				</tr>
				<c:if test="${ !empty post.splace }">
					<tr>
						<td colspan="2">&nbsp;</td>
					</tr>
				<tr>
					<th colspan="2">장 소</th>
				</tr>
				<tr>
					<td colspan="2">
					${post.splace }
					<div id="map1_${status.index }"  style="width:400px; height:200px; margin-top:5px;" ></div> <br>
<script>
var index = ${status.index}
var mapContainer1_${ status.index } = document.getElementById('map1_'+'${ status.index }'), // 지도를 표시할 div 
    mapOption1_${ status.index } = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
       
        level: 4 // 지도의 확대 레벨
    };  
// 지도를 생성합니다    
var map1_${ status.index } = new kakao.maps.Map(mapContainer1_${ status.index }, mapOption1_${ status.index }); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder1_${ status.index } = new kakao.maps.services.Geocoder();

var spostplace1_${ status.index } ="${post.splace}";
// 주소로 좌표를 검색합니다
geocoder1_${ status.index }.addressSearch(spostplace1_${ status.index }, function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords1_${ status.index } = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker1_${ status.index } = new kakao.maps.Marker({
            map: map1_${ status.index },
            position: coords1_${ status.index }
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow1_${ status.index } = new kakao.maps.InfoWindow({
            content: '<div style="width:130px;text-align:center;padding:6px 0;">일정장소</div>'
        });
        infowindow1_${ status.index }.open(map1_${ status.index }, marker1_${ status.index }); 

        //지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map1_${ status.index }.setCenter(coords1_${ status.index });
    } 
});    

</script>
				</td>
			</tr>
			</c:if>
			<c:if test="${ !empty post.scontent }">			
					<tr><th colspan="2">메  모</th></tr>
					<tr><td colspan="2">${post.scontent }</td></tr>
			</c:if>
		</table>
		<hr>
	</div>
					<!-- 댓글 -->
			<div class="px-3 pb-5 text-white" id="replyy">
				<div class="container" style="color: black">
					<div class="commentList_${status.index }"	id="commentList_${status.index }" name="${post.sno }"></div>
				</div>

				<div style="height: 2px;">
					<input type="hidden" id="reply_no_${status.index }" name="no"
						value="${post.sno }"> <input type="text"
						class="form-control" id="reply_content_${status.index }"
						name="content" placeholder="enter를 누르면 댓글이 등록됩니다"
						onKeypress="javascript:if(event.keyCode == 13) {enterkey(${status.index});}" />
				</div>
			</div>
			<!-- 댓글 끝 -->
	</div>
	

<!-- spost 수정폼 -->

<form name="uspostform" id="uspostform" method="post" onsubmit="return daycheck();">
	<div id="up${post.sno }" class="card shadow mb-4">
		<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
		
		<input type="hidden" id="sno" name=sno value="${post.sno }">
			<h6 class="m-0 font-weight-bold text-primary">
				수정페이지
			</h6>

			<div class="dropdown no-arrow">

				<button class="btn btn-custom btn-sm"  id="uspost" type="submit" onclick="spostupdate(); return false;">수정하기</button> 
				<button class="btn btn-custom btn-sm"  id="dspost" type="submit" onclick="spostdelete(); return false;">삭제하기</button>
				<button id="${post.sno }" class="btn btn-custom btn-sm"  onclick="moveselectfeed(this.id); return false;" >수정취소</button>				
			</div>
			<!-- 드롭다운 끝 -->

		</div>
		<div class="card-body">
			<!-- 게시글안쪽 -->
			<table>
				<tr>
					<th>제 목</th>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td colspan="2"><input type="text" id="stitle" name="stitle" class="form-control" value="${post.stitle }">
			</td>
				</tr>
				<tr>
					<th>시 작 날 짜</th><th>끝 날 짜</th>
				</tr>
				
				<c:set var="startday1" value="" />

				<tr>
					<td width="50%">
					
					<fmt:formatDate var="sstartday1" value="${post.sstartday}" pattern="yyyy-MM-dd" />
					<fmt:formatDate var="sstartday2" value="${post.sstartday}" pattern="HH:mm:ss" />
					
					<input type="datetime-local" class="form-control" name="beforesstartday" id="beforesstartday" 
					required="required"  value=""	></td>

					<td width="50%">
					<input type="datetime-local" class="form-control" name="beforesendday"  id="beforesendday" 
					required="required"  value=""	></td>
					<td><span style="color: blue;" id="placespan"></span></td>
				</tr>
			
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<th>장 소</th>
				</tr>
				<tr>
					<td colspan="2">
					<c:if test="${ empty post.splace }">
						<input type="text" id="sample_address3${status.index }" placeholder=" 장소를 입력해주세요" class="form-control" id ="splace" name="splace" >
					</c:if>	
					<c:if test="${ !empty post.splace }">
						<input type="text" id="sample_address3${status.index }" placeholder=" ${post.splace }" class="form-control" id ="splace" name="splace"  value="${post.splace }">
					</c:if>
						<input type="button" onclick="sample5_execDaumPostcode2${status.index }();" value="장소검색"  class="form-control"><br>
<script>
    function sample5_execDaumPostcode2${status.index }() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr3_${status.index} = data.address; // 최종 주소 변수
                // 주소 정보를 해당 필드에 넣는다.
                document.getElementById("sample_address3${status.index }").value = addr3_${status.index};
            }
        }).open();
    }
</script>	
					</td>
				</tr>		
				<tr>
					<td>&nbsp;</td>
				</tr>

				<tr>
					<td>메  모 <span>&nbsp;&nbsp;&nbsp;( 남은글자수 : <input size="2px;"  type="text"
												readonly value="200" name="counter" id="counter"
												style="border: none; margin: 0px; padding: 0px; height: 10px;">)</span></td>
				</tr>
				<tr>
				<td colspan="2">
<textarea name="scontent" id="scontent" cols="30" rows="10"	class="form-control"	onkeypress="onTestChange();" style="width: 100%; height: 200px; overflow: auto; resize: none;">${post.scontent }</textarea> </td>
									</tr>
		
			</table>
		</div>
			</div>
</form>
	

	
	
</c:if><!-- spost끝 -->





<c:if test="${ main.firstword eq 'b' }">
<c:set var="b" value="${ main }"></c:set>
           	<div id="se${b.bno }" class="card shadow mb-4">
			 <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
				<h6 class="m-0 font-weight-bold text-primary">
				<i class="fas fa-user-circle"></i>
				${b.bwriter}<br>${b.benrolldate }</h6>
				<!-- 수정삭제 드롭다운 -->	
             <div class="dropdown no-arrow">
               <button id="cavinetin_${status.index }" class="btn btn-custom btn-sm liketoggle${status.index }" name="like" onclick="sendInsert(${status.index});">
           	   <span>보관</span> <i class="far fa-bookmark"></i></button>
           	   <input type="hidden" id="ucode_${status.index }" value="${sessionScope.ucode }" >
			   <input type="hidden" id="no_${status.index }" value="${b.bno }">
			   <input type="hidden" id="pnum_${status.index }" value="${b.bpnum }" >
			   <input type="hidden" id="open_${status.index }" value="${b.bopen }" >
			 <div id="d5"></div>
		  		<c:if test="${sessionScope.ucode eq b.bucode }">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
						<button id="${b.bno}"   onclick="moveupdateform(this.id); return false;">수정</button>
						<button  >삭제</button>
                    </div>
                    </c:if>
                  </div> <!-- 드롭다운 끝 -->
				</div><!-- card-header py-3 d-flex flex-row align-items-center justify-content-between -->
			<!-- 게시글안쪽 -->	
			<div class="card-body">
			   <b>제목 : ${b.btitle}</b>
			   <hr>
			<div class="btn-group btn-group-toggle"  >
			  <c:if test="${b.bkind eq '요청' }">
				 <label class="btn btn-info">
				    <input type="radio" name="진행" id="요청" value="요청" readonly>요청
				  </label> 
				  <label class="btn btn-secondary">
				    <input type="radio" name="진행" id="진행" value="진행" readonly>진행
				  </label>
				  <label class="btn btn-secondary">
				    <input type="radio" name="피드백" id="피드백" value="피드백" readonly>피드백
				  </label>
				   <label class="btn btn-secondary">
				    <input type="radio" name="완료" id="완료" value="완료" readonly>완료
				  </label>
				   <label class="btn btn-secondary">
				    <input type="radio" name="보류" id="보류" value="보류" readonly>보류
				  </label>
			  </c:if>
			  <c:if test="${b.bkind eq '진행' }">
				 <label class="btn btn-secondary">
				    <input type="radio" name="진행" id="요청" value="요청" readonly>요청
				  </label> 
				  <label class="btn btn-info">
				    <input type="radio" name="진행" id="진행" value="진행" readonly>진행
				  </label>
				  <label class="btn btn-secondary">
				    <input type="radio" name="피드백" id="피드백" value="피드백" readonly>피드백
				  </label>
				   <label class="btn btn-secondary">
				    <input type="radio" name="완료" id="완료" value="완료"readonly>완료
				  </label>
				   <label class="btn btn-secondary">
				    <input type="radio" name="보류" id="보류" value="보류" readonly>보류
				  </label>			
			  </c:if>
			  <c:if test="${b.bkind eq '피드백' }">
				 <label class="btn btn-secondary">
				    <input type="radio" name="진행" id="요청" value="요청" readonly>요청
				  </label> 
				  <label class="btn btn-secondary">
				    <input type="radio" name="진행" id="진행" value="진행" readonly>진행
				  </label>
				  <label class="btn btn-info">
				    <input type="radio" name="피드백" id="피드백" value="피드백" readonly>피드백
				  </label>
				   <label class="btn btn-secondary">
				    <input type="radio" name="완료" id="완료" value="완료" readonly>완료
				  </label>
				   <label class="btn btn-secondary">
				    <input type="radio" name="보류" id="보류" value="보류" readonly>보류
				  </label>				
			  </c:if>
			   <c:if test="${b.bkind eq '완료' }">
				 <label class="btn btn-secondary">
				    <input type="radio" name="진행" id="요청" value="요청" readonly>요청
				  </label> 
				  <label class="btn btn-secondary">
				    <input type="radio" name="진행" id="진행" value="진행" readonly>진행
				  </label>
				  <label class="btn btn-secondary">
				    <input type="radio" name="피드백" id="피드백" value="피드백" readonly>피드백
				  </label>
				   <label class="btn btn-info">
				    <input type="radio" name="완료" id="완료" value="완료" readonly>완료
				  </label>
				   <label class="btn btn-secondary">
				    <input type="radio" name="보류" id="보류" value="보류" readonly>보류
				  </label>			
			  </c:if>
			   <c:if test="${b.bkind eq '보류' }">
				 <label class="btn btn-secondary">
				    <input type="radio" name="진행" id="요청" value="요청" readonly >요청
				  </label> 
				  <label class="btn btn-secondary">
				    <input type="radio" name="진행" id="진행" value="진행" readonly>진행
				  </label>
				  <label class="btn btn-secondary">
				    <input type="radio" name="피드백" id="피드백" value="피드백" readonly>피드백
				  </label>
				   <label class="btn btn-secondary">
				    <input type="radio" name="완료" id="완료" value="완료" readonly>완료
				  </label>
				   <label class="btn btn-info">
				    <input type="radio" name="보류" id="보류" value="보류" readonly>보류
				  </label>			
			  </c:if>
			</div>
			<br><br>
			<div>
			   <i class="fas fa-user-friends"></i> 담당자 :  ${b.bchargename }
			</div>
			<hr>
			<div>
			<table><tr>
				 <td width="20%"><span style="float: left;">
				 	<i class="far fa-calendar-alt"> 시작일 : &nbsp;${b.bstartday }</i></span>
				 	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
	             </td>
				 <td width="20%"><span style="float: center;">
				 	<i class="far fa-calendar-alt"> 마감일 : &nbsp;${b.bendday }</i></span>
	           	 </td>
	         </tr></table>
			</div>
			<hr>
			<div>
			  <table>
			   <c:if test="${! empty b.bcontent }">
				 <tr>
				 <td><b>${b.bcontent}</b></td>
				 </tr>
				</c:if>
		      </table>
			<br>	
			  <table>
				 <c:if test="${! empty b.boriginfile }">
					<tr>
					   <td>
						 <div id="showfile" style="overflow:hidden;"> 
					     <img src="resources/bupfile/${b.brenamefile}" class="rounded" style="width : 220px;height : 150px;">
					     <br>
					     <a href="${ubf }"><i class="far fa-file"></i> :  ${b.boriginfile}</a>
						 </div> 
					   </td>
					 <c:url var="ubf" value="bfdown.do">
					  <c:param name="ofile" value="${b.boriginfile}"/>
					  <c:param name="rfile" value="${b.brenamefile}"/>
					 </c:url> 
					</tr>
			    </c:if>
					<c:if test="${empty b.boriginfile}">
					&nbsp;
					</c:if>
			 </table>
		 </div>
		 <div class="px-3 py-5 bg-gradient-light text-white" style="height: 10px;">
			<input type="text" class="form-control" placeholder="답글을 입력하세요">
	  	 </div>
	 </div><!-- 게시글안쪽  -->			
	</div><!-- card shadow mb-4 -->
	
	
	
	 <div id="up${b.bno }" class="card shadow mb-4">
    		<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
		
		
			<h6 class="m-0 font-weight-bold text-primary">
				수정페이지
			</h6>

			<div class="dropdown no-arrow">

				<button class="btn btn-custom btn-sm"  id="uspost" type="submit" onclick="spostupdate(); return false;">수정하기</button> 
				<button class="btn btn-custom btn-sm"  id="dspost" type="submit" onclick="spostdelete(); return false;">삭제하기</button>
				<button id="${b.bno }" class="btn btn-custom btn-sm"  onclick="moveselectfeed(this.id); return false;" >수정취소</button>
				

			</div>
			<!-- 드롭다운 끝 -->

		</div>
        <div class="card-body">
                     <!-- 게시글안쪽 -->
                  <form action="updatebpost.do" method="post" id="bupdate" enctype="multipart/form-data">
            
            
            		<input type ="hidden" name="bno" value="${b.bno }">
                     <input type="hidden" name="bucode" value="${sessionScope.ucode }">
                     <input type="hidden" name="bwriter" value="${sessionScope.uname }">
                     <input type="hidden" name="bpnum" value="${sessionScope.pnum }">
                   	 <input type="hidden" id="bform" name="bcharge">
                   	 <input type="hidden" name="boriginfile" value="${b.boriginfile }">
                   	 <input type="hidden" name="brenamefile" value="${b.brenamefile }">
                   	 <input type="hidden" name="bopen" value="${b.bopen }">
                  
                               <table  style="text-align: center; width: 100%;">
	                        <tr>
	                           <th style="width: 18%;vertical-align:middle; text-align: center;">제목</th>
	                           <td><input type="text" name="btitle" class="form-control" placeholder="일정 제목을 입력하세요" required="required" value="${b.btitle }"></td>
	                       	</tr>
                       
                           <tr>
                           <th style="width: 18%;vertical-align:middle;  text-align: center;">유형</th>
                              <td style="text-align: left;">
                              
                              <c:if test="${b.bkind eq '요청' }">
                               <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                <label class="btn btn-secondary">
                                  <input type="radio" name="bkind" id="option1" value="요청" checked="checked">요청
                                </label>
                                <label class="btn btn-secondary">
                                  <input type="radio" name="bkind" id="option2" value="진행">진행
                                </label>
                                <label class="btn btn-secondary">
                                  <input type="radio" name="bkind" id="option3" value="피드백">피드백
                                </label>
                                 <label class="btn btn-secondary">
                                  <input type="radio" name="bkind" id="option3" value="완료">완료
                                </label>
                                 <label class="btn btn-secondary">
                                  <input type="radio" name="bkind" id="option3" value="보류">보류
                                </label>
                              </div>
                              </c:if>
                              <c:if test="${b.bkind eq '진행' }">
                               <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                <label class="btn btn-secondary">
                                  <input type="radio" name="bkind" id="option1" value="요청">요청
                                </label>
                                <label class="btn btn-secondary">
                                  <input type="radio" name="bkind" id="option2" value="진행" checked="checked">진행
                                </label>
                                <label class="btn btn-secondary">
                                  <input type="radio" name="bkind" id="option3" value="피드백">피드백
                                </label>
                                 <label class="btn btn-secondary">
                                  <input type="radio" name="bkind" id="option3" value="완료">완료
                                </label>
                                 <label class="btn btn-secondary">
                                  <input type="radio" name="bkind" id="option3" value="보류">보류
                                </label>
                              </div>
                              </c:if>
                              <c:if test="${b.bkind eq '피드백' }">
                               <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                <label class="btn btn-secondary">
                                  <input type="radio" name="bkind" id="option1" value="요청">요청
                                </label>
                                <label class="btn btn-secondary">
                                  <input type="radio" name="bkind" id="option2" value="진행">진행
                                </label>
                                <label class="btn btn-secondary">
                                  <input type="radio" name="bkind" id="option3" value="피드백" checked="checked">피드백
                                </label>
                                 <label class="btn btn-secondary">
                                  <input type="radio" name="bkind" id="option3" value="완료">완료
                                </label>
                                 <label class="btn btn-secondary">
                                  <input type="radio" name="bkind" id="option3" value="보류">보류
                                </label>
                              </div>
                              </c:if>
                              <c:if test="${b.bkind eq '완료' }">
                               <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                <label class="btn btn-secondary">
                                  <input type="radio" name="bkind" id="option1" value="요청">요청
                                </label>
                                <label class="btn btn-secondary">
                                  <input type="radio" name="bkind" id="option2" value="진행">진행
                                </label>
                                <label class="btn btn-secondary">
                                  <input type="radio" name="bkind" id="option3" value="피드백">피드백
                                </label>
                                 <label class="btn btn-secondary">
                                  <input type="radio" name="bkind" id="option3" value="완료" checked="checked">완료
                                </label>
                                 <label class="btn btn-secondary">
                                  <input type="radio" name="bkind" id="option3" value="보류">보류
                                </label>
                              </div>
                              </c:if>
                              <c:if test="${b.bkind eq '보류' }">
                               <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                <label class="btn btn-secondary">
                                  <input type="radio" name="bkind" id="option1" value="요청">요청
                                </label>
                                <label class="btn btn-secondary">
                                  <input type="radio" name="bkind" id="option2" value="진행">진행
                                </label>
                                <label class="btn btn-secondary">
                                  <input type="radio" name="bkind" id="option3" value="피드백">피드백
                                </label>
                                 <label class="btn btn-secondary">
                                  <input type="radio" name="bkind" id="option3" value="완료">완료
                                </label>
                                 <label class="btn btn-secondary">
                                  <input type="radio" name="bkind" id="option3" value="보류" checked="checked">보류
                                </label>
                              </div>
                              </c:if>
                              
                              
                              </td>
                           </tr>
                     
                           <tr>
                         	  <th style="width: 18%;vertical-align:middle; text-align: center;" >담당자</th>
                         	  <td style="vertical-align:middle; text-align: left;">
                         	  	기존 담당자  : &nbsp; ${ b.bchargename }
                         	  	<br>
                         	  	<div style="padding-top: 10px; padding-bottom: 0px; margin-bottom: 0px;">
										<nav class="navbar navbar-expand navbar-light bg-light mb-4">



											<div class="dropdown">
												<button class="btn btn-secondary dropdown-toggle"
													type="button" id="dropdownMenu2" data-toggle="dropdown"
													aria-haspopup="true" aria-expanded="false">담당자 수정
												</button>
											<div id="selected"></div>


												<div class="dropdown-menu" aria-labelledby="dropdownMenu2">

													<c:forEach var="pm" items="${sessionScope.pmlist}"
														varStatus="status">
														<button class="dropdown-item" type="button"
															onclick="addbcharge${status.index}();"
															value="${pm.ucode }">${pm.uname }</button>
														<input type="checkbox" id="user${status.index }"
															name="bcharge" style="display: none">
														<input type="checkbox" id="name${status.index }"
															name="bchargename" style="display: none">
													</c:forEach>
												</div>
											</div>
									
										</nav>
									</div>
                         	  </td>
                         	</tr>
  
                           
                           <tr>
                           <th style="width: 18%;vertical-align:middle; text-align: center;" >시작날짜</th>
                              <td><input type="date" class="form-control" name="bstartday" value="${b.bstartday }"></td>

                           </tr>
                           <tr>
                            <th style="width: 18%;vertical-align:middle; text-align: center;" >끝날짜</th>
                              <td><input type="date" class="form-control" name="bendday" value="${b.bendday }"></td>
                           
                           </tr>

                           <tr>
                           <th style="width: 18%;vertical-align:middle; text-align: center;" >내용</th>
                              <td>
                              <textarea cols="50" rows="6" class="w-100 form-control" name="bcontent">${b.bcontent }</textarea>
                              </td>
                           </tr>

                           <tr>
                           <th style="width: 18%;vertical-align:middle; text-align: center;" >파일</th>
                              <td style="vertical-align:middle; text-align: left;">
                               <c:if test="${!empty b.boriginfile }">
                             	${b.boriginfile }
                             	&nbsp;&nbsp;&nbsp;
                             	<input type="checkbox" name="deleteFlag" value="yes">삭제
                             	<br><br>
                             	<input type="file" name="upfile">
                          	  </c:if>
                          	  <c:if test="${empty b.boriginfile }">                             	
                             	<input  type="file" name="upfile">
                          	  </c:if>
                          	
                             </td>
                           </tr>

                            <tr>
                              <td colspan="2">
                                    <button type="submit" class="btn btn-sm btn-info" value="수정완료 ">수정완료</button>
    									&nbsp;&nbsp;
                                    <button type="reset" class="btn btn-sm btn-danger" value="">원래대로</button>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<c:url var="bpostone" value="bpostOne.do">
					<c:param name="bno" value="${b.bno }" />
					<c:param name="ucode" value="${sessionScope.ucode }" />
					<c:param name="pnum" value="${sessionScope.pnum }" />
				</c:url>
				<a class="btn  btn-sm  btn-light" href="${bpostone }">수정취소</a>
		
                              </td>
                           </tr>
                 </table>
                     </form>

                  </div>
               </div>
	
	
	
	
	
</c:if><!-- bpost끝 -->


<!--  -->


<!-- cpost 시작 -->
<c:if test="${ main.firstword eq 'c' }">
<c:set var="c" value="${ main }"></c:set>
<div class="card shadow mb-4">
		<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
			<h6 class="m-0 font-weight-bold text-primary">
				<i class="fas fa-user-circle"></i> 
				${c.cwriter}<br> 
				${c.cenrolldate}
			</h6>

			<div class="dropdown no-arrow">

				<!-- 보관함 담기여부 -->
				
				<button id="cavinetin_${status.index }" class="btn btn-custom btn-sm liketoggle${status.index }" name="like" onclick="sendInsert(${status.index});">
           	   <span>보관</span> <i class="far fa-bookmark"></i></button>
           	   <input type="hidden" id="ucode_${status.index }" value="${sessionScope.ucode }" >
			   <input type="hidden" id="no_${status.index }" value="${c.cno }">
			   <input type="hidden" id="pnum_${status.index }" value="${c.cpnum }" >
			   <input type="hidden" id="open_${status.index }" value="${c.copen }" >
				
				<!-- 드롭다운 -->
				<a class="dropdown-toggle" href="#" role="button"
					id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i
					class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
				</a>
				<div
					class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
					<div class="dropdown-header">메뉴:</div>
					<a name="mine" class="dropdown-item" onclick="toEdit()" >수정</a> 
					<c:url var="delcp" value="delcp.do">
                      	<c:param name="cno" value="${c.cno }"/>
                     </c:url> 
                     <a name="mine" class="dropdown-item" href="${delcp }">삭제</a>
				</div>

			</div>
			<!-- 드롭다운 끝 -->

		</div>
		<div id="cpEdit" style="display:none"> 
		 <c:import url="/WEB-INF/views/suugit/edit.jsp"></c:import>
		</div>
		<div id="cpView">
		<div class="card-body">
			<!-- 게시글안쪽 -->
			<h6>${c.ctitle}<h6>
			<hr>
			<table>
				<tr>
					<td>${c.ccontent}</td>
					
				</tr>
				<tr>
				
				<td><br><hr></td>
				</tr>
				<tr id="preview">
				
				<c:if test="${!empty c.ofile1 }">
					<td class="rounded" style="width:33%">
					<c:set var="fileName" value="${fn:split(c.ofile1, '.')}" />
					<c:set var="fileType" value="${fileName[fn:length(fileName)-1]} "/>
						<c:if test="${fn:contains(fileType,'jpg') || fn:contains(fileType,'png') || fn:contains(fileType,'svg') || fn:contains(fileType,'gif')}">	
								<img src="resources/bupfile/${c.rfile1}" style="max-width:150px">
						</c:if>
						<c:if test="${not fn:contains(fileType,'jpg') && not fn:contains(fileType,'png') && not fn:contains(fileType,'svg') && not fn:contains(fileType,'gif')}">	
								<img src="resources/maincss/img/suugit/file_altimg.svg" style="max-width:150px">
							</c:if>
							<br>
					<label class="ml-4 text-center">${c.ofile1} </label>
					</td>
				</c:if>
				<c:if test="${!empty c.ofile2 }">
					<td class="rounded" style="width:33%">
					<c:set var="fileName" value="${fn:split(c.ofile2, '.')}" />
					<c:set var="fileType" value="${fileName[fn:length(fileName)-1]} "/>
						<c:if test="${fn:contains(fileType,'jpg') || fn:contains(fileType,'png') || fn:contains(fileType,'svg') || fn:contains(fileType,'gif')}">	
								<img src="resources/bupfile/${c.rfile2}" style="max-width:150px">
						</c:if>
						<c:if test="${not fn:contains(fileType,'jpg') && not fn:contains(fileType,'png') && not fn:contains(fileType,'svg') && not fn:contains(fileType,'gif')}">	
								<img src="resources/maincss/img/suugit/file_altimg.svg" style="max-width:150px">
							</c:if>
							<br>
					<label class="ml-4 text-center">${c.ofile2} </label>
					</td>
				</c:if>
				<c:if test="${!empty c.ofile3 }">
					<td class="rounded" style="width:33%">
					<c:set var="fileName" value="${fn:split(c.ofile3, '.')}" />
					<c:set var="fileType" value="${fileName[fn:length(fileName)-1]} "/>
						<c:if test="${fn:contains(fileType,'jpg') || fn:contains(fileType,'png') || fn:contains(fileType,'svg') || fn:contains(fileType,'gif')}">	
								<img src="resources/bupfile/${c.rfile3}" style="max-width:150px">
						</c:if>
						<c:if test="${not fn:contains(fileType,'jpg') && not fn:contains(fileType,'png') && not fn:contains(fileType,'svg') && not fn:contains(fileType,'gif')}">	
								<img src="resources/maincss/img/suugit/file_altimg.svg" style="max-width:150px">
							</c:if>
							<br>
					<label class="ml-4 text-center">${c.ofile3} </label>
					</td>
				</c:if>
				</tr>
			</table>

		</div>
		<div class="px-3 py-5 bg-gradient-light text-white"
			style="height: 10px;">
			<input type="text" class="form-control" placeholder="답글을 입력하세요">
		</div>
	</div>
	</div>

	<script src="resources/js/cpost.js"></script>
   <script>
   $(document).ready(function (e){
	   if('${sessionScope.ucode}' === '${c.cucode}'){
			$('a[name=mine]').addClass( 'active');
	   }else{
		   $('a[name=mine]').addClass( 'disabled');
	   }
   });
   function toEdit(){
	   alert('hi');
	   $("#cpView").hide();
	   $("#cpEdit").show();
   }   
   </script>
</c:if>
</c:forEach>   
</body>

