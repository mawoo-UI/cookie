<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="../../common/head.jsp" />
</head>  
<body>
<div class="wrap">
	<main class="container">
	    <div class="row col-md-12 m-2">
	        <div class="container clearfix p-2 text-center">
	            <a href="index.html" class="float-center"><img src="img/free-icon-cookie-2682369.png" class="img-fluid" alt="로고" width="50px"></a>
	            <span class="text-center fw-bold p-3" style="font-size: 32px;">Cookie new Cookie</span>
	        </div>
	
	        <form name="frm"class="mx-auto col-md-6 card p-4 mt-5">
	            <span class="text-center"><b>마이페이지</b></span>
	            <ul class="">
	                <label for="title" class="form-label mt-4">전화번호</label>
	                <input type="text" class="form-control" id="name" placeholder="010-1234-5678" name="name" style="width: 50%;">
	            </ul>
	            <ul class="">
	                <label for="title" class="form-label">이메일</label>
	                <input type="text" class="form-control" id="name" placeholder="010-1234-5678" name="name" style="width: 50%;">
	                <button id="btn" class="btn btn-light">인증</button>
	            </ul>
	            <ul class="">
	                <label for="title" class="form-label">아이디</label>
	                <input type="text" class="form-control" id="name" placeholder="010-1234-5678" name="name" style="width: 50%;">
	            </ul>
	            <ul class="">
	                <label for="title" class="form-label">가입일자</label>
	                <input type="text" class="form-control" id="name" placeholder="010-1234-5678" name="name" style="width: 50%;">
	            </ul>
	
	            <nav class="navbar navbar-expand-sm">
	                <ul class="navbar-nav container justify-content-around">
	                    <li class="btn btn-light" ><a href="#" style="text-decoration: none; color: black;">정보수정</a></li>
	                    <li class="btn btn-light"><a href="#" style="text-decoration: none; color: black;">활동관리</a></li>
	                    <li class="btn btn-light"><a href="#" style="text-decoration: none; color: black;">친구관리</a></li>
	                </ul>
	            </nav>
	        </form>
	    </div>
	</main>
</div>
</body>
</html>