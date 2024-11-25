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
            <%--     <textarea type="text" class="form-control small" placeholder="${board.title}" >국가는 재해를 예방하고 그 위험으로부터 국민을 보호하기 위하여 노오력</textarea> --%>
            <button type="button" class="btn btn-Light float-end " data-bs-toggle="dropdown ">
                <i class="fa-solid fa-sort-down" style="color: #443722;"></i>
                카테고리
            </button>
            <select class="form-select my-3" name="cno">
			  <option value="1">취미/모임</option>
			  <option value="2">자유게시판</option>
			  <option value="3">지역게시판</option>
			</select>
                <textarea class="form-control" rows="5" id="comment" name="content" placeholder="">${board.content}</textarea>
                <input type="text" class="form-control my-3" name="writer" placeholder="작성자">
                <input type="file" class="form-control"  placeholder="첨부파일" >
	        <div class="text-center my-5">
	            <button href="modify?pno=${board.pno}&${cri.qs2}" class="btn btn-cookie-secondary btn-sm ">등록</button>
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