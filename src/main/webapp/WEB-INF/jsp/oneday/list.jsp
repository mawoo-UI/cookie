<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="../../common/head.jsp" />
	</head>
	<body class="gowun-dodum-regular">
		<div class="wrap">
			<jsp:include page="../../common/header.jsp" />
			<main class="container">
				<h2 class="text-center mt-4 fw-bold">원데이 클래스</h2>
				<div class="clearfix">
					<div class="input-group ms-4 mt-2 p-3 w-25 float-start">
						<input type="text" class="form-control" placeholder="클래스 검색" name="keyword" value="">
						<button class="btn btn-cookie" type="submit"><i class="fa-solid fa-magnifying-glass font-icon-cookie"></i></button>
					</div>
					<div class="mt-3 p-2 float-start">
						<a href="${cp}oneday/writeclass" class="btn btn-cookie-secondary">개설 신청</a>
					</div>
					<div class="mt-4 mx-4 p-2 float-end">
						<a href="#" class="text-cookie-secondary text-decoration-none">최신순 |</a>
						<a href="#" class="text-cookie-secondary text-decoration-none">인기순 |</a>
						<a href="#" class="text-cookie-secondary text-decoration-none">마감임박 |</a>
						<a href="#" class="text-cookie-secondary text-decoration-none">내 지역</a>
						<hr class="m-0 text-cookie-secondary">
					</div>
				</div>
				<%-- <div class="mt-4 class-lists row ">
				<c:forEach items="${classes}" var="s" varStatus="status">
					<div class="p-0 text-center oneday-list-cookie col-2 ${status.last ? 'me-auto' : ''} m-2">
						<a href="${cp}oneday/view?cbno=${s.cbno}" class="text-decoration-none text-dark"><img src="${cp}imgs/class-thumbnail.jpg" alt="로고" class="img-fluid"><br></a>
						<div class="stars clearfix d-block">
							<c:forEach begin="1" end="5">
							<i class="float-start text-warning  fa-solid fa-star small"></i>
							</c:forEach>
						</div>
						<div class="p-0 text-start text-truncate"><a href="${cp}oneday/view?cbno=${s.cbno}" class="text-decoration-none text-dark">${s.title}</a></div>
					</div>
				</c:forEach>
				</div> --%>
				<div class="text-center">
					<div class="mt-4 class-lists clearfix d-table">
					<c:forEach items="${classes}" var="s" varStatus="status">
						<div class="p-0 text-center oneday-list-cookie col-2 m-2 float-start">
							<a href="${cp}oneday/view?cbno=${s.cbno}" class="text-decoration-none text-dark"><img src="${cp}imgs/class-thumbnail.jpg" alt="로고" class="img-fluid"><br></a>
							<div class="stars clearfix d-block">
								<c:forEach begin="1" end="5">
								<i class="float-start text-warning  fa-solid fa-star small"></i>
								</c:forEach>
							</div>
							<div class="p-0 text-start text-truncate"><a href="${cp}oneday/view?cbno=${s.cbno}" class="text-decoration-none text-dark">${s.title}</a></div>
						</div>
					</c:forEach>
					</div>
				</div>
				
				
				<p class="text-center mt-4"><a href="#" class="text-secondary">더보기</a></p>
			</main>
			<jsp:include page="../../common/footer.jsp" />
		</div>
	</body>
</html>