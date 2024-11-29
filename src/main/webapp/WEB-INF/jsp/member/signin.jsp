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
                <a href="${cp}" class="float-center"><img src="${cp}imgs/free-icon-cookie-2682369.png" class="img-fluid" alt="로고" width="50px"></a>
                <span class="text-center fw-bold p-3" style="font-size: 32px;">Cookie new Cookie</span>
            </div>

            <form name="frm" class="mx-auto col-lg-5 card p-4 mt-5" method="post">
                <input type="text" class="form-control mt-3" id="id" placeholder="아이디" name="id" value="purplecookie">
                <input type="password" class="form-control my-3" id="pw" placeholder="비밀번호" name="pw" value="1234">
                
                <div class="form-check form-switch my-3">
                    <input class="form-check-input" type="checkbox" id="mySwitch" name="remember-id" value="yes">
                    <label class="form-check-label" for="mySwitch">아이디 저장</label>
                </div>

                <button class="btn-cookie btn btn-primary mb-3">로그인</button>
                
                <nav class="navbar navbar-expand-sm">
                    <ul class="navbar-nav container justify-content-around">
                        <li class="mx-2 nav-item" ><a href="#" style="text-decoration: none; color: black;">아이디 찾기</a></li>
                        <li class="mx-2 nav-item"><a href="#" style="text-decoration: none; color: black;">비밀번호 찾기</a></li>
                        <li class="mx-2 nav-item"><a href="#" style="text-decoration: none; color: black;">회원가입</a></li>
                    </ul>
                </nav>
            </form>
        </div>
	</main>
</div>
</body>
</html>