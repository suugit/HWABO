<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HWABO</title>
</head>
<body>
<form name="boardWrite" id="boardWrite" method="post" action="/write">
	<table>>
		<colgroup>
			<col width="15%">
			<col width="*"/>
		</colgroup>
		<caption>게시글작성</caption>
		<tbody>
			<tr>
				<th scope="row">제목<</th>
				<td><input type="text" id="TITLE" name="TTILE" class="wdp90" style="width:500px">
				</input>></td>
				</tr>
				<tr>>
					<td colspan="2"  class="view">
						<textarea rows="20" cols="100" title="내용" id="contents" name="contents">
						</textarea>
						</td>
						</tr>
						</tbody>
						</table>
	
	<input type="submit" name="업로드" value="작성하기" id="write">
	<a href="/boardMain" class="btn" id="list" > 목록으로</a>
</form>
</body>
</html>