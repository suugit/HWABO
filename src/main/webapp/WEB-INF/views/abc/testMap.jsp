<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ab3b0466fa883da1d7216010325a5bcc&libraries=services"></script>
</head>
<body>
<c:forEach var="i"  items="${list }" varStatus="status">
<script type="text/javascript"	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
		$("#sample5_address1").on("click", function(){
		if($(this).val().length == 0 ){
			sample5_execDaumPostcode()
		}
	});		
});//document.ready 끝
</script>

<input type="text" id="sample_address3" placeholder="장소를 입력하세요" class="form-control" id ="splace" name="splace"  value="${spost.splace }">
						<input type="button" onclick="sample5_execDaumPostcode2();" value="장소검색"  class="form-control"><br>
						<div id="map3"  class="map" style="width:100%;height:150px;margin-top:10px;display:none"></div>

<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    var mapContainer3 = document.getElementById('map3'), // 지도를 표시할 div
        mapOption3 = {
            center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
            level: 4 // 지도의 확대 레벨
        };

    
    //지도를 미리 생성
    var map3 = new daum.maps.Map(mapContainer3, mapOption3);
    //주소-좌표 변환 객체를 생성
    var geocoder3 = new daum.maps.services.Geocoder();
    //마커를 미리 생성
    var marker3 = new daum.maps.Marker({
        position: new daum.maps.LatLng(37.537187, 127.005476),
        map: map3
    });


    function sample5_execDaumPostcode2() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr3 = data.address; // 최종 주소 변수

                // 주소 정보를 해당 필드에 넣는다.
                document.getElementById("sample_address3").value = addr3;
                // 주소로 상세 정보를 검색
                geocoder3.addressSearch(data.address, function(results, status) {
                    // 정상적으로 검색이 완료됐으면
                    if (status === daum.maps.services.Status.OK) {

                        var result3 = results[0]; //첫번째 결과의 값을 활용

                        // 해당 주소에 대한 좌표를 받아서
                        var coords3 = new daum.maps.LatLng(result3.y, result3.x);
                        // 지도를 보여준다.
                        mapContainer3.style.display = "block";
                        map3.relayout();
                        // 지도 중심을 변경한다.
                        map3.setCenter(coords3);
                        // 마커를 결과값으로 받은 위치로 옮긴다.
                        marker3.setPosition(coords3)
                    }
                });
            }
        }).open();
    }
</script>
</c:forEach> 
</body>
</html>