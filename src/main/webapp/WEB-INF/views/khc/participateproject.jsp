<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>participateproject</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
  <h2>프로젝트참여자</h2>
  
  <table class="table">
    <thead>
      <tr>
        <th>이름</th>
        <th>Email</th>
        <th>관리자여부</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>홍길동</td>
        <td>def@somemail.com</td>
        <td>y</td>
      </tr>      
      <tr class="success">
        <td>둘리</td>
        <td>john@example.com</td>
         <td>n</td>
      </tr>
      <tr class="danger">
        <td>도우너</td>
        <td>mary@example.com</td>
         <td>n</td>
      </tr>
      <tr class="info">
        <td>또치</td>
        <td>july@example.com</td>
         <td>n</td>
      </tr>
      <tr class="warning">
        <td>가나다</td>
        <td>bo@example.com</td>
         <td>n</td>
      </tr>
      <tr class="active">
        <td>철수</td>
        <td>act@example.com</td>
         <td>n</td>
      </tr>
    </tbody>
    
  </table>
</div>
</body>
</html>