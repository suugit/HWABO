<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page isELIgnored="false" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

					<!-- 게시글시작 -->
					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<h1>게시글 제목</h1>
						</div>
						<div class="card-body">
							<!-- 게시글안쪽 -->
							테이블 넣을 공간
							<table>

							</table>
							<hr>
							<table style="width: 100%;">
								<tr>
									<td style="width: 20%;"><a href="#"
										class="btn btn-primary btn-icon-split btn-sm"> <span
											class="icon text-white-50"> <i class="far fa-heart"></i>
										</span> <span class="text">좋아요 0</span>
									</a></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%;"></td>
									<td style="width: 20%; float: right;"></td>
								</tr>
							</table>
						</div>
						<div class="px-3 py-5 bg-gradient-light text-white"
							style="height: 10px;">
							<input type="text" class="form-control" placeholder="답글을 입력하세요">
						</div>
					</div>
					<!-- 게시글끝 -->

<h1>Spost insert 성공시 내용 출력</h1>
<br><br><br>
<c:if test="${ ! empty spost }">
${ spost.sno } <br>
${ spost.stitle }<br>
${ spost.swriter } <br>
<fmt:formatDate value="${spost.sstartday}" pattern="yyyy-MM-dd HH시 mm분 E"/><br>
<fmt:formatDate value="${spost.sendday}" pattern="yyyy-MM-dd HH시 mm분 E"/><br>

<div id="map" style="width:100%; height:50%; margin-top:10px;"></div> <br>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ab3b0466fa883da1d7216010325a5bcc&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        draggable: false, //지도 이동 금지
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
            content: '<div style="width:150px;text-align:center;padding:6px 0;">일정 장소</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    
</script>
${ spost.salarm } <br>
${ spost.scontent} <br>
<fmt:formatDate value="${spost.senrolldate}" pattern="yyyy-MM-dd HH시 mm분 E"/><br>
${ spost.sopen } <br>
${ spost.slove } <br>

</c:if>
</body>
</html>