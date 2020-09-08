<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hwabo</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<meta charset="UTF-8">
</head>
<body>
<h2>회사프로젝트정보</h2><br>
<h2>프로젝트명</h2> 
<div class="input-group flex-nowrap">
  <div class="input-group-prepend">
    <span class="input-group-text" id="addon-wrapping"></span>
  </div>
  <input type="text" class="form-control" aria-label="Username" aria-describedby="addon-wrapping">
</div>

<hr>
<h3>글/댓글작성권한</h3>
<td><input type="radio" name="gender" value="M" >전체 
	<input type="radio" name="gender" value="F" >관리자만 글/댓글작성가능
</td> <br>
<td><input type="radio" name="gender" value="M" >전체 
	<input type="radio" name="gender" value="F" >관리자만 조회가능
</td> <br>
<td><input type="radio" name="gender" value="M" >전체 
	<input type="radio" name="gender" value="F" >관리자만 다운로드가능
</td> <br>
<button type="button" class="btn btn-secondary">저장</button>
<button type="button" class="btn btn-secondary">취소</button>
</body>
</html>