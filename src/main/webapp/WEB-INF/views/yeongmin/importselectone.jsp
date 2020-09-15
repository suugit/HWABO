<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HWABO</title>
</head>
<body>
	<div class="card shadow mb-4">
		<div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
			<h6 class="m-0 font-weight-bold text-primary">
				<i class="fas fa-user-circle"></i> 
				${ vpost.vwriter }<br> 
			<fmt:formatDate value="${ vpost.venrolldate }" pattern="yyyy-MM-dd HH시mm분" />		
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
					<a class="dropdown-item" href="vpostupdate.do?vno='v2'">수정</a> <a class="dropdown-item"
						href="vpostdelete.do">삭제</a>
				</div>

			</div>
			<!-- 드롭다운 끝 -->

		</div>
		<div class="card-body">
			<!-- 게시글안쪽 -->
			<c>글제목 : ${ vpost.vtitle }</c>
			<hr>
			<table>
				<tr>
					<td>내용 : ${vpost.vcontent }</td>
					
				</tr>
			</table>

			<table>
				<!--  member 의 아이디를 받아서 게시글에 투표하기 버튼을줌 -->
				<!--  만일 투표를 햇다면 투표취소버튼이 생김 -->
				<%-- <c:if test="${ empty vpost.votecheck }">
					 <button onclick="javascript:location.href='voteinsert.do'">투표하기</button>
				</c:if>
				<c:if test="${ !empty vpost.votecheck }">
					 <button onclick="javascript:location.href='voteupdate.do'">투표취소</button>
				</c:if> --%>
				<tr>
				<td>
				 <button onclick="javascript:location.href='voteinsert.do'">투표하기</button>
				</td>
				</tr>
			</table>

			
		</div>
		
	</div>
</body>
</html>