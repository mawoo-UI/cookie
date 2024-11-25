<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Page Title</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bxslider@4.2.17/dist/jquery.bxslider.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css" integrity="sha512-jnSuA4Ss2PkkikSOLtYs8BlYIeeIK1h99ty4YfvRPAlzr377vr3CXDb7sb7eEEBYjDtcYj+AjBH3FLv5uSJuXg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel='stylesheet'href='../css/style.css'>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.7.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bxslider@4.2.17/dist/jquery.bxslider.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/js/bootstrap.bundle.min.js" integrity="sha512-7Pi/otdlbbCR+LnW+F7PwFcSDJOuUJB3OxtEHbg4vSMvzvJjde4Po1v4BR9Gdc9aXNUNFVUY+SK51wWT8WF0Gg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    
</head>
<body>
    <header class="container-fluid mb-0">
        <div class="container clearfix p-2 pb-0">
            <div class="row my-2">
                <a href="index.html" class="logo-cookie p-3"><img src="../imgs/logo.png" alt="로고" class="img-fluid" width="250"></a>
                <div class="col-9">
                    <div class="clearfix">
                        <h1 class="fw-bold p-3 float-start">Cookie new cookie</h1>
                        <div class="input-group mt-2 p-3 w-25 float-start">
                            <input type="text" class="form-control" placeholder="검색어 입력" name="keyword" value="">
                            <button class="btn btn-cookie" type="submit"><i class="fa-solid fa-magnifying-glass" style="color: #a67c68;"></i></button>
                        </div>
                    </div>
                </div>
                <div class="col-2">
                    <a class="btn btn-cookie-secondary my-4">회원가입</a>
                    <a class="btn btn-cookie my-4">로그인</a>
                </div>
            </div>
        </div>
        <hr class="mb-0">
    </header>
    <div class="container">
        <nav class="navbar navbar-expand-sm">
            <ul class="navbar-nav container justify-content-center">
                <li class="nav-item dropdown mx-5">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">원데이 클래스</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">클래스 개설 신청</a></li>
                        <li><a class="dropdown-item" href="#">희망 클래스 신청</a></li>
                        <li><a class="dropdown-item" href="#">리뷰 작성</a></li>
                    </ul>
                </li>
                <li><a class="dropdown-item mx-5" href="Post_Hobby_Group.html">취미 모임</a></li>
                <li class="nav-item dropdown mx-5">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">커뮤니티</a>
                    <ul class="dropdown-menu dropdown-cookie">
                        <li><a class="dropdown-item" href="Post_Free_bulletin_board.html">자유게시판</a></li>
                        <li><a class="dropdown-item" href="Postboard_Area .html">지역게시판</a></li>
                    </ul>
                </li>
                <li><a class="dropdown-item mx-5" href="#">공지사항</a></li>
                <li><a class="dropdown-item mx-5" href="#">마이페이지</a></li>
            </ul>
        </nav>
        <hr class="m-0 text-cookie-secondary">
    </div>
    <div class="container mt-3">
        <div>
            <h1 class="text-center ">글작성</h1>
        </div>
        <table class="table table-hover">
            <thead>
                <input type="text" class="form-control" placeholder="제목입력">
            </thead> 
            <button type="button" class="btn btn-Light float-end " data-bs-toggle="dropdown">
                <i class="fa-solid fa-sort-down" style="color: #443722;"></i>
                카테고리
            </button>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="Post_Free_bulletin_board.html">자유게시판</a></li>
                <li><a class="dropdown-item" href="Postboard_Area .html">지역게시판</a></li>
            </ul>
            <thead>
                <textarea class="form-control" rows="5" id="comment" name="text" placeholder="내용입력"></textarea>
            </thead> 
            <thead>
                <input type="file" class="form-control" placeholder="첨부파일" i class="fa-solid fa-paperclip">
                <!-- <i class="fa-solid fa-paperclip"></i> -->
            </thead> 
        </table>   
        
        <!-- <button type="button" class="btn btn-Light " data-bs-toggle="dropdown">
            <i class="fa-solid fa-sort-down" style="color: #443722;"></i>
            선택하기
        </button>
        <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">최신 등록순</a></li>
            <li><a class="dropdown-item" href="#">오래된순</a></li>
            <li><a class="dropdown-item" href="#">인기순</a></li>
        </ul> -->
        
        <table class="table table-hover">
            <thead>
                <tr>
                    <th class="text-center"></th>
                    <th class="text-center"></th>
                    <th class="text-center"></th>
                    <th class="text-center"></th>
                    <th class="text-center"></th>
                </tr>
            </thead>
        </table>
        <div class="d-grid gap-2 d-md-block">
            <button type="button" class="btn btn-cookie-secondary btn-sm">삭제하기</button>
            <a href="#" class="btn btn-cookie btn-sm float-end" >수정</a>
            <a href="#" class="btn btn-cookie-secondary btn-sm mx-2 float-end" >등록</a>
        </div>
    </div>
</body>
</html>