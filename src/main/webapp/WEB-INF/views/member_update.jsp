<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보 수정</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
  body {
    background-color: #f5f5f5; /* 회색 계열 배경색 */
  }
  form {
    max-width: 600px; /* 폼의 최대 너비 설정 */
    margin: auto; /* 폼을 페이지 중앙에 배치 */
    border: 1px solid #ccc; /* 폼에 테두리 추가 */
    padding: 20px; /* 폼 내부 여백 */
    background-color: white; /* 폼 배경색을 흰색으로 설정 */
    box-shadow: 0 2px 4px rgba(0,0,0,0.1); /* 폼에 그림자 효과 추가 */
    border-radius:5px;
  }
  .form-control {
    width: 100%; /* 입력 필드의 너비를 100%로 설정 */
  }
</style>
</head>
<body>
<h1 style="text-align:center; margin-top:50px; margin-bottom:50px;">회원 정보 수정</h1>
<form action="member_update" method="get">

  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">ID</label>
    <input type="text" class="form-control" name="id" required readonly
                               value="${memberInfo.id}" id="id" aria-describedby="emailHelp">
  </div>

  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">비밀번호</label>
    <input type="text" class="form-control" name="pw" value="${memberInfo.pw}" required id="pw" aria-describedby="emailHelp">
  </div>

  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">이름</label>
    <input type="text" class="form-control" name="name" value="${memberInfo.name}" required id="name" aria-describedby="emailHelp">
  </div>
	<input type="submit" class="btn btn-success" value="저장">
	<a href="/"><input type="button" class="btn btn-success" value="홈 화면"></a>
	<a href="member_delete?memberno=${memberInfo.memberno}"><input type="button" class="btn btn-warning" value="회원 탈퇴"></a>

</form>
</body>
</html>