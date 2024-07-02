<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <meta charset="UTF-8">
    <title>마이페이지</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            padding: 20px;
            background-color: #f4f4f4;
            display: flex;
            flex-direction: column;
            align-items: center;
        }
        #myPageContent {
            text-align: center;
            width: 80%;
            margin: 20px auto;
            padding: 20px;
            background-color: #ffffff;
            border-radius: 8px;
            border: 2px solid #ccc; /* Adding border */
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            transition: all 0.3s ease; /* Smooth transition for hover effects */
        }
        .list-unstyled {
            list-style-type: none;
            padding: 0;
            margin-top: 15px;
        }
        .list-unstyled li {
            margin-bottom: 15px;
        }
        .list-unstyled a {
            display: block;
            text-decoration: none;
            color: black;
            padding: 10px 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: white;
            transition: background-color 0.2s;
        }
        .list-unstyled a:hover {
            background-color: #f8f9fa;
        }

    </style>

</head>
<body>

<h1 style="margin-bottom: 20px;">마이 페이지</h1>
<div style="text-align: center; width: 20%;" id="myPageContent">
    <img id="user" src="img/user1.png">
    <span>안녕하세요, <strong>${memberName}</strong>님</span>

    <c:choose>
        <c:when test="${adminData == 'admin'}">
            <ul class="list-unstyled">
                <li>
                    <a href="likeForm?memberno=${number}">좋아요 표시 목록</a>
                </li>
                <li>
                    <a href="commentForm?memberno=${number}" id="commentButton">게시글 작성 목록</a>
                </li>
                <li>
                    <a href="member_recent">회원정보 수정</a>
                </li>
                <li>
                    <a href="storeForm">점포등록</a>
                </li>
                <li>
                    <a href="/logout">로그아웃</a>
                </li>
            </ul>

        </c:when>

        <c:when test="${LoggedIn}">
            <ul class="list-unstyled">
                <li style="margin-right:2px;">
                    <a href="likeForm?memberno=${number}" class="button">좋아요 표시 목록</a>
                </li>
                <li style="margin-right:2px;">
                    <a href="commentForm?memberno=${number}" id="commentButton" class="button">게시글 작성 목록</a>
                </li>
                <li>
                    <a href="member_recent" class="button">회원정보 수정</a>
                </li>
                <li>
                    <a href="/logout" class="button">로그아웃</a>
                </li>
            </ul>

        </c:when>
    </c:choose>
</div>

<div id="here" style="margin-bottom:50px;"></div>


<script>

</script>
</body>
</html>
