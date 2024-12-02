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
			<main class="container">
				<hr class="text-cookie-secondary my-5">
				<div class="row">
					<div class="bxslider border-cookie-right pb-0">
						<c:if test="${empty review.attachs}">
							<div><img src="this.src='https://placehold.co/400x350?text=No+Image'" class="review-cookie img-fluid" onerror="this.src='https://placehold.co/400x350?text=No+Image'"></div>
						</c:if>
						<c:forEach items="${review.attachs}" var="attach">
							<div><img src="${cp}display?path=${attach.path}&uuid=${attach.uuid}" class="img-fluid review-cookie" onerror="this.src='https://placehold.co/400x350?text=No+Image'"></div>
						</c:forEach>
					
						<%-- <img src="${cp}imgs/class-thumbnail.jpg" alt="썸네일" class="img-fluid review-cookie mx-5"> --%>
					</div>
					<div class="col-1"></div>
					<div class="py-1 mx-4 col-5">
						<form class="mx-4">
							<textarea rows="6" cols="65" id="content" name="content" class="form-control mt-2 border-0" readonly>${review.content}</textarea>
							<br>
							<input type="text" class="form-control border-0 text-secondary" id="writer" name="writer" readonly value="작성자: ${nick}">
							<div class="clearfix">
								<fmt:formatDate value="${review.regdate}" pattern="yyyy/MM/dd" var="rd"/>
								<input type="text" class="form-control border-0 text-secondary float-start py-0" id="regdate" name="regdate" readonly value="작성일: ${rd}">
								<div class="stars clearfix d-block mx-4 float-end px-4">
									<c:forEach begin="1" end="5" varStatus="status">
										<c:choose>
											<c:when test="${review.score ge status.count}">
												<i class="float-start text-warning fa-solid fa-star small"></i>
											</c:when>
											<c:otherwise>
												<i class="float-start text-warning fa-regular fa-star small"></i>
											</c:otherwise> 
										</c:choose>
									</c:forEach>
								</div>
							</div>
							
							<c:if test="${member.id ne review.writer}">
								<div class="text-center mt-5">
									<a href="${cp}oneday/view?cbno=${cbno}" class="btn btn-cookie-secondary mx2 mt-3 px-4">목록</a>
		                			<a class="btn btn-cookie mx-2 mt-3 px-4">신고</a>
	                			</div>
	                		</c:if>
                			
							<c:if test="${member.id eq review.writer}">
								<div class="text-center mt-5">
									<a href="${cp}oneday/view?cbno=${cbno}" class="btn btn-cookie-secondary mx-1 mt-3 px-4">목록</a>
		                			<a href="${cp}oneday/modify?cbno=${cbno}&reno=${review.reno}" class="btn btn-cookie mx-1 mt-3 px-4">수정</a>
		                			<a href="${cp}oneday/remove?cbno=${cbno}&reno=${review.reno}" class="btn btn-cookie bg-white dropdown-cookie text-cookie-secondary mx-1 mt-3 px-4">삭제</a>
	                			</div>
	                		</c:if>
						</form>
					</div>
				</div>
				<hr class="text-cookie-secondary my-5">
			</main>
			<jsp:include page="../../common/footer.jsp" />
		</div>
		<script>
			$(function(){
			    $('.bxslider').bxSlider({
			      mode: 'fade',
			      captions: true,
			      slideWidth: 450
			    });
			    
			    $('.bx-wrapper').addClass('mx-5').addClass('col-6');
			  });
		</script>
	</body>
</html>