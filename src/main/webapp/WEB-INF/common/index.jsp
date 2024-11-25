<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="head.jsp" />
	</head>
	<body>
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
			            <div class="col-2">
			                <a href="signup" class="btn btn-cookie-secondary my-4">회원가입</a>
			                <a href="signin" class="btn btn-cookie my-4">로그인</a>
			            </div>
			        </div>
			    </div>
			    <hr class="mb-0">
			</header>
			<main class="container">
				<div class="bxslider pb-0">
					<div><img src="imgs/slider-1.jpg" /></div>
					<div><img src="imgs/slider-2.jpg" /></div>
					<div><img src="imgs/slider-3.jpg" /></div>
					<div><img src="imgs/slider-1.jpg" /></div>
					<div><img src="imgs/slider-2.jpg" /></div>
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
						<li><a class="dropdown-item mx-5" href="#">취미 모임</a></li>
						<li class="nav-item dropdown mx-5">
							<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">커뮤니티</a>
							<ul class="dropdown-menu dropdown-cookie">
								<li><a class="dropdown-item" href="#">자유게시판</a></li>
								<li><a class="dropdown-item" href="#">지역게시판</a></li>
							</ul>
						</li>
						<li><a class="dropdown-item mx-5" href="#">공지사항</a></li>
						<li><a class="dropdown-item mx-5" href="#">마이페이지</a></li>
					</ul>
				</nav>
				<hr class="m-0 text-cookie-secondary">
				<div class="row mt-3">
					<div class="col-6 border-cookie-right">
						<h6 class="fw-bold text-center"><img src="imgs/icon.png" alt="로고" class="img-fluid icon-cookie">인기 클래스</h6>
						<div class="d-flex justify-content-around">
							<div class="mt-2 p-0 float-start w-25">
								<a href="#" class="text-decoration-none text-dark"><img src="imgs/class-thumbnail.jpg" alt="로고" class="img-fluid" width="150"><br>강아지 수제 간식 만들기 클래스</a>
							</div>
							<div class="mt-2 p-0 float-start w-25">
								<a href="#" class="text-decoration-none text-dark"><img src="imgs/class-thumbnail.jpg" alt="로고" class="img-fluid" width="150"><br>강아지 수제 간식 만들기 클래스</a>
							</div>
							<div class="mt-2 p-0 float-start w-25">
								<a href="#" class="text-decoration-none text-dark"><img src="imgs/class-thumbnail.jpg" alt="로고" class="img-fluid" width="150"><br>강아지 수제 간식 만들기 클래스</a>
							</div>
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
	</body>
</html>