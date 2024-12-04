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
        <h2 class="text-center ">${cname}</h2>

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
        <div class="d-grid gap-2 d-md-block">
            <button type="button" class="btn btn-danger btn-sm">신고</button>
            <a href="#" class="btn btn-light btn-sm mx-2 float-end" id="btnLikes">
            	<c:if test="${not empty likes}">
            	<i class="fa-solid fa-heart text-danger " ></i> 
            	</c:if>
            	<c:if test="${empty likes}">
            	<i class="fa-regular fa-heart text-danger" ></i>
            	</c:if>
                <span>좋아요<b> ${board.likes}</b></span>
            </a>
        </div>
        <div class="text-center my-5">
        	<c:if test="${member.id == board.writer || member.admin}">
            <a href="modify?pno=${board.pno}&${cri.qs2}" class="btn btn-cookie btn-sm ">수정</a>
            <a href="remove?pno=${board.pno}&${cri.qs2}" class="btn btn-cookie-secondary btn-sm" onclick="return confirm('삭제하시겠습니까?')">삭제</a>
            </c:if>
            <a href="list?${cri.qs2}" class="btn btn-cookie btn-sm ">목록</a>
        </div>
    </div>
		</main>
		<!-- 풋터 -->
		<jsp:include page="../../common/footer.jsp" />
	</div>
	<script>
	$("#btnLikes").click(function () {
		event.preventDefault();
		const data = {pno:'${board.pno}', id: '${member.id}'};
		if(!data.id) {
			alert("로그인 후 좋아요 클릭 가능");
			location.href = '${cp}' + "member/signin?url=" + encodeURIComponent(location.href); 
			return;
		}
		const url = '${cp}' + "likesToggle"
		$.ajax({
			url : url,
			data : data,
			success : function (data) {
				$("#btnLikes i").toggleClass("fa-solid fa-regular");
				$("#btnLikes b").text(function(i, it) {
					return data.result ? it/1 + 1 : it/1 -1
				})
				
			}
		});
	});
	</script>

</body>
</html>