<%@page import="vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="../../common/head.jsp" />
</head>
<body>
	<div class="wrap">
		<jsp:include page="../../common/header.jsp" />
		<main class="container">
    <div class="container mt-3">
        <h2 class="text-center ">자유게시판</h2>

        <input type="text" class="form-control text-bg-light" placeholder="${board.title}" disabled>
    
        <textarea class="form-control text-bg-light my-3 " rows="5" id="comment" name="text"  placeholder="${board.content}" disabled></textarea>
        <label class="form-label mt-3"><i class="fa-solid fa-paperclip text-danger"></i> <b>Attach</b><br></label><br>
				<ul class="list-group attach-result">
					<c:if test="${empty board.attachs}">
					<li class="list-group-item">첨부파일이 없습니다.</li>
					</c:if>
					<c:forEach items="${board.attachs}" var="a">
 					<li class="list-group-item"><a href="${cp}download?uuid=${a.uuid}&origin=${a.origin}&path=${a.path}">${a.origin}</a></li>
 					</c:forEach>
				</ul>	
		<hr>
		<%
			Member member = Member.builder().id("purplecookie").build();
			request.setAttribute("member", member);
		%>
        <div class="d-grid gap-2 d-md-block">
            <button type="button" class="btn btn-danger btn-sm">신고</button>
            <a href="#" class="btn btn-light btn-sm mx-2 float-end" >
            	<c:if test="${fn:contains(likes, member.id)}">
            	<i class="fa-solid fa-heart text-danger " ></i> 
            	</c:if>
            	<c:if test="${not fn:contains(likes, member.id)}">
            	<i class="fa-regular fa-heart text-danger" ></i>
            	</c:if>
                 
                
                <span>좋아요</span>
            </a>
                <!--  <button type="button" class="btn btn-cookie-secondary btn-sm">삭제하기</button>
            	<a href="#" class="btn btn-cookie btn-sm float-end" >수정</a> -->
            
        </div>
        <div class="text-center my-5">
            <a href="modify?pno=${board.pno}&${cri.qs2}" class="btn btn-cookie btn-sm ">수정</a>
            <a href="remove?pno=${board.pno}&${cri.qs2}" class="btn btn-cookie-secondary btn-sm" onclick="return confirm('삭제하시겠습니까?')">삭제</a>
            <a href="list?${cri.qs2}" class="btn btn-cookie btn-sm ">목록</a>
        </div>
        <div>
            <p class="text-center">댓글 작성하기</p>
            <textarea class="form-control" name="text" placeholder="댓글 쓰기" style="resize: none;" rows="5"></textarea>
            <div class="gradient-custom">
                <div class="container my-5 py-5">
                    <ul class="list-group mx-4">
                        <li class="list-group-item list-group-item-action small">
                            <p class="my-2"><strong>내가그린 기린그림</strong></p>
                            <!-- border-bottom -->
                            <p class="my-1">으.. 나가쇼 아재요</p>
                            <p class="my-1">2024-11-18</p>
                            <button type="button" class="btn btn-cookie-secondary btn-sm"> 댓글달기</button>
                        </li>
                        <li class="list-group-item list-group-item-action small">
                            <p class="my-2"><strong>곽마원</strong></p>
                            <p class="my-1">님 신고요 ㅇㅇ</p>
                            <p class="my-1">2024-11-18</p>
                            <button type="button" class="btn btn-cookie-secondary btn-sm">댓글달기</button>
                        </li>
                        <li class="list-group-item list-group-item-action">
                            <p class="my-2"><strong>김덕선</strong></p>
                            <p class="my-1">오메~ 총각들은 마감이라 아쉽고만…!!</p>
                            <p class="my-1">2024-11-18</p>
                            <button type="button" class="btn btn-cookie-secondary btn-sm" data-bs-toggle="collapse" data-bs-target=".target">댓글달기</button>
                        </li>
                        <li class="list-group-item list-group-item-action small p-0 target collapse">
                            <ul class="list-group">
                                <li class="list-group-item list-group-item-action small ps-5 border border-0 border-bottom">
                                    <p class="mx-4"><strong>임마누엘</strong></p>
                                    <p class="mx-4">ㄴ@김덕선 이건 또 뭐지..</p>
                                    <p class="mx-4">2024-11-18</p>
                                </li>
                                <li class="list-group-item list-group-item-action small ps-5 border border-0">
                                    <p class="mx-4"><strong>아빠안잔다</strong></p>
                                    <p class="mx-4">ㄴ @김덕선 발닦고 주무십쇼</p>
                                    <p class="mx-4">2024-11-18</p>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        
    </div>
		</main>
		<!-- 풋터 -->
		<jsp:include page="../../common/footer.jsp" />
	</div>

</body>
</html>