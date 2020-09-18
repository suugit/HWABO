<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page
	import="board.model.vo.Board, java.util.ArrayList, java.sql.Date"%>
<c:set var="currentPage" value="${ requestScope.currentPage }" />
<%
	ArrayList<Board> list = (ArrayList<Board>) request.getAttribute("list"); //object라 형변환 
	int listCount = ((Integer) request.getAttribute("listCount")).intValue(); //객체를 int데이터로 바꾸는 메소드 그대신 request에서 getA 한 정보는 
	int startPage = ((Integer) request.getAttribute("startPage")).intValue();
	int endPage = ((Integer) request.getAttribute("endPage")).intValue();
	int maxPage = ((Integer) request.getAttribute("maxPage")).intValue();
	int currentPage = ((Integer) request.getAttribute("currentPage")).intValue();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>testm</title>
<script type="text/javascript">
	function showWriteForm() {
		location.href = "/testm/views/board/boardWriterForm.jsp";
	}
</script>
</head>
<body>
${ sessionScope }
	<hr>
	<c:import url="../common/header.jsp"></c:import>
	<hr>
	<h2 align="center">
		게시글 목록 : 총
		<%=listCount%>
		개
	</h2>
	<!-- 게시글 쓰기(등록)은 로그인한 회원만 가능함 -->
	<c:if test="${ !empty loginMember }">
	<!-- include또쓰면 중복 header.jsp가 가지고 있는 loginMEmber 세션써도된다 -->
	<div style="align: center; text-align: center">
		<button onclick="showWriteForm()">글쓰기</button>
		<!-- 함수명 호출 -->
	</div>
	</c:if>
	<br>
	<table align="center" border="1" cellspacing="0" width="700">
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>날짜</th>
			<th>조회수</th>
			<th>첨부파일</th>
		</tr>
		<c:forEach items="${ requestScope.list }" var="b" >
		<tr>
			<td align="center">${ b.boardNum }</td>
			<td>
				<!-- 댓글일때는 제목을 들여쓰기함 --> 
				<c:if test="${ b.boardLevel eq 1 }">
				&nbsp; &nbsp; ▶ 
				</c:if>
				<c:if test="${ b.boardLevel eq 2 }">
				&nbsp;&nbsp; &nbsp; &nbsp; ▶▶ <!-- 비공개댓글 원글 댓글 일치시에만 어쩌구 조건 이런식인데 게시글 로그인한 사용자만 상세보기 가능하게 설정해보기 = 제목클릭가능여부 -->
				</c:if>
				<c:if test="${ !empty sessionScope.loginMember }">
				<!-- header가가져옴! -->
				<a href="/testm/bdetail?bnum=${ b.boardNum }&page=${ currentPage }">
				${ b.boardTitle }
				</a>
				</c:if>
				<c:if test="${ empty sessionScope.loginMember }">
				${ b.boardTitle } 
				</c:if>
			</td>
			<td align="center">${ b.boardWriter }</td>
			<td align="center">${ b.boardDate }</td>
			<td align="center">${ b.boardReadCount }</td>
			<td align="center">
				<!-- 첨부파일있음o없음x처럼 함 --> 
				<c:if test="${ !empty b.boardOriginalFileName }">
				◎ 
				</c:if>
				<c:if test="${ empty b.boardOriginalFileName }">
				&nbsp; 
				</c:if>
			</td>
		</tr>
		</c:forEach>
	</table>
	<br>
	<!-- 페이징처리 -->
	<div style="text-align: center;">
		<c:if test="${ currentPage<= 1 }">
		<!-- 현재가 1페이지면 동작안함 -->
		[맨처음]&nbsp;
		</c:if>
		<c:if test="${ currentPage> 1 }">
		<a href="/testm/blist?page=1">[맨처음]</a>
		</c:if>		
		
		<!-- 이전 그룹으로 이동 처리 -->
		<c:if test="${ currentPage-10 < startPage and currentPage - 10 > 1 }">
		<a href="/testm/blist?page=${ currentPage-10 }">[이전그룹]</a>
		</c:if>
		<c:if test="${ currentPage-10 >= startPage or currentPage - 10 <= 1 }">
		[이전그룹]&nbsp;
		</c:if>
		
		<!--  현재 페이지가 속한 페이지그룹의 숫자 출력 처리 -->
		<% for(int p = startPage; p <= endPage; p++){
			if(p == currentPage){ %>
		<font color="red" size="4"><b>[<%= p %>]
		</b></font>
		<% }else{ %>
		<a href="/testm/blist?page=<%= p %>"><%= p %></a>
		<% }} %>
		<!-- 다음 그룹으로 이동 처리  -->
		<% if((currentPage + 10) > endPage && (currentPage + 10) < maxPage){ %>
		<a href="/testm/blist?page=${ requestScope.endPage + 10 }"></a>
		<% }else{ %>
		[다음그룹]&nbsp;
		<% }%>
		<!-- 맨끝페이지 -->
		<% if(currentPage >= maxPage){  %><!--현재가 1페이지면 동작안함 -->
		[맨끝]&nbsp;
		<% }else{ %>
		<a href="/testm/blist?page=${ requestScope.maxPage }">맨끝</a>
		<% } %>
	</div>

	<%@ include file="../common/footer.jsp"%>
</body>
</html>