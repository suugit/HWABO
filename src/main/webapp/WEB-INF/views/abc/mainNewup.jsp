<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<c:set var="ran"><%= java.lang.Math.round(java.lang.Math.random() * 1234567) %></c:set>

 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

		<div class="card-body" style="margin: 0px;">
			<!-- 게시글안쪽 -->
			<h6><strong>제목</strong> : ${post.stitle }</h6>
			<hr>
			<table style="width: 100%;">
				<tr>
					<th width="50%">시 작 날 짜</th><th width="50%">끝 날 짜</th>
				</tr>
				<tr>
				<c:set var="start1" value="${post.stringstart }"/>
				<c:set var="start2" value="${fn:replace(start1, 'T', '  ')}" />
				<c:set var="end1" value="${post.stringend }"/>
				<c:set var="end2" value="${fn:replace(end1, 'T', '  ')}" />
					<td><c:out value="${ start2}" /></td>
					<td><c:out value="${ end2}" /></td>
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

$(function(){
	//수정폼에 spost내용값 읽어와서 (200 - 입력된 값)를 글자수에 적용
	var content = $('#scontent_${status.index}').val();
	$('#counter_${status.index}').val(200-content.length);
	var str = $('#scontent_${status.index}').val();
	str = str.split('<br>').join("\r\n");
	$('#scontent_${status.index}').val(str);
	
});

</script>
				</td>
			</tr>
			
			</c:if>
			<c:if test="${ !empty post.scontent }">	
			<tr><td colspan="2">&nbsp;</td></tr>		
					<tr><th colspan="2">메  모</th></tr>
					<tr><td colspan="2">${post.scontent }</td></tr>
			</c:if>
		</table>
		<hr>
	</div>


</body>
</html>