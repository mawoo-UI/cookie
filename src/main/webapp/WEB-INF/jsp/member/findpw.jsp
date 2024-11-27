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
	
	        <form name="frm"class="mx-auto col-lg-5 card p-4 mt-5">
	            <div class="clearfix">
	                <h5 class="float-start">비밀번호 찾기</h2>
	            </div>
	            <hr>
	            <p>본인확인 휴대전화로 인증</p>
	            <ul>
	                <label for="title" class="form-label"><b>아이디</b></label>
	             <input type="text" class="form-control" id="id" placeholder="" name="id" style="width: 50%;"  >
	            </ul>
	            <ul>
	                <label for="title" class="form-label"><b>휴대전화</b></label>
	             <input type="text" class="form-control my-3" id="tel" placeholder="" name="tel" style="width: 50%;" >
	                <button id="btn" class="btn btn-light">인증번호 받기</button>
	             <input type="text" class="form-control mt-3" id="tel" placeholder="인증번호 숫자 입력" name="tel" style="width: 50%;" >
	            </ul>
	            <button class="btn-cookie btn btn-primary mt-3">다음</button>
	        </form>
	    </div>
	</main>
</div>
</body>
</html>