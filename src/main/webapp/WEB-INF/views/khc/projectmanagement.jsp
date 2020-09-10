<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>HWABO</title>
</head>
<body>
<h1>회사관리</h1>
<hr>
<h3>회사명</h3>
<div class="input-group flex-nowrap">
  <div class="input-group-prepend">
    <span class="input-group-text" id="addon-wrapping"></span>
  </div>
  <input type="text" class="form-control" aria-label="Username" aria-describedby="addon-wrapping">
</div>

<button type="button" class="btn btn-secondary">수정</button>
<hr>
<h3>전용URL</h3>
전용 URL 주소를 전달하여 회사 직원들을 참여시킬 수 있습니다.
<div class="input-group flex-nowrap">
  <div class="input-group-prepend">
    <span class="input-group-text" id="addon-wrapping"></span>
  </div>
  <input type="text" class="form-control" aria-label="Username" aria-describedby="addon-wrapping">
</div>
<button type="button" class="btn btn-secondary">수정</button>
<hr>
<h3>직원 참여 옵션</h3>
<td><input type="radio" name="gender" value="M" >관리자의 가입 승인 완료 후, 참여하도록 설정합니다 <br> 
	<input type="radio" name="gender" value="F" >특징 도메인의 이메일로 가입시, 관리자 승인 없이도 바로 참여할 수 있도록 승인합니다.</td>
<br>
 
</body>
</html>