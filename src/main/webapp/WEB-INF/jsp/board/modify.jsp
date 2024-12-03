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
            <h2 class="text-center ">수정</h2>
        </div>
        <form method="post">
            <input type="text" class="form-control" name="title"  value="${board.title} "  >
            <select class="form-select my-3" name="cno">
			  <option value="1">취미/모임</option>
			  <option value="2">자유게시판</option>
			  <option value="3">지역게시판</option>
			</select>
                <textarea class="form-control" rows="5" id="comment" name="content" placeholder="">${board.content}</textarea>
                <input type="text" class="form-control my-3" name="writer" placeholder="작성자">
                <input type="file" class="form-control"  placeholder="첨부파일" >
	        <div class="text-center my-5">
	            <button class="btn btn-cookie-secondary btn-sm ">등록</button>
	            <a href="list?${cri.qs2}" class="btn btn-cookie btn-sm ">목록</a>
	        </div>
         </form>
                <!-- <i class="fa-solid fa-paperclip"></i> -->
	</div>
		</main>
		<!-- 풋터 -->
		<jsp:include page="../../common/footer.jsp" />
  </div>
</body>
</html>