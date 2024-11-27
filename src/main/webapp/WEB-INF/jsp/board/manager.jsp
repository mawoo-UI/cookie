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
		<nav class="navbar navbar-light bg-light fixed-top">
        	<div class="container-fluid">
	      		<a class="navbar-brand" href="#"></a>
          		<button class="navbar-toggler-start" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar" >
            		<span class="navbar-toggler-icon"></span>
          		</button>
          		<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasNavbar" aria-labelledby="offcanvasNavbarLabel">
	            <div class="offcanvas-header">
	              	<h5 class="offcanvas-title" id="offcanvasNavbarLabel">Coockie new coockie</h5>
	             <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
	            </div>
	            <div class="offcanvas-body">
	            	<ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
		           	    <li class="nav-item text ">
		               		<a class="nav-link active" aria-current="page" href="#">Home</a>
		                </li>
		                <li class="nav-item">
		                  	<a class="nav-link" href="#">회원관리</a>
		                </li>
		                <li class="nav-item">
		                  	<a class="nav-link" href="#">블랙리스트</a>
		                </li>
		                <li class="nav-item">
		                  	<a class="nav-link" href="#">공지 관리</a>
		                </li>
		                <li class="nav-item">
		                  	<a class="nav-link" href="#">게시판 관리</a>
		                </li>
		                <li class="nav-item">
		                  	<a class="nav-link" href="#">이벤트 관리</a>
		                </li>
		                <li class="nav-item">
		                  	<a class="nav-link" href="#">클래스 관리</a>
		                </li>
		                <li class="nav-item">
		                  	<a class="nav-link" href="#">리뷰 관리</a>
		                </li>
		             </ul>
	          </div>
	       </div>
      	</div>
    </nav>
</main>
	<!-- 풋터 -->
	<jsp:include page="../../common/footer.jsp" /> 
	</div>
</body>
</html>