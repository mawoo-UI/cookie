<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="../../common/head.jsp" />
	</head>
	<body class="gowun-dodum-regular">
		<div class="wrap">
			<jsp:include page="../../common/header.jsp" />
			<main class="container my-4">
				<form method="post">
					<label for="title" class="form-label mt-3 text-cookie-secondary"><i class="fa-solid fa-cookie-bite"></i> <b>수강한 클래스</b></label>
					<input type="text" class="form-control dropdown-cookie" id="title" name="title" value="${classItem.title}" readonly>
	
					<label for="content" class="form-label mt-4 text-cookie-secondary"><i class="fa-regular fa-clipboard"></i> <b>리뷰</b></label>
					
					<div class="stars clearfix d-block mx-4 float-end px-4 mt-4">
						<c:forEach begin="1" end="5" varStatus="status">
							<c:choose>
								<c:when test="${review.score ge status.count}">
									<i class="float-start text-warning fa-solid fa-star"></i>
								</c:when>
								<c:otherwise>
									<i class="float-start text-warning fa-regular fa-star"></i>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</div>
					<input type="hidden" name="score" id="score" value="${review.score}">
					
					<textarea class="form-control dropdown-cookie" name="content" id="content" rows="15" placeholder="내용을 입력해 주세요">${review.content}</textarea>
	
					<label for="writer" class="form-label mt-4 text-cookie-secondary"><i class="fa-solid fa-user-pen"></i> <b>작성자</b></label>
					<input type="text" class="form-control dropdown-cookie" id="nick" name="nick" value="${nick}" readonly>
					<input type="hidden" name="writer" id="writer" value="${review.writer}">
					
					<div class="text-center mt-3">
						<button class="btn btn-cookie-secondary mx-1 mt-3 px-4">수정</button>
              			<a href="${cp}oneday/remove?cbno=${classItem.cbno}&reno=${review.reno}" class="btn btn-cookie mx-1 mt-3 px-4">삭제</a>
              			<a href="${cp}oneday/review?cbno=${classItem.cbno}&reno=${review.reno}" class="btn btn-cookie bg-white dropdown-cookie text-cookie-secondary mx-1 mt-3 px-4">취소</a>
           			</div>
				</form>
			</main>
			<jsp:include page="../../common/footer.jsp" />
		</div>
		<script>
	        $(".stars").mousemove(function(e) {
	            const score = calcStar(e.clientX, $(this).outerWidth());
				console.log(e.clientX + " ::: " + $(this).outerWidth());
				
	            let str = "";
	            for(let i = 1 ; i <= 5 ; i++) {
	                
	                str += score >= i ? '<i class="float-start text-warning fa-solid fa-star review-score"></i>' : '<i class="float-start text-warning fa-regular fa-star"></i>';
	                
	            }
	            
	            $("#score").val($(".review-score").length);
	            $(this).html(str);
	        })
	
	        function calcStar(x, width) {
				console.log(Math.floor(x / width * 5) - 40 + 4);
				
	            return Math.floor(x / width * 5) - 40 + 4;
	        }
    </script>
	</body>
</html>