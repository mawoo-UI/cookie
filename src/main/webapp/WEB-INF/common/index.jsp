<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="head.jsp" />
		<!-- <style>
		   .layer-popup {width: 420px; position: absolute; top: 150px; left: (50%- 210px); display: none;}
	       .layer-popup img {display: block;}
	       .layer-popup p { background-color: rgb(130, 212, 247); color: antiquewhite; padding: 8px;}
	       .layer-popup p input {vertical-align: middle;}
	       .layer-popup p a {color: aquamarine; text-decoration: none; float: right };
		</style> -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-cookie/1.4.1/jquery.cookie.min.js" integrity="sha512-3j3VU6WC5rPQB4Ld1jnLV7Kd5xr+cq9avvhwqzbH/taCRNURoeEpoPBK9pDyeukwSxwRPJ8fDgvYXd6SkaZ2TA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	</head>
	<body class="gowun-dodum-regular">
		<div class="wrap">
			<header class="container-fluid mb-0">
			    <div class="container clearfix p-2 pb-0">
			        <div class="row my-2">
			            <a href="${cp}index" class="logo-cookie p-3"><img src="${cp}imgs/logo.png" alt="로고" class="img-fluid" width="250"></a>
			            <div class="col-9">
			                <div class="clearfix">
			                    <h1 class="fw-bold p-3 float-start"><a href="${cp}index" class="text-dark text-decoration-none">Cookie new cookie</a></h1>
			                    <div class="input-group mt-2 p-3 w-25 float-start">
			                        <input type="text" class="form-control" placeholder="검색어 입력" name="keyword" value="">
			                        <button class="btn btn-cookie" type="submit"><i class="fa-solid fa-magnifying-glass font-icon-cookie"></i></button>
			                    </div>
			                </div>
			            </div>
			            <c:if test="${empty member}">
				            <div class="col-1 p-0 text-end">
				                <a href="${cp}member/signup" class="btn btn-cookie-secondary my-4 px-2">회원가입</a>
				            </div>
				            <div class="col-1 p-0 text-center">
				                <a href="${cp}member/signin" class="btn btn-cookie my-4">로그인</a>
				            </div>
			            </c:if>
			            <c:if test="${not empty member}">
			            	<div class="col-2">
			            		<p class="text-cookie mt-1"><a href="${cp}member/mypage" class="text-cookie-secondary fw-bold">${member.nick}</a>님 환영합니다</p>
			            		<a href="${cp}member/logout" class="btn btn-cookie-secondary px-2">로그아웃</a>
			            		<span class="text-cookie-secondary small">실명 : </span><a href="${cp}member/mypage" class="${empty member.name ? 'text-danger' : 'text-primary'}">${empty member.name ? '미인증' : '인증됨'} </a>
			            		<span class="text-cookie-secondary small">주소 : </span><a href="${cp}member/mypage" class="${empty member.name ? 'text-danger' : 'text-primary'}">${empty member.addr ? '미인증' : '인증됨'} </a>
			            		<c:if test="${member.admin}">
			            		<a class="text-cookie-secondary small" href="${cp}admin/">관리자페이지</a>
			            		</c:if>
			            		
			            	</div>
			            	
			            </c:if>
			        </div>
			    </div>
			    <hr class="mb-0">
			</header>
			<main class="container">
				<div class="bxslider pb-0">
					<div><img src="${cp}imgs/slider-1.jpg" /></div>
					<div><img src="${cp}imgs/slider-2.jpg" /></div>
					<div><img src="${cp}imgs/slider-3.jpg" /></div>
					<div><img src="${cp}imgs/slider-1.jpg" /></div>
					<div><img src="${cp}imgs/slider-2.jpg" /></div>
				</div>
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
						<li><a class="dropdown-item mx-5" href="${cp}/board/list?category=1">취미 모임</a></li>
						<li class="nav-item dropdown mx-5">
							<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">커뮤니티</a>
							<ul class="dropdown-menu dropdown-cookie">
								<li><a class="dropdown-item" href="${cp}/board/list?category=2">자유게시판</a></li>
								<li><a class="dropdown-item" href="${cp}/board/list?category=3">지역게시판</a></li>
							</ul>
						</li>
						<li><a class="dropdown-item mx-5" href="${cp}/board/list?category=4">공지사항</a></li>
						<li><a class="dropdown-item mx-5" href="${cp}/board/list?category=5">이벤트</a></li>
						<li><a class="dropdown-item mx-5" href="${cp}/member/mypage">마이페이지</a></li>
					</ul>
				</nav>
				<hr class="m-0 text-cookie-secondary">
				<div class="row mt-3">
					<div class="col-6 border-cookie-right">
						<h6 class="fw-bold text-center"><img src="imgs/icon.png" alt="로고" class="img-fluid icon-cookie">인기 클래스</h6>
						<div class="d-flex justify-content-around">
							<c:forEach items="${trendList}" var="trend">
								<div class="mt-2 p-0 float-start w-25">
									<a href="${cp}oneday/view?cbno=${trend.cbno}" class="text-decoration-none text-dark"><img src="${cp}imgs/class-thumbnail.jpg" alt="클래스썸네일" class="img-fluid" width="150"><br>${trend.title}</a>
								</div>
							</c:forEach>
							<%-- <div class="mt-2 p-0 float-start w-25">
								<a href="${cp}oneday/view" class="text-decoration-none text-dark"><img src="${cp}imgs/class-thumbnail.jpg" alt="로고" class="img-fluid" width="150"><br>강아지 수제 간식 만들기 클래스</a>
							</div>
							<div class="mt-2 p-0 float-start w-25">
								<a href="${cp}oneday/view" class="text-decoration-none text-dark"><img src="${cp}imgs/class-thumbnail.jpg" alt="로고" class="img-fluid" width="150"><br>강아지 수제 간식 만들기 클래스</a>
							</div> --%>
						</div>
					</div>
					<div class="col-6">
						<h6 class="fw-bold text-center"><img src="imgs/icon-3.png" alt="로고" class="img-fluid icon-cookie">인기 게시글</h6>
						<ul class="list-group mx-4">
							<li class="list-group-item list-group-item-action border-0">
								<a href="#" class="text-decoration-none text-dark float-start">[공지] | 홈페이지 개편 안내</a>
								<a href="#" class="text-decoration-none text-secondary small float-end">조회수 132</a>
							</li>
							<li class="list-group-item list-group-item-action border-0">
								<a href="#" class="text-decoration-none text-dark float-start">[공지] | 원데이 클래스 개설 신청서 양식</a>
								<a href="#" class="text-decoration-none text-secondary small float-end">조회수 368</a>
							</li>
							<li class="list-group-item list-group-item-action border-0">
								<a href="#" class="text-decoration-none text-dark float-start">[자유] | 체리를 부르면 체리블라썸~ 푸하하</a>
								<a href="#" class="text-decoration-none text-secondary small float-end">댓글 44 조회수 232</a>
							</li>
							<li class="list-group-item list-group-item-action border-0">
								<a href="#" class="text-decoration-none text-dark float-start">[자유] | binary는 호남선 </a>
								<a href="#" class="text-decoration-none text-secondary small float-end">댓글 32 조회수 211</a>
							</li>
							<li class="list-group-item list-group-item-action border-0">
								<a href="#" class="text-decoration-none text-dark float-start">[지역] | 이번 주말에 강아지 데리고 놀러가실 분(경기)</a>
								<a href="#" class="text-decoration-none text-secondary small float-end">댓글 25 조회수 132</a>
							</li>
							<li class="list-group-item list-group-item-action border-0">
								<a href="#" class="text-decoration-none text-dark float-start">[자유] | 뜨개질 클래스 들으신 분 계신가여</a>
								<a href="#" class="text-decoration-none text-secondary small float-end">댓글 8 조회수 101</a>
							</li>
						</ul>
					</div>
				</div>
			</main>
			<jsp:include page="footer.jsp" />
		</div>
		<script>
	        $('.bxslider').bxSlider({
	            auto: true,
	            // autoControls: true,
	            // stopAutoOnClick: true,
	            pager: true,
	            slideWidth: 0,
	            speed: 500,
	            adaptiveHeightSpeed: 300,
	            wrapperClass:'bx-wrapper mb-5 p-0'
	        });
	    </script>
	    <div class="modal fade" id="ajeModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">오늘의 아재</h5>
		      </div>
		      <div class="modal-body">
		      	<h3></h3>
		      	<div class="d-grid my-3">
		      	<button type="button" data-bs-toggle="collapse" class="btn btn-cookie btn-block" data-bs-target="#answer">아재되기</button>
		      	</div>
		      	<div class="clearfix my-3 h-0">
			      	<p class="collapse float-start" id="answer"></p>
			      	<button type="button" class="btn btn-secondary float-end d-none btn-my-close" data-bs-dismiss="modal">Close</button>
	      		</div> 
	      		<div class="layer-popup text-end hide">
					<label class=" "><input  type= "checkbox" class="checkbox-stop"> 오늘은 그만 보기</label> 
		      	</div>
	
	
		      </div>
		    </div>
		  </div>
		</div>
		<script>
		$(function() {
			const ajeModal = new bootstrap.Modal($("#ajeModal").get(0), {
				backdrop : false
			});
			$("#ajeModal").on("show.bs.modal", function() {
				$.getJSON("${cp}aje/ajax").done(data => {
					sessionStorage.setItem("aje", data);
					$("#ajeModal .modal-body h3").text(data.quiz) 
					$("#ajeModal .modal-body p").text(data.answer);
				});
			})
			$("#ajeModal .modal-body button[data-bs-toggle]").click(() => $("#ajeModal [data-bs-dismiss]").removeClass("d-none").parent().next().removeClass("hide"));
			/* $("#ajeModal").on("hide.bs.modal", function() {
				$("#ajeModal .modal-body p").slideDown(1000);
			}) */
			//ajeModal.show();
			//$("#ajeModal").modal("show");
			
			if(!$.cookie("layer")){
	    		//$(".layer-popup").show();
				//ajeModal.show();
				ajeModal.show();
		    }
		    $(".btn-my-close").click(function () {
				event.preventDefault();
		    	const checked = $(".checkbox-stop").prop("checked");
				console.log(checked);
				if(checked) {
					$.cookie('layer', 'yes', {expires: 1});
				}
				ajeModal.hide();
			})
		})
		
		</script>
	    <div class="toast-container position-absolute p-3 bottom-0 end-0" id="toastPlacement" data-original-class="toast-container position-absolute p-3">
	        <div class="toast fade show">
	            <div class="toast-header bg-cookie">
	            <img src="${cp}imgs/free-icon-cookie-2682369.png" class="rounded me-2" alt="..." style="width: 24px;">
	
	            <strong class="text-cookie-secondary me-2">인기이벤트</strong>
	            <img src="${cp}imgs/free-icon-cookie-2682369.png" class="rounded me-auto" alt="..." style="width: 24px;">
	            
	            <small class="text-cookie-secondary ">11 분전</small>
	            <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
	            </div>
	            <div class="toast-body">
	                <a href="${cp}/board/list?category=5" class="fw-bold text-cookie-secondary">치킨집 추천</a>
	                <div class="float-end">
	                    <div><span class="badge bg-cookie pb-1 pt-2"> <i class="fa-solid fa-heart text-danger"></i> 125</span></div>
	                </div>
	            </div>
	        </div>
	    </div>
	</body>
</html>