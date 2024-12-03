<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<!-- 최신 이벤트 -->
<jsp:useBean id="service" scope="request" class="service.BoardServiceImpl" />
<c:set value="${service.getLatestEvent()}" var="b"/>
<div class="toast-container position-fixed p-3 bottom-0 end-0" id="toastPlacement" data-original-class="toast-container position-absolute p-3">
    <div class="toast fade show hide">
        <div class="toast-header bg-cookie">
        <img src="${cp}imgs/free-icon-cookie-2682369.png" class="rounded me-2" alt="..." style="width: 24px;">

        <strong class="text-cookie-secondary me-2">이벤트</strong>
        <img src="${cp}imgs/free-icon-cookie-2682369.png" class="rounded me-auto" alt="..." style="width: 24px;">
        
        <small class="text-cookie-secondary ">${b.regdate.getTime()}</small>
        <script>$("#toastPlacement small").text(moment($("#toastPlacement small").text()/1).fromNow())</script>
        <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
        </div>
        <div class="toast-body">
            <a href="${cp}/board/view?&pno=${board.pno}&category=5" class="fw-bold text-cookie-secondary">${b.title}</a>
            <div class="float-end">
                <div><span class="badge bg-cookie pb-1 pt-2"> <i class="fa-solid fa-heart text-danger"></i> ${b.likes}</span></div>
            </div>
        </div>
    </div>
</div>  
<script>
// 최신 이벤트 쿠키 처리
$(function() {
	const evno = '${b.pno}';
	if(evno != $.cookie("evno")) {
		$(".toast").removeClass("hide");
	}
	
	$(".toast .btn-close").click(function() {
		$.cookie("evno", evno, {expires: 365});
	})
})
</script> 