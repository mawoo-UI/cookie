<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header class="container-fluid mb-0">
    <div class="container clearfix p-2 pb-0">
        <div class="row my-2">
            <a href="${cp}index" class="logo-cookie p-3"><img src="${cp}imgs/logo.png" alt="로고" class="img-fluid" width="250"></a>
            <div class="col">
                <div class="clearfix">
                    <h1 class="fw-bold p-3 float-start"><a href="${cp}index" class="text-dark text-decoration-none">Cookie new cookie</a></h1>
                </div>
            </div>
            <div class="col">
            <%-- 요청 주소 Bind --%>
            <c:if test="${empty member}">
            	<div class="float-end py-4">
	                <a href="${cp}member/term" class="btn btn-cookie-secondary btn-sm me-4">회원가입</a>
	                <a href="${cp}member/signin" class="btn btn-cookie btn-sm btn-redirect" >로그인</a>
                </div>
            </c:if>
            <c:if test="${not empty member}">
            	<div class="float-end py-3">
            		<span class="text-cookie mt-1"><a href="${cp}member/mypage" class="text-cookie-secondary fw-bold">${member.nick}</a>님 환영합니다</span>
            		<a href="${cp}member/logout" class="btn btn-cookie-secondary px-2 btn-sm btn-redirect">로그아웃</a>
            		<br>
            		<span class="text-cookie-secondary small">실명 : </span><a href="${cp}member/mypage" class="${empty member.name ? 'text-danger' : 'text-primary'}">${empty member.name ? '미인증' : '인증됨'} </a>
            		<span class="text-cookie-secondary small">주소 : </span><a href="${cp}member/mypage" class="${empty member.name ? 'text-danger' : 'text-primary'}">${empty member.addr ? '미인증' : '인증됨'} </a>
            	</div>
            </c:if>
                <script>
                $(".btn-redirect").click(function() {
                	event.preventDefault();
                	location.href = $(this).attr("href") + "?url=" + encodeURIComponent(location.pathname+location.search);
                })
                </script>
            </div>	
        </div>
    </div>
    
</header>