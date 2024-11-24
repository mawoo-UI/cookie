<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="../../common/head.jsp" />
	</head>
	<body>
		<div class="wrap">
			<jsp:include page="../../common/header.jsp" />
			<main class="container">
				<hr class="text-cookie-secondary my-5">
				<div class="clearfix">
					<div class="float-start border-cookie-right mx-5 px-4">
						<img src="imgs/class-thumbnail.jpg" alt="썸네일" class="img-fluid review-cookie mx-5">
					</div>
					<div class="py-1 mx-4 float-start">
						<form class="mx-4">
							<textarea rows="6" cols="65" id="content" name="content" class="form-control mt-2 border-0" readonly>
정말 재미있어요 호호~ 시간 가는 줄 모르고 만들었답니다 선생님이 설명을 너무너무 잘하셔서 쉽게 만들 수 있었고 아주 유익한 시간이었어요 다음에 기회가 된다면 다른 것도 만들어 보고 싶네용
							</textarea>
							<br>
							<input type="text" class="form-control border-0 text-secondary" id="writer" name="writer" readonly value="작성자: 허정윤">
							<div class="clearfix">
								<input type="text" class="form-control border-0 text-secondary float-start w-25 py-0" id="regdate" name="regdate" readonly value="2024/12/01">
								<div class="stars clearfix d-block mx-4 float-end px-4">
									<h5 class="float-start text-warning p-0 m-0"><i class="fa-solid fa-star small"></i></h5>
									<h5 class="float-start text-warning p-0 m-0"><i class="fa-solid fa-star small"></i></h5>
									<h5 class="float-start text-warning p-0 m-0"><i class="fa-solid fa-star small"></i></h5>
									<h5 class="float-start text-warning p-0 m-0"><i class="fa-solid fa-star small"></i></h5>
									<h5 class="float-start text-warning p-0 m-0"><i class="fa-solid fa-star-half-stroke small"></i></h5>
								</div>
							</div>
							<div class="text-center mt-5">
								<a class="btn btn-cookie-secondary mx2 mt-3 px-4">목록</a>
	                			<a class="btn btn-cookie mx-2 mt-3 px-4">신고</a>
                			</div>
							<div class="text-center mt-5 d-none">
								<a class="btn btn-cookie-secondary mx-1 mt-3 px-4">목록</a>
	                			<a class="btn btn-cookie mx-1 mt-3 px-4">수정</a>
	                			<a class="btn btn-cookie bg-white dropdown-cookie text-cookie-secondary mx-1 mt-3 px-4">삭제</a>
                			</div>
						</form>
					</div>
				</div>
				<hr class="text-cookie-secondary my-5">
			</main>
			<jsp:include page="../../common/footer.jsp" />
		</div>
	</body>
</html>