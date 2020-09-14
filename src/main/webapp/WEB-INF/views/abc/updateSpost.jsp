<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HWABO</title>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ab3b0466fa883da1d7216010325a5bcc&libraries=services"></script>
</head>
<body>

<script type="text/javascript">
$(function(){
	$("#supdate").on("click", function(){
		$.ajax({
			url: "supdate.do",
			type: "post", //json 을 받을 때는 post 로 지정해야함
			dataType: "json", // 받는 값의 종류 지정 ( 기본이 text )
			success: function(jsonData){	// 받는다고 했으니까 매개변수 있어야함
				// json 한개를 받았을 때는 바로 출력 처리할 수 있음
				console.log("jsonData : "+ jsonData); //저번에 확인한 바로는 Object 였음
				
				
				$("#d2").html("번호 : "+jsonData.no+"<br>제목 : "+jsonData.title+"<br>작성자 : "+decodeURIComponent(jsonData.writer)+
						"<br>내용 : "+decodeURIComponent(jsonData.content.replace(/\+/gi," "))+"<br><br>");
				
				
			},
			error: function(request, status, errorData){ //에러는 위에서 복붙
				console.log("error code : " + request.status + "\nMessage : "+ request.responseText + "\nError : " + errorData);
			}
		}); //ajax
	});  //supdate click
	
	$('#contentText').on("propertychange change keyup paste input", function() {
		var content = $(this).val();
		$('#counter').val(200 - content.length);

		if (content.length > 200) {
			$(this).val(
					$(this).val().substring(0, 200));
		}
	});

	$("#sample5_address").on("click", function(){
	if($(this).val().length == 0 ){
		sample5_execDaumPostcode()
	}
});		
	
	var str = $('#contentText').val();

	str = str.split('<br>').join("\r\n");

	$('#contentText').val(str);
	
	$("#sample5_address").on("click", function(){
		if($(this).val().length == 0 ){
			sample5_execDaumPostcode()
		}
	});
	
});    //document.ready 끝


	function daycheck() {

		var startday = document.spostInsert.beforesstartday.value.replace("T",
				" ");
		var endday = document.spostInsert.beforesendday.value.replace("T", " ");

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
</script>
	<div class="card shadow mb-4">
		<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
			<h6 class="m-0 font-weight-bold text-primary">
				<i class="fas fa-user-circle"></i> 
				수정용 ! <br>
				<input type="hidden" name=sno value="${spost.sno }">
				${spost.swriter}<br> 
				<fmt:formatDate value="${spost.senrolldate}" pattern="yyyy-MM-dd HH시 mm분 E요일"/>
				
			</h6>

			<div class="dropdown no-arrow">

				<!-- 보관함 담기여부 -->
				<button id="cabinetshow" class="btn btn-custom btn-sm liketoggle" name="like">
					<span>보관</span> <i class="far fa-bookmark"></i>
				</button>
				
				<!-- 드롭다운 -->
				<a class="dropdown-toggle" href="#" role="button"
					id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i
					class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
				</a>
				<div
					class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
					aria-labelledby="dropdownMenuLink">
					<div class="dropdown-header">메뉴:</div>
					<a class="dropdown-item" id="supdate">수정</a> <a class="dropdown-item"
						href="#">삭제</a>
				</div>

			</div>
			<!-- 드롭다운 끝 -->

		</div>
		<div class="card-body">
			<!-- 게시글안쪽 -->
			<c><input type="text" class="form-control" value="${spost.stitle }"></c>
			<hr>
			<table>
				<tr>
					<td>시 작 날 짜</td><td>끝 날 짜</td>
				</tr>
				<tr>
					<td width="20%">
					<input type="datetime-local" class="form-control" name="beforesstartday" id="beforesstartday" 
					required="required"  value="${startday }"	></td>

					<td width="20%">
					<input type="datetime-local" class="form-control" name="beforesendday"  id="beforesendday" 
					required="required"  value="${endday }"	></td>
				</tr>
				<c:if test="${ empty spost.splace }">
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>장 소</td>
				</tr>
				<tr>
					<td>장 소 미 정</td>
				</tr>
				</c:if>
				
				<c:if test="${ !empty spost.splace }">
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>장 소</td>
					<td>
							<input type="text" id="sample5_address" placeholder="장소를 입력하세요" class="form-control" name="splace" >
<input type="button" onclick="sample5_execDaumPostcode()" value="장소변경"  class="form-control"><br>
	</td>
				</tr>
				<tr>
					<td>
					<div id="map1" style="width:400px; height:200px; margin-top:5px;"></div> <br>


<script>
var mapContainer = document.getElementById('map1'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 4 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

var spostplace ="${spost.splace}";
// 주소로 좌표를 검색합니다
geocoder.addressSearch(spostplace, function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:130px;text-align:center;padding:6px 0; overflow: auto;">일정장소</div>'
        });
        infowindow.open(map, marker); 

        //지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    
</script>

<div id="map" style="width:100%;height:150px;margin-top:10px;display:none"></div>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
        mapOption = {
            center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
            level: 4 // 지도의 확대 레벨
        };

    
    //지도를 미리 생성
    var map = new daum.maps.Map(mapContainer, mapOption);
    //주소-좌표 변환 객체를 생성
    var geocoder = new daum.maps.services.Geocoder();
    //마커를 미리 생성
    var marker = new daum.maps.Marker({
        position: new daum.maps.LatLng(37.537187, 127.005476),
        map: map
    });


    function sample5_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = data.address; // 최종 주소 변수

                // 주소 정보를 해당 필드에 넣는다.
                document.getElementById("sample5_address").value = addr;
                // 주소로 상세 정보를 검색
                geocoder.addressSearch(data.address, function(results, status) {
                    // 정상적으로 검색이 완료됐으면
                    if (status === daum.maps.services.Status.OK) {

                        var result = results[0]; //첫번째 결과의 값을 활용

                        // 해당 주소에 대한 좌표를 받아서
                        var coords = new daum.maps.LatLng(result.y, result.x);
                        // 지도를 보여준다.
                        mapContainer.style.display = "block";
                        map.relayout();
                        // 지도 중심을 변경한다.
                        map.setCenter(coords);
                        // 마커를 결과값으로 받은 위치로 옮긴다.
                        marker.setPosition(coords)
                    }
                });
            }
        }).open();
    }
</script>
					</td>
				</tr>
				</c:if>
				<tr>
					<td>&nbsp;</td>
				</tr>
				
				<tr>
					<td>알 림</td>
				</tr>
				<tr>
					<td>
					<c:if test="${spost.salarm eq 'no' }">알림 없음</c:if>
					<c:if test="${spost.salarm eq '10mm' }">10분 전 알림</c:if>
					<c:if test="${spost.salarm eq '30mm' }">30분 전 알림</c:if>
					<c:if test="${spost.salarm eq '1HH' }">1시간 전 알림</c:if>
					<c:if test="${spost.salarm eq '2HH' }">2시간 전 알림</c:if>
					<c:if test="${spost.salarm eq '3HH' }">3시간 전 알림</c:if>
					<c:if test="${spost.salarm eq '1day' }">1일 전 알림</c:if>
					<c:if test="${spost.salarm eq '2day'}">2일 전 알림</c:if>
					<c:if test="${spost.salarm eq '7day' }">7일 전 알림</c:if>
					<select name="salarm" class="form-control" >
							<option value="no">--- 알림 없음 ---</option>
							<option value="10mm">10분 전 알림</option>
							<option value="30mm">30분 전 알림</option>
							<option value="1HH">1시간 전 알림</option>
							<option value="2HH">2시간 전 알림</option>
							<option value="3HH">3시간 전 알림</option>
							<option value="1day">1일 전 알림</option>
							<option value="2day">2일 전 알림</option>
							<option value="7day">7일 전 알림</option>
					</select>
					
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>메  모</td>
				</tr>
				<tr>
				<td colspan="5"><span style="float: left;"><i class="far fa-keyboard"></i>&nbsp;메 모</span>
										<span style="float: left;">&nbsp;&nbsp;&nbsp;( 남은글자수 : <input size="2px;"  type="text"
												readonly value="200" name="counter" id="counter"
												style="border: none;">)</span>
<textarea name="scontent" id="contentText" cols="30" rows="10"	class="form-control"	onkeypress="onTestChange();" style="width: 100%; height: 200px; overflow: auto; resize: none;">${spost.scontent }</textarea> </td>
									</tr>
		
			</table>


			<hr>
			<table style="width: 100%;">
				<tr>
					<td style="width: 20%;">
					<a href="#" class="btn btn-primary btn-icon-split btn-sm"> 
						<span class="icon text-white-50"> <i class="far fa-heart"></i></span>
						<button onclick="javascript: location.href='#'">
						<span class="text">좋아요</span>
						</button> 
					</a>
					</td>
					<td style="width: 20%;"></td>
					<td style="width: 20%;"></td>
					<td style="width: 20%;"></td>
					<td style="width: 20%; float: right;"></td>
				</tr>
			</table>
		</div>
		<div class="px-3 py-5 bg-gradient-light text-white"
			style="height: 10px;">
			<form action="#" method="post">
			<input type="text" class="form-control" placeholder="답글을 입력하세요">
			</form>
			댓글이 있다면 c:if 로 한 줄마다 br 태그해서 보여주기 본인의 댓글이라면 수정, 삭제버튼 추가
			
		</div>
	</div>
</body>
</html>