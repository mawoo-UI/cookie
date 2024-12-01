<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="container-fluid mb-0">
    <div class="container clearfix p-2 pb-0">
        <div class="row my-2">
            <a href="${cp}index" class="logo-cookie p-3"><img src="${cp}imgs/logo.png" alt="로고" class="img-fluid" width="250"></a>
            <div class="col-9">
                <div class="clearfix">
                    <h1 class="fw-bold p-3 float-start"><a href="${cp}index" class="text-dark text-decoration-none">Cookie new cookie</a></h1>
                    <div class="input-group mt-2 p-3 w-25 float-start">
                        <input type="text" class="form-control" placeholder="검색어 입력" name="keyword" value="">
                        <button class="btn btn-cookie" type="submit"><i class="fa-solid fa-magnifying-glass font-icon-cookie"></i></button>
                    </div>
                </div>
            </div>
            <div class="col-1 p-0 text-end">
                <a href="${cp}member/signup" class="btn btn-cookie-secondary my-4 px-2">회원가입</a>
            </div>
            <div class="col-1 p-0 text-center">
                <a href="${cp}member/signin" class="btn btn-cookie my-4">로그인</a>
            </div>
        </div>
    </div>
    <hr class="mb-0">
</header>
<div class="container">
    <nav class="navbar navbar-expand-sm">
        <ul class="navbar-nav container justify-content-center">
            <li class="nav-item dropdown mx-5">
                <a class="nav-link dropdown-toggle" role="button" data-bs-toggle="dropdown">원데이 클래스</a>
                <ul class="dropdown-menu dropdown-cookie">
                    <li><a class="dropdown-item" href="${cp}oneday/list">원데이 클래스</a></li>
                    <li><a class="dropdown-item" href="${cp}oneday/writeclass">클래스 개설 신청</a></li>
                    <li><a class="dropdown-item" href="${cp}oneday/requestclass">희망 클래스 신청</a></li>
                    <li><a class="dropdown-item" href="${cp}oneday/writereview">리뷰 작성</a></li>
                </ul>
            </li>
            <li><a class="dropdown-item mx-5" href="${cp}board/list?category=1">취미 모임</a></li>
            <li class="nav-item dropdown mx-5">
                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">커뮤니티</a>
                <ul class="dropdown-menu dropdown-cookie">
                    <li><a class="dropdown-item" href="${cp}board/list?category=2">자유게시판</a></li>
                   	<li><a class="dropdown-item" href="${cp}board/list?category=3">지역게시판</a></li>
                </ul>
            </li>
            <li><a class="dropdown-item mx-5" href="${cp}board/list?category=4">공지사항</a></li>
            <li><a class="dropdown-item mx-5" href="${cp}/board/list?category=5">이벤트</a></li>
            <li><a class="dropdown-item mx-5" href="${cp}member/mypage">마이페이지</a></li>
        </ul>
    </nav>
    <hr class="m-0 text-cookie-secondary">
</div>