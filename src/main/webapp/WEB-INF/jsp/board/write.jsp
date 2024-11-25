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
		<main class="container mt-3">
		<form method="post">
	        <div>
	            <h2 class="text-center my-4">글작성</h2>
	        </div>
            <input type="text" class="form-control" name="title" placeholder="제목을 입력하세요">
            
            <!-- 
            <button type="button" class="btn btn-Light float-end " data-bs-toggle="dropdown">
            	<i class="fa-solid fa-sort-down" style="color: #443722;"></i>
                카테고리
            </button>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="BoardFreebulletin_board.html">자유게시판</a></li>
                <li><a class="dropdown-item" href="BoardArea .html">지역게시판</a></li>
            </ul> -->
            <select class="form-select my-3" name="cno">
			  <option value="1">취미/모임</option>
			  <option value="2">자유게시판</option>
			  <option value="3">지역게시판</option>
			</select>
            <textarea class="form-control my-3" rows="5" name="content" placeholder="내용을 입력하세요"></textarea>
            <input type="text" class="form-control my-3" name="writer" placeholder="작성자">
            <input type="file" class="form-control my-3" placeholder="첨부파일" >
                <!-- <i class="fa-solid fa-paperclip"></i> -->
	        <div class="d-grid gap-2 d-md-block clearfix">
	            <button class="btn btn-cookie-secondary btn-sm mx-2 float-end"  >등록</button>
	        </div>
	    </form>
		</main>
		<!-- 풋터 -->
		<jsp:include page="../../common/footer.jsp" />
	</div>

</body>
</html>