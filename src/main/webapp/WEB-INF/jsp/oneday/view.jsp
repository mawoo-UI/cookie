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
				<div class="d-flex justify-content-around my-3">
					<div class="mt-4">
						<img src="${cp}imgs/class-thumbnail.jpg" alt="썸네일" class="img-fluid oneday-view-cookie">
					</div>
					<div class="mt-4">
						<div class="clearfix">
							<h3 class="fw-bold mb-4">강아지 수제 간식 만들기 클래스</h3>
							<h4 class="float-start text-warning p-0 m-0"><i class="fa-solid fa-star"></i></h4>
							<p><a href="${cp}oneday/regclass" class="btn btn-cookie float-end">신청하기</a></p>
						</div>
						<hr class="text-cookie-secondary">
						<div class="my-2">
							<p><i class="fa-solid fa-location-dot fa-lg font-icon-cookie px-2"></i>공방 위치: 서울특별시 구로구 123-45 ㅇㅇ건물</p>
							<p><i class="fa-regular fa-calendar-check fa-lg font-icon-cookie px-2"></i>진행 날짜: 2024/11/28, 2024/11/29</p>
							<p><i class="fa-solid fa-sack-dollar fa-lg font-icon-cookie px-2"></i>수강 비용: 40,000원</p>
							<p><i class="fa-solid fa-user-group fa-lg font-icon-cookie px-2"></i>수강 정원: 12명</p>
							<p><i class="fa-regular fa-clock fa-lg font-icon-cookie px-2"></i>소요 시간: 3시간 (상황에 따라 달라질 수 있습니다.)</p>
						</div>
						<div class="text-center mt-5">
							<a href="${cp}oneday/list" class="btn btn-cookie-secondary px-5">목록</a>
						</div>
					</div>
				</div>
				<div class="row mt-5">
					<div class="cookie-menu-detail col-6 p-0 text-center fw-bold border-cookie-right border-cookie-bottom"><p>상세 설명<p></div>
					<div class="cookie-menu-review col-6 p-0 text-center border-cookie-bottom"><p>리뷰(15)</p></div>
				</div>
				<div class="cookie-detail my-5 px-5 d-block">
					<hr class="text-cookie-secondary my-3">
					<pre>
					
<i class="fa-solid fa-magnifying-glass fa-lg text-dark px-2"></i>커리큘럼 소개
 <i class="fa-solid fa-arrow-right fa-lg text-dark px-2"></i>재료 설명
 <i class="fa-solid fa-arrow-right fa-lg text-dark px-2"></i>강아지 알러지 확인
 <i class="fa-solid fa-arrow-right fa-lg text-dark px-2"></i>사용 도구 소개
 <i class="fa-solid fa-arrow-right fa-lg text-dark px-2"></i>요리 진행
					</pre>
					<hr class="text-cookie-secondary my-3">
					<img src="${cp}imgs/detail-1.jpg" alt="상세사진" class="img-fluid my-4 text-center">
					<hr class="text-cookie-secondary my-3">
					<img src="${cp}imgs/detail-2.jpg" alt="상세사진" class="img-fluid my-4">
					<hr class="text-cookie-secondary my-3">
					<pre class="bg-cookie border-cookie-detail">
					
	! 신청서에 강아지가 좋아하는 음식을 사전에 기재해 주시면 추가로 따로 재료를 준비해 드려요 ! 
	
	! 재료 추가 시 별도로 비용이 청구될 수 있어요 :)
					
					</pre>
				</div>
				<div class="cookie-review mx-3 mt-3 d-none">
					<div class="review-content d-flex justify-content-around">
						<div class="mx-3 mt-5 p-3 col-2 card dropdown-cookie">
							<img src="${cp}imgs/class-thumbnail.jpg" alt="로고" class="img-fluid" onerror="this.src='https://placehold.co/140x174?text=No+Image'">
							<div class="stars clearfix d-block my-2">
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star-half-stroke small"></i></h6>
							</div>
							<p class="text-truncate mb-1 small">정말 재미있고 사장님이 친절하게 알려주셨어요</p>
							<p class="text-end text-secondary small mb-1">이틀 전 | 허정윤</p>
						</div>
						<div class="mx-3 mt-5 p-3 col-2 card dropdown-cookie">
							<img src="${cp}imgs/class-thumbnail.jpg" alt="로고" class="img-fluid" onerror="this.src='https://placehold.co/140x174?text=No+Image'">
							<div class="stars clearfix d-block my-2">
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star-half-stroke small"></i></h6>
							</div>
							<p class="text-truncate mb-1 small">정말 재미있고 사장님이 친절하게 알려주셨어요</p>
							<p class="text-end text-secondary small mb-1">이틀 전 | 허정윤</p>
						</div>
						<div class="mx-3 mt-5 p-3 col-2 card dropdown-cookie">
							<img src="${cp}imgs/class-thumbnail.jpg" alt="로고" class="img-fluid" onerror="this.src='https://placehold.co/140x174?text=No+Image'">
							<div class="stars clearfix d-block my-2">
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star-half-stroke small"></i></h6>
							</div>
							<p class="text-truncate mb-1 small">정말 재미있고 사장님이 친절하게 알려주셨어요</p>
							<p class="text-end text-secondary small mb-1">이틀 전 | 허정윤</p>
						</div>
						<div class="mx-3 mt-5 p-3 col-2 card dropdown-cookie">
							<img src="${cp}imgs/class-thumbnail.jpg" alt="로고" class="img-fluid" onerror="this.src='https://placehold.co/140x174?text=No+Image'">
							<div class="stars clearfix d-block my-2">
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star-half-stroke small"></i></h6>
							</div>
							<p class="text-truncate mb-1 small">정말 재미있고 사장님이 친절하게 알려주셨어요</p>
							<p class="text-end text-secondary small mb-1">이틀 전 | 허정윤</p>
						</div>
						<div class="mx-3 mt-5 p-3 col-2 card dropdown-cookie">
							<img src="${cp}imgs/class-thumbnail.jpg" alt="로고" class="img-fluid" onerror="this.src='https://placehold.co/140x174?text=No+Image'">
							<div class="stars clearfix d-block my-2">
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star-half-stroke small"></i></h6>
							</div>
							<p class="text-truncate mb-1 small">정말 재미있고 사장님이 친절하게 알려주셨어요</p>
							<p class="text-end text-secondary small mb-1">이틀 전 | 허정윤</p>
						</div>
					</div>
					<div class="review-content d-flex justify-content-around">
						<div class="mx-3 mt-5 p-3 col-2 card dropdown-cookie">
							<img src="${cp}imgs/class-thumbnail.jpg" alt="로고" class="img-fluid" onerror="this.src='https://placehold.co/140x174?text=No+Image'">
							<div class="stars clearfix d-block my-2">
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star-half-stroke small"></i></h6>
							</div>
							<p class="text-truncate mb-1 small">정말 재미있고 사장님이 친절하게 알려주셨어요</p>
							<p class="text-end text-secondary small mb-1">이틀 전 | 허정윤</p>
						</div>
						<div class="mx-3 mt-5 p-3 col-2 card dropdown-cookie">
							<img src="${cp}imgs/class-thumbnail.jpg" alt="로고" class="img-fluid" onerror="this.src='https://placehold.co/140x174?text=No+Image'">
							<div class="stars clearfix d-block my-2">
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star-half-stroke small"></i></h6>
							</div>
							<p class="text-truncate mb-1 small">정말 재미있고 사장님이 친절하게 알려주셨어요</p>
							<p class="text-end text-secondary small mb-1">이틀 전 | 허정윤</p>
						</div>
						<div class="mx-3 mt-5 p-3 col-2 card dropdown-cookie">
							<img src="${cp}imgs/class-thumbnail.jpg" alt="로고" class="img-fluid" onerror="this.src='https://placehold.co/140x174?text=No+Image'">
							<div class="stars clearfix d-block my-2">
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star-half-stroke small"></i></h6>
							</div>
							<p class="text-truncate mb-1 small">정말 재미있고 사장님이 친절하게 알려주셨어요</p>
							<p class="text-end text-secondary small mb-1">이틀 전 | 허정윤</p>
						</div>
						<div class="mx-3 mt-5 p-3 col-2 card dropdown-cookie">
							<img src="${cp}imgs/class-thumbnail.jpg" alt="로고" class="img-fluid" onerror="this.src='https://placehold.co/140x174?text=No+Image'">
							<div class="stars clearfix d-block my-2">
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star-half-stroke small"></i></h6>
							</div>
							<p class="text-truncate mb-1 small">정말 재미있고 사장님이 친절하게 알려주셨어요</p>
							<p class="text-end text-secondary small mb-1">이틀 전 | 허정윤</p>
						</div>
						<div class="mx-3 mt-5 p-3 col-2 card dropdown-cookie">
							<img src="${cp}imgs/class-thumbnail.jpg" alt="로고" class="img-fluid" onerror="this.src='https://placehold.co/140x174?text=No+Image'">
							<div class="stars clearfix d-block my-2">
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star-half-stroke small"></i></h6>
							</div>
							<p class="text-truncate mb-1 small">정말 재미있고 사장님이 친절하게 알려주셨어요</p>
							<p class="text-end text-secondary small mb-1">이틀 전 | 허정윤</p>
						</div>
					</div>
					<div class="review-content d-flex justify-content-around">
						<div class="mx-3 mt-5 p-3 col-2 card dropdown-cookie">
							<img src="${cp}imgs/class-thumbnail.jpg" alt="로고" class="img-fluid" onerror="this.src='https://placehold.co/140x174?text=No+Image'">
							<div class="stars clearfix d-block my-2">
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star-half-stroke small"></i></h6>
							</div>
							<p class="text-truncate mb-1 small">정말 재미있고 사장님이 친절하게 알려주셨어요</p>
							<p class="text-end text-secondary small mb-1">이틀 전 | 허정윤</p>
						</div>
						<div class="mx-3 mt-5 p-3 col-2 card dropdown-cookie">
							<img src="${cp}imgs/class-thumbnail.jpg" alt="로고" class="img-fluid" onerror="this.src='https://placehold.co/140x174?text=No+Image'">
							<div class="stars clearfix d-block my-2">
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star-half-stroke small"></i></h6>
							</div>
							<p class="text-truncate mb-1 small">정말 재미있고 사장님이 친절하게 알려주셨어요</p>
							<p class="text-end text-secondary small mb-1">이틀 전 | 허정윤</p>
						</div>
						<div class="mx-3 mt-5 p-3 col-2 card dropdown-cookie">
							<img src="${cp}imgs/class-thumbnail.jpg" alt="로고" class="img-fluid" onerror="this.src='https://placehold.co/140x174?text=No+Image'">
							<div class="stars clearfix d-block my-2">
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star-half-stroke small"></i></h6>
							</div>
							<p class="text-truncate mb-1 small">정말 재미있고 사장님이 친절하게 알려주셨어요</p>
							<p class="text-end text-secondary small mb-1">이틀 전 | 허정윤</p>
						</div>
						<div class="mx-3 mt-5 p-3 col-2 card dropdown-cookie">
							<img src="${cp}imgs/class-thumbnail.jpg" alt="로고" class="img-fluid" onerror="this.src='https://placehold.co/140x174?text=No+Image'">
							<div class="stars clearfix d-block my-2">
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star-half-stroke small"></i></h6>
							</div>
							<p class="text-truncate mb-1 small">정말 재미있고 사장님이 친절하게 알려주셨어요</p>
							<p class="text-end text-secondary small mb-1">이틀 전 | 허정윤</p>
						</div>
						<div class="mx-3 mt-5 p-3 col-2 card dropdown-cookie">
							<img src="${cp}imgs/class-thumbnail.jpg" alt="로고" class="img-fluid" onerror="this.src='https://placehold.co/140x174?text=No+Image'">
							<div class="stars clearfix d-block my-2">
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star small"></i></h6>
								<h6 class="float-start text-warning p-1 m-0"><i class="fa-solid fa-star-half-stroke small"></i></h6>
							</div>
							<p class="text-truncate mb-1 small">정말 재미있고 사장님이 친절하게 알려주셨어요</p>
							<p class="text-end text-secondary small mb-1">이틀 전 | 허정윤</p>
						</div>
					</div>
					<p class="text-center mt-4"><a href="#" class="text-secondary">더보기</a></p>
				</div>
			</main>
			<jsp:include page="../../common/footer.jsp" />
		</div>
		<script>
			$(".cookie-menu-detail").click(function() {
				$(this).hasClass('fw-bold') ? '' : $(this).addClass('fw-bold');
				$('.cookie-menu-review').hasClass('fw-bold') ? $('.cookie-menu-review').removeClass('fw-bold') : '';
				$('.cookie-detail').hasClass('d-none') ? $('.cookie-detail').removeClass('d-none') : '';
				$('.cookie-review').hasClass('d-none') ? '' : $('.cookie-review').addClass('d-none');
			});

			$(".cookie-menu-review").click(function() {
				$(this).hasClass('fw-bold') ? '' : $(this).addClass('fw-bold');
				$('.cookie-menu-detail').hasClass('fw-bold') ? $('.cookie-menu-detail').removeClass('fw-bold') : '';
				$('.cookie-review').hasClass('d-none') ? $('.cookie-review').removeClass('d-none') : '';
				$('.cookie-detail').hasClass('d-none') ? '' : $('.cookie-detail').addClass('d-none');
			});
		</script>
	</body>
</html>