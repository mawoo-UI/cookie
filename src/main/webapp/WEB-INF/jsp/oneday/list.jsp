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
				
					<form>
						<div class="row my-3 float-start">
							<div class="col-4">
								<select class="form-select dropdown-cookie text-cookie-secondary ms-4 mt-2 " name="type">
									<option value="TCW" ${cri.type == 'TCW' ? 'selected' : ''}>전체</option>
									<option value="T" ${cri.type == 'T' ? 'selected' : ''}>제목</option>
									<option value="C" ${cri.type == 'C' ? 'selected' : ''}>내용</option>
									<option value="W" ${cri.type == 'W' ? 'selected' : ''}>작성자</option>
									<option value="TC" ${cri.type == 'TC' ? 'selected' : ''}>제목+내용</option>
									<option value="TW" ${cri.type == 'TW' ? 'selected' : ''}>제목+작성자</option>
									<option value="CW" ${cri.type == 'CW' ? 'selected' : ''}>내용+작성자</option>
								</select>
							</div>
							<div class="col-7">
								<div class="input-group ms-2 mt-2 ">
									<input type="text" class="form-control" placeholder="클래스 검색" name="keyword" value="${cri.keyword}">
									<button class="btn btn-cookie" type="submit"><i class="fa-solid fa-magnifying-glass font-icon-cookie"></i></button>
								</div>
							</div>
						</div>
					</form>
					
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
				<div class="row mt-2">
					<c:if test="${empty classes}">
						<hr class="m-0 mt-3 text-cookie-secondary ">
						<h3 class="text-center my-4"><i class="fa-solid fa-triangle-exclamation text-warning"></i> 검색 결과가 없습니다.</h3>
						<hr class="m-0 text-cookie-secondary ">
					</c:if>
					<c:forEach items="${classes}" var="s" varStatus="status">
						<div class="p-3 col-6 col-sm-4 col-lg-3 col-xl-2 ">
			                <div>
			                	<a href="${cp}oneday/view?cbno=${s.cbno}"><img src="${cp}imgs/class-thumbnail.jpg" class="img-fluid"></a>
			                	<div class="stars clearfix d-block mt-2">
									<c:forEach begin="1" end="5" varStatus="tus">
										<c:choose>
											<c:when test="${scores[status.index] ge tus.count}">
												<i class="float-start text-warning fa-solid fa-star small"></i>
											</c:when>
											<c:when test="${scores[status.index] ge tus.count - 0.5 and scores[status.index] lt tus.count}">
												<i class="float-start text-warning fa-solid fa-star-half-stroke small"></i>
											</c:when>
											<c:otherwise>
												<i class="float-start text-warning fa-regular fa-star small"></i>
											</c:otherwise>
										</c:choose>
									</c:forEach>
									<p class="text-secondary small m-0 p-0 text-end">조회수: ${s.viewCount}</p>
								</div>
								<a href="${cp}oneday/view?cbno=${s.cbno}" class="text-decoration-none text-dark">${s.title}</a>
			                </div>
			            </div>
					</c:forEach>
				</div>
				<p class="text-center mt-4"><a href="#" class="text-secondary">더보기</a></p>
			</main>
			<jsp:include page="../../common/footer.jsp" />
		</div>
	</body>
</html>