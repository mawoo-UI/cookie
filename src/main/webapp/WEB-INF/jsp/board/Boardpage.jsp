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
		<div class="container mt-3">
        <div>
            <h1 class="text-center ">글작성</h1>
        </div>
        <table class="table table-hover">
            <thead>
                <input type="text" class="form-control" placeholder="제목입력">
            </thead> 
            <button type="button" class="btn btn-Light float-end " data-bs-toggle="dropdown">
                <i class="fa-solid fa-sort-down" style="color: #443722;"></i>
                카테고리
            </button>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="BoardFree_bulletin_board.html">자유게시판</a></li>
                <li><a class="dropdown-item" href="BoardArea .html">지역게시판</a></li>
            </ul>
            <thead>
                <textarea class="form-control" rows="5" id="comment" name="text" placeholder="내용입력"></textarea>
            </thead> 
            <thead>
                <input type="file" class="form-control" placeholder="첨부파일" i class="fa-solid fa-paperclip">
                <!-- <i class="fa-solid fa-paperclip"></i> -->
            </thead> 
        </table>   
        
        <!-- <button type="button" class="btn btn-Light " data-bs-toggle="dropdown">
            <i class="fa-solid fa-sort-down" style="color: #443722;"></i>
            선택하기
        </button>
        <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">최신 등록순</a></li>
            <li><a class="dropdown-item" href="#">오래된순</a></li>
            <li><a class="dropdown-item" href="#">인기순</a></li>
        </ul> -->
        
        <table class="table table-hover">
            <thead>
                <tr>
                    <th class="text-center"></th>
                    <th class="text-center"></th>
                    <th class="text-center"></th>
                    <th class="text-center"></th>
                    <th class="text-center"></th>
                </tr>
            </thead>
        </table>
        <div class="d-grid gap-2 d-md-block">
            <button type="button" class="btn btn-cookie-secondary btn-sm">삭제하기</button>
            <a href="#" class="btn btn-cookie btn-sm float-end" >수정</a>
            <a href="#" class="btn btn-cookie-secondary btn-sm mx-2 float-end" >등록</a>
        </div>
      </div>
	</main>
		<!-- 풋터 -->
		<jsp:include page="../../common/footer.jsp" />
	</div>
</body>
</html>