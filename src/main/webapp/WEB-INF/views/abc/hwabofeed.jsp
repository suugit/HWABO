<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<!DOCTYPE html>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ab3b0466fa883da1d7216010325a5bcc&libraries=services"></script>

<script type="text/javascript" src="resources/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#spostupdate").css("display", "none" );
		$("#changeselect").css("display", "none" );
	});	//document.ready;
	
	function changeform1(){
		$("#spostview").css("display", "none" );
		$("#spostupdate").css("display", "block" );
		$("#changeupdate").css("display", "none" );
		$("#changeselect").css("display", "block" );
	};

	function changeform2(){
		$("#spostview").css("display", "block" );
		$("#spostupdate").css("display", "none" );
		$("#changeupdate").css("display", "block" );
		$("#changeselect").css("display", "none" );
	};
	
	function mapchange (index){
		alert("ddddd" + index);
	}
	
</script>
<body>
<c:forEach var="main" items="${ requestScope.list }"  varStatus="status">  

<%-- ${ status.count } --%>
<c:if test="${ main.firstword eq 's' }">
<c:set var="post" value="${ main }"></c:set>
<button id="changeupdate" onclick="javascript: changeform1();">수 &nbsp;정</button>
<button id="changeselect" onclick="javascript: changeform2();">수 정 취 소</button>

	<div class="card shadow mb-4">
		<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
			<h6 class="m-0 font-weight-bold text-primary">
				<i class="fas fa-user-circle"></i> 
				${post.swriter}<br> ${ status.count }
				<fmt:formatDate value="${post.senrolldate}" pattern="yyyy-MM-dd HH시 mm분 E요일"/>
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
					<a class="dropdown-item" href="#">수정</a> <a class="dropdown-item"
						href="#">삭제</a>
				</div>
			</div>
			<!-- 드롭다운 끝 -->
		</div>
		<div class="card-body" style="margin: 0px;">
			<!-- 게시글안쪽 -->
			<h6>${post.stitle }</h6>
			<hr>
			<table style="width: 100%;">
				<tr>
					<td width="50%">시 작 날 짜</td><td width="50%">끝 날 짜</td>
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
					<td colspan="2">장 소</td>
				</tr>
				<tr>
					<td colspan="2">
					${post.splace }
					<div id="map1_${status.index }"  style="width:400px; height:200px; margin-top:5px;" ></div> <br>
<script type="text/javascript" src="resources/js/jquery-3.5.1.min.js"></script>
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

console.log(map1_${ status.index });
</script>
					</td>
				</tr>
				</c:if>
			
				<tr>
					<td colspan="2">&nbsp;</td>
				</tr>
				<tr>
					<td colspan="2">메  모</td>
				</tr>
				<tr>
					<td colspan="2">${post.scontent }</td>
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
		</div>
	</div>

<!-- spost수정 폼시작 -->
<div id="spostupdate"><c:import url="/WEB-INF/views/abc/updateSpost.jsp"></c:import></div>
<!-- spost수정 폼끝 -->
<script type="text/javascript">
	$(function(){
		$("#spostupdate").css("display", "none" );
		$("#changeselect").css("display", "none" );
	});	//document.ready;
	function changeform1(){
		$("#spostview").css("display", "none" );
		$("#spostupdate").css("display", "block" );
		$("#changeupdate").css("display", "none" );
		$("#changeselect").css("display", "block" );
	};
	function changeform2(){
		$("#spostview").css("display", "block" );
		$("#spostupdate").css("display", "none" );
		$("#changeupdate").css("display", "block" );
		$("#changeselect").css("display", "none" );
	};
</script>
</c:if>
<!-- spost끝 -->
<c:if test="${ main.firstword eq 'b' }">
<c:set var="b" value="${ main }"></c:set>
           	<div class="card shadow mb-4">
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
			   <input type="text" id="open_${status.index }" value="${b.bopen }" >
			 <div id="d5"></div>
		  		<c:if test="${sessionScope.ucode eq b.bucode }">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <c:url var="bup" value="buppage.do">
                      	<c:param name="bno" value="${b.bno }"/>
                      </c:url> 
                     <a class="dropdown-item" href="${bup }">수정</a>
                       <c:url var="bdel" value="deletebpost.do">
                      	<c:param name="bno" value="${b.bno }"/>
                    	<c:param name="brenamefile" value="${b.brenamefile }"/>
                      </c:url>
                      <a class="dropdown-item" href="${bdel }">삭제</a>
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
				  <label class="btn btn-secondary"">
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
				  <label class="btn btn-secondary"">
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
				  <label class="btn btn-secondary"">
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
				 <td><b><big>${b.bcontent}</big></b></td>
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
			 </table><hr>
			 <table style="width: 100%;">
				<tr>
					<td style="width: 20%;"><a href="#" class="btn btn-primary btn-icon-split btn-sm"> 
					<span class="icon text-white-50"> <i class="far fa-heart"></i>
					</span> <span class="text">좋아요 </span>
					</a>
				 </td>
				 <td style="width: 20%;"></td>
				 <td style="width: 20%;"></td>
				 <td style="width: 20%;"></td>
				 <td style="width: 20%; float: right;"></td>
				</tr>
			</table>
		 </div>
		 <div class="px-3 py-5 bg-gradient-light text-white" style="height: 10px;">
			<input type="text" class="form-control" placeholder="답글을 입력하세요">
	  	 </div>
	 </div><!-- 게시글안쪽  -->			
	</div><!-- card shadow mb-4 -->
</c:if>
<!-- bpost끝 -->
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


			<hr>
			<table style="width: 100%;">
				<tr>
					<td style="width: 20%;">
					<a href="#" class="btn btn-primary btn-icon-split btn-sm"> 
						<span class="icon text-white-50"> <i class="far fa-heart"></i></span> 
						<span class="text">좋아요</span>
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
