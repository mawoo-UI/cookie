<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-light bg-light fixed-top">
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
        <span class="navbar-toggler-icon"></span>
        </button>
        <div class="pe-4">
        <a href="index.html" class="mx-4 float-start"><img src="${cp}imgs/logo.png" alt="로고" class="img-fluid" width="53"></a>
        <h2 class="fw-bold p-0 float-start mt-1">Cookie 관리자 페이지</h2>
        </div>
        <p></p>
        <div class="offcanvas offcanvas-start bg-cookie" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
        <div class="offcanvas-header">
            <h5 class="offcanvas-title text-cookie" id="offcanvasNavbarLabel"><a href="list?category=4">관리자 페이지</a></h5>
            <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
        </div>
        <div class="offcanvas-body">
            <ul class="navbar-nav justify-content-start flex-grow-1 pe-3 list-group list-group-flush">
            <li class="nav-item list-group-item bg-cookie">
                <a class="nav-link" aria-current="page" href="${cp}index">홈으로 돌아가기</a>
            </li>
            <li class="nav-item list-group-item bg-cookie">
                <a class="nav-link" aria-current="page" href="#">회원관리</a>
            </li>
            <li class="nav-item list-group-item bg-cookie">
                <a class="nav-link" aria-current="page" href="list?category=4">공지 관리</a>
            </li>
            <li class="nav-item dropdown list-group-item bg-cookie">
                <a class="nav-link dropdown-toggle" href="#" id="offcanvasNavbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                커뮤니티 관리
                </a>
                <ul class="dropdown-menu p-0 border-0" aria-labelledby="offcanvasNavbarDropdown">
                <li class="list-group-item"><a class="dropdown-item" href="list?category=1">취미모임</a></li>
                <li class="list-group-item"><a class="dropdown-item" href="list?category=2">자유게시판</a></li>
                <li class="list-group-item"><a class="dropdown-item" href="list?category=3">지역게시판</a></li>
                </ul>
            </li>
            <li class="nav-item list-group-item bg-cookie">
                <a class="nav-link" aria-current="page" href="list?category=5">이벤트관리</a>
            </li>
            <li class="nav-item dropdown list-group-item bg-cookie">
                <a class="nav-link dropdown-toggle" href="#" id="offcanvasNavbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                클래스 관리
                </a>
                <ul class="dropdown-menu p-0 border-0" aria-labelledby="offcanvasNavbarDropdown">
                <li class="list-group-item"><a class="dropdown-item" href="#">신청 목록</a></li>
                <li class="list-group-item"><a class="dropdown-item" href="#">등록된클래스</a></li>
                </ul>
            </li>  
            <li class="nav-item list-group-item bg-cookie">
                <a class="nav-link" aria-current="page" href="#">리뷰 관리</a>
            </li>
            </ul> 
        </div>
        </div>
    </div>
</nav>
<div class="p-4"></div>