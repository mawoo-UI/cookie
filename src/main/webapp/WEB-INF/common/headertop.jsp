<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header class="container-fluid mb-0">
    <div class="container clearfix p-2 pb-0">
        <div class="row my-2">
            <a href="${cp}index" class="logo-cookie p-3"><img src="${cp}imgs/logo.png" alt="로고" class="img-fluid" width="250"></a>
            <div class="col-9">
                <div class="clearfix">
                    <h1 class="fw-bold p-3 float-start"><a href="${cp}index" class="text-dark text-decoration-none">Cookie new cookie</a></h1>
                </div>
            </div>
            <c:if test="${empty member}">
	            <div class="col-1 p-0 text-end">
	                <a href="${cp}member/term" class="btn btn-cookie-secondary my-4 px-2">회원가입</a>
	            </div>
	            <div class="col-1 p-0 text-center">
	                <a href="${cp}member/signin" class="btn btn-cookie my-4">로그인</a>
	            </div>
            </c:if>
            <c:if test="${not empty member}">
            	<div class="col-2">
            		<p class="text-cookie mt-1"><a href="${cp}member/mypage" class="text-cookie-secondary fw-bold">${member.nick}</a>님 환영합니다</p>
            		<a href="${cp}member/logout" class="btn btn-cookie-secondary px-2">로그아웃</a>
            		<span class="text-cookie-secondary small">실명 : </span><a href="${cp}member/mypage" class="${empty member.name ? 'text-danger' : 'text-primary'}">${empty member.name ? '미인증' : '인증됨'} </a>
            		<span class="text-cookie-secondary small">주소 : </span><a href="${cp}member/mypage" class="${empty member.name ? 'text-danger' : 'text-primary'}">${empty member.addr ? '미인증' : '인증됨'} </a>
            		<c:if test="${member.admin}">
            		<a class="text-cookie-secondary small" href="${cp}admin/">관리자페이지</a>
            		</c:if>
            		
            	</div>
            	
            </c:if>
        </div>
    </div>
    
</header>