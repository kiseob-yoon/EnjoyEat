<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EnjoyEat</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
	crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <link rel="stylesheet" href="css/root.css">
    <link href="css/carousel.css" rel="stylesheet">
</head>
<style>
    .navbar-custom {
        height: 85px; /* 네비게이션 바의 높이를 70px로 설정 */
        padding-top: 10px; /* 상단 패딩 추가 */
        padding-bottom: 10px; /* 하단 패딩 추가 */
    }

    .navbar-nav .nav-link {
        padding-top: 10px; /* 링크 상단 패딩 추가 */
        padding-bottom: 10px; /* 링크 하단 패딩 추가 */
    }

    .form-control {
        height: 40px; /* 검색 입력 필드 높이 조정 */
    }

    .btn {
        height: 40px; /* 버튼 높이 조정 */
        padding: 5px 10px; /* 버튼 내 패딩 조정 */
    }
    #myPageContent {
        display: none;
        margin-top: 20px;
    }


    #myPageContent {
        display: none;
        background-color: #f9f9f9;
        border: 1px solid #ddd;
        padding: 10px;
        position: absolute;
        width: 300px;
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

<body>

<header data-bs-theme="dark">
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark navbar-custom">
    <div class="container-fluid">
            <a class="navbar-brand" href="#">EnjoyEat</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav me-auto mb-2 mb-md-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" aria-disabled="true">Disabled</a>
                    </li>
                </ul>

                <form action="selectStore" class="d-flex" role="search" onsubmit="return validateForm()">
                    <input name="storename" type="search" class="form-control" placeholder="search" aria-label="Search" id="searchInput">
                    <button class="btn btn-outline-success" type="submit" style="margin-left:10px;">search</button>
                </form>

                <div style="text-align: right;" >

                    <c:choose>
                        <c:when test="${adminData == 'admin'}">
                            <a href="logout"><button type="button" class="btn btn-outline-success" style="margin-left:10px;">로그아웃</button></a>
                            <a href="#" type="button" id="myPageButton" class="btn btn-outline-success">마이페이지</a>

                        </c:when>


                        <c:when test="${LoggedIn}">
                            <a href="logout"><button type="button" class="btn btn-outline-success" style="margin-left:10px;">로그아웃</button></a>
                            <a href="#" type="button" id="myPageButton" class="btn btn-outline-success">마이페이지</a>
                        </c:when>

                        <c:otherwise>
                            <a href="login_main"><button type="button" class="btn btn-outline-success" style="margin-left:10px;">로그인</button></a>
                        </c:otherwise>
                    </c:choose>

                </div>

            </div>

        </div>
        <div style="text-align: center; width: 15%; margin: 475px 0px 0px 1600px;" id="myPageContent">
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


    </nav>

</header>



<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>





<div class="WrapMain">

<section>
    <div class="inner">
        <div class="wrap">
        <h3 style="text-align: left; border-bottom:1px solid #e9ecef; margin-top:100px;">가성비 BEST 4</h3>
        <c:forEach var="store" items="${storePointer}" varStatus="loop">
            <article>
            
                <div class="pic">
                <a href="menupan?id=${store.id}">
                    <img src="img/${store.id}/img.jpeg" alt="1번째 콘텐츠 이미지">
                </div>
                <h2><a href="menupan?id=${store.id}">${store.storename}</a></h2>
                <p>${store.business} 맛집</p>
                <p class="rest_info"></a></p>
            </article>

             </c:forEach>
        </div>
            </div>
</section>
<section>
    <div class="inner">
        <div class="wrap">
<div style="display: flex; align-items: center; width: 100%;">
    <h3 style="text-align: left; margin-top:100px; margin-bottom: 25px; flex-grow: 1;">TOP10 맛집 정보</h3>
    <div class="tab" id="tab-area" style="flex-basis: 300px; flex-shrink: 0;">
        <ul class="tab_list" style="display: flex; list-style-type: none; justify-content: flex-end; margin: 0;">
            <li id="latest" style="cursor: pointer; margin-top:80px;">최신순</li>
            <li id="popularity" style="cursor: pointer; margin-top:80px;">인기순</li>  
        </ul>
    </div>
</div>
        </div>
            </div>
<div id="here" style="width: 100%; height: 400px; margin-bottom: 250px;"></div>
</section>
    <footer class="bg-dark text-white">
        <div class="inner">
            <div class="upper">
                <h1>EnjoyEat</h1>
                <ul>
                    <li><a href="#" class="text-white">Policy</a></li>
                    <li><a href="#" class="text-white">Terms</a></li>
                    <li><a href="#" class="text-white">Family Site</a></li>
                    <li><a href="#" class="text-white">Sitemap</a></li>
                </ul>
            </div>
            <div class="lower">
                <address>
                    Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quas,
                    facere.<br> TEL : 031-111-1234 C.P : 010-1234-5678
                </address>
                <p>2024 EnjoyEat &copy; copyright all rights reserved.</p>
            </div>
        </div>
    </footer>



</div>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>


$(function() {
    // 최신순 클릭 이벤트 핸들러
    $("#latest").click(function() {
        $.ajax({
            url: '/selectAll',
            method: 'GET',
            success: function(data) {
                $('#here').html(data);
            }
        });
    });

    // 인기순 클릭 이벤트 핸들러
    $("#popularity").click(function() {
        $.ajax({
            url: '/selectRank',
            method: 'GET',
            success: function(data) {
                $('#here').html(data);
            }
        });
    });

    // 페이지 로드 시 초기 데이터 로드
    $.ajax({
        url: '/selectAll',
        method: 'GET',
        success: function(data) {
            $('#here').html(data);
        }
    });
});

function validateForm() {
    var input = document.getElementById('searchInput').value;
    if (input.trim() === "") {
        Swal.fire({  // SweetAlert 함수 사용
            title: '알림!',
            text: '검색어를 입력해 주세요.',
            icon: 'info',  // 아이콘 종류: 'warning', 'error', 'success', 'info'
            confirmButtonText: '확인'
        });
        return false;
    }
    return true;
}

document.getElementById('myPageButton').addEventListener('click', function() {
    var content = document.getElementById('myPageContent');
    content.style.display = content.style.display === 'block' ? 'none' : 'block';
});


</script>

</body>
</html>