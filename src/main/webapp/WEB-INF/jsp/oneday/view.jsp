<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="../../common/head.jsp" />
		<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.30.1/moment-with-locales.min.js" integrity="sha512-4F1cxYdMiAW98oomSLaygEwmCnIP38pb4Kx70yQYqRwLVCs3DbRumfBq82T08g/4LJ/smbFGFpmeFlQgoDccgg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	</head>
	<body class="gowun-dodum-regular">
		<div class="wrap">
			<jsp:include page="../../common/header.jsp" />
			<main class="container">
				<div class="d-flex justify-content-around my-3">
					<div class="mt-4">
						<img src="${cp}imgs/class-thumbnail.jpg" alt="썸네일" class="img-fluid oneday-view-cookie">
					</div>
					<div class="mt-4">
						<div class="clearfix">
							<h3 class="fw-bold mb-4 text-center">${classItem.title}</h3>
							<div class="float-start">
								<a href="#" class="mx-3 btn btn-white text-cookie favorite">
									<c:if test="${empty fav}">
										<i class="fa-regular fa-bookmark fa-xl"></i>
									</c:if>		
									<c:if test="${not empty fav}">
										<i class="fa-solid fa-bookmark fa-xl"></i>
									</c:if>	
								</a>
								<p class="text-cookie-secondary text-center small m-0">즐겨찾기</p>
							</div>
							<p><a href="${cp}oneday/regclass?cbno=${param.cbno}" class="btn btn-cookie float-end mt-2">신청하기</a></p>
						</div>
						<hr class="text-cookie-secondary my-2">
						<div class="my-2">
							<p><i class="fa-solid fa-location-dot fa-lg font-icon-cookie px-2"></i>공방 위치: ${classOne.location}</p>
							<p><i class="fa-regular fa-calendar-check fa-lg font-icon-cookie px-2"></i>
								<c:forEach items="${classList}" var="c" varStatus="status">
									<c:if test="${not status.last}">
										<fmt:formatDate value="${c.startdate}" pattern="yyyy/MM/dd" />,								
									</c:if>
									<c:if test="${status.last}">
										<fmt:formatDate value="${c.startdate}" pattern="yyyy/MM/dd" />
									</c:if>
								</c:forEach>
							</p>
							<p><i class="fa-solid fa-sack-dollar fa-lg font-icon-cookie px-2"></i>수강 비용: <fmt:formatNumber value="${classOne.price}" type="number" maxFractionDigits="3" ></fmt:formatNumber>원</p>
							<p><i class="fa-solid fa-user-group fa-lg font-icon-cookie px-2"></i>수강 정원: ${classOne.max}명</p>
							<p><i class="fa-solid fa-image-portrait fa-xl font-icon-cookie px-2"></i> 진행 강사: ${host}</p>
							<p><i class="fa-regular fa-clock fa-lg font-icon-cookie px-2"></i>소요 시간: ${classOne.dutime} (상황에 따라 달라질 수 있습니다.)</p>
						</div>
						<div class="text-center mt-5">
							<a href="${cp}oneday/list" class="btn btn-cookie-secondary px-5">목록</a>
						</div>
					</div>
				</div>
				<div class="row mt-5">
					<div class="cookie-menu-detail col-6 p-0 text-center fw-bold border-cookie-right border-cookie-bottom"><p>상세 설명<p></div>
					<div class="cookie-menu-review col-6 p-0 text-center border-cookie-bottom"><p>리뷰(${count})</p></div>
				</div>
				<div class="cookie-detail my-5 px-5 d-block">
					${classItem.content}
					<%-- 
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
					
					</pre> --%>
				</div>
				<div class="cookie-review mx-3 mt-3 d-none row">
					<%-- <c:if test="${empty reviews}">
						<h4 class="text-center my-4">등록된 리뷰가 없습니다.</h4>
					</c:if>
					<c:forEach items="${reviews}" var="re">
						<div class="my-2 p-2 col-6 col-sm-4 col-lg-3 col-xl-2">
							<div class="p-3 card dropdown-cookie">
								<a href="${cp}oneday/review?cbno=${param.cbno}&reno=${re.reno}"><img src="${cp}imgs/class-thumbnail.jpg" alt="로고" class="img-fluid" ></a>
								<div class="stars clearfix d-block mt-2 mb-1">
									<c:forEach begin="1" end="5" varStatus="status">
										<c:if test="${re.score ge status.count}">
											<i class="float-start text-warning fa-solid fa-star small"></i>
										</c:if>
										<c:if test="${re.score lt status.count}">
											<i class="float-start text-warning fa-regular fa-star small"></i>
										</c:if>
									</c:forEach>
								</div>
								<a href="${cp}oneday/review?cbno=${param.cbno}&reno=${re.reno}" class="text-decoration-none text-dark text-truncate"><span class="mb-1 small">${re.content}</span></a>
								<p class="text-end text-secondary small mb-1"><span class="review-regdate"><fmt:formatDate value="${re.regdate}" pattern="yyyy/MM/dd HH:mm:ss"/></span> | ${re.writer}</p>
							</div>
						</div>
					</c:forEach>
					<c:if test="${not empty reviews}">
						<p class="text-center mt-4"><a href="#" class="text-secondary">더보기</a></p>
					</c:if> --%>
				</div>
				<p class="text-center mt-4"><a href="#" class="text-secondary show-more">더보기</a></p>
			</main>
			<jsp:include page="../../common/footer.jsp" />
		</div>
		<script src="${cp}js/review.js"></script>
		<script>
			moment.locale("ko")
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
				list();
			});
			
			$(".review-regdate").html((i, item) => {
				return moment(item, 'yyyy/MM/DD HH:mm:ss').fromNow() 
			})  
			
			$(".favorite").click(function() {
				event.preventDefault();
				
				const data = {cbno: '${classItem.cbno}', memberId: '${member.id}'};
				if(!data.memberId) {
					alert("로그인 후 이용하실 수 있습니다.");
					return;
				}
				const url = '${cp}' + "oneday/favorite";
				
				$.ajax({
					url: url,
					data: data,
					success : function(data) {
						$(".favorite i").toggleClass("fa-solid fa-regular");
					}
				});
			});

			function list(param) {
				param = param || {reno};
				reviewService.findReviews('${cp}', cbno, param, function(data) {

					if(!data.length) {
						$(".show-more")
						.text("마지막 페이지입니다.")
						.addClass("text-decoration-none")
						.click(function() {
							event.preventDefault();
						});
						return;
					}

					let str = "";
					for(let i in data) {
						str += makeLi(data[i]);
					} 
					$(".cookie-review").append(str);
				});
			};

			// 더보기 클릭 시
			$(".show-more").click(function() {
				event.preventDefault();

				const reno = $(".cookie-review > div:last").data("reno");
				list({reno});
			});

			function makeLi(review) {
				const score = '\${review.score}';
				let starStr='';
				for(let i = 1; i <= 5; i++) {
					if(score >= i) {
						starStr += '<i class="float-start text-warning fa-solid fa-star small"></i>';
					} else if((score >= i - 0.5) && (score < i)) {
						starStr += '<i class="float-start text-warning fa-solid fa-star-half-stroke small"></i>';
					} else {
						starStr += '<i class="float-start text-warning fa-regular fa-star small"></i>';
					}
				}

				return `<div class="my-2 p-2 col-6 col-sm-4 col-lg-3 col-xl-2" data-reno="\${review.reno}">
							<div class="p-3 card dropdown-cookie">
								<a href="${cp}oneday/review?cbno=${param.cbno}&reno=\${review.reno}"><img src="${cp}imgs/class-thumbnail.jpg" alt="로고" class="img-fluid" ></a>
								<div class="stars clearfix d-block mt-2 mb-1">` + 
									
								`</div>
								<a href="${cp}oneday/review?cbno=${param.cbno}&reno=\${review.reno}" class="text-decoration-none text-dark text-truncate"><span class="mb-1 small">\${review.content}</span></a>
								<p class="text-end text-secondary small mb-1"><span class="review-regdate">/* <fmt:formatDate value="\${review.regdate}" pattern="yyyy/MM/dd HH:mm:ss"/> */</span> | \${review.writer}</p>
							</div>
						</div>`;
			}
		</script>
	</body>
</html>