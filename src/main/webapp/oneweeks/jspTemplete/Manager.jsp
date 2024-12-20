<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bxslider@4.2.17/dist/jquery.bxslider.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/css/bootstrap.min.css" integrity="sha512-jnSuA4Ss2PkkikSOLtYs8BlYIeeIK1h99ty4YfvRPAlzr377vr3CXDb7sb7eEEBYjDtcYj+AjBH3FLv5uSJuXg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css" integrity="sha512-Kc323vGBEqzTmouAECnVceyQqyqdsSiqLQISBL29aUW4U/M7pSPA/gEUZQqv1cwx4OnYxTxve5UMg5GT6L4JJg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel='stylesheet'href='../css/style.css'>
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.7.1.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bxslider@4.2.17/dist/jquery.bxslider.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.3/js/bootstrap.bundle.min.js" integrity="sha512-7Pi/otdlbbCR+LnW+F7PwFcSDJOuUJB3OxtEHbg4vSMvzvJjde4Po1v4BR9Gdc9aXNUNFVUY+SK51wWT8WF0Gg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<%-- <jsp:include page="../../common/head.jsp" /> --%>
</head>
<body>
	<div class="wrap">
<%-- 		<jsp:include page="../../common/header.jsp" /> --%>
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
		<%-- <jsp:include page="../../common/footer.jsp" /> --%>
	</div>
</body>
</html>