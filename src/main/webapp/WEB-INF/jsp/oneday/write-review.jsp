<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="../../common/head.jsp" />
	</head>
	<body>
		<div class="wrap">
			<jsp:include page="../../common/header.jsp" />
			<main class="container my-4">
				<form method="post">
					<label for="ccno" class="form-label mt-3 text-cookie-secondary"><i class="fa-solid fa-cookie-bite"></i> <b>수강한 클래스</b></label>
					<!-- <input type="text" class="form-control dropdown-cookie" id="" name="" value="강아지 수제 간식 만들기 클래스"> -->
					<select class="form-select dropdown-cookie" name="ccno" id="ccno">
						<c:forEach items="${curriList}" var="cu">
							<option value="${cu.ccno}">
								${cu.lname}
							</option>
						</c:forEach>
					</select>
	
					<label for="content" class="form-label mt-4 text-cookie-secondary"><i class="fa-regular fa-clipboard"></i> <b>리뷰</b>
					</label>
					<div class="stars clearfix d-block mx-4 float-end px-4 mt-4">
						<i class="float-start text-warning fa-regular fa-star"></i>
						<i class="float-start text-warning fa-regular fa-star"></i>
						<i class="float-start text-warning fa-regular fa-star"></i>
						<i class="float-start text-warning fa-regular fa-star"></i>
						<i class="float-start text-warning fa-regular fa-star"></i>
					</div>
					<input type="hidden" name="score" id="score" value="">
					
					<textarea class="form-control dropdown-cookie" rows="15" name="content" id="content" placeholder="내용을 입력해 주세요"></textarea>
	
					<label for="writer" class="form-label mt-4 text-cookie-secondary"><i class="fa-solid fa-user-pen"></i> <b>작성자</b></label>
					<input type="text" class="form-control dropdown-cookie" id="nick" name="nick" value="${member.nick}" readonly>
					<input type="hidden" name="writer" id="writer" value="${member.id}">
					
					<label class="form-label mt-3"><i class="fa-regular fa-image text-cookie-secondary"></i> <b class="text-cookie-secondary">사진 첨부</b><br></label>
                    <label for="attach"><span class="btn btn-cookie mx-2">추가하기</span></label>
					<span class="mx-2 attach-count-txt"></span>	                    
                    <input type="file" class="d-none mb-2" id="attach" name="files" multiple>
                    <ul class="list-group attach-result mt-2">

					</ul>
					
					<div class="text-center mt-3">
						<button type="submit" class="btn btn-cookie-secondary mx2 mt-3 px-4">작성</button>
           				<a href="${cp}oneday/list" class="btn btn-cookie mx-2 mt-3 px-4">취소</a>
           			</div>
				</form>
			</main>
			<jsp:include page="../../common/footer.jsp" />
		</div>
		<script>
	        $(".stars").mousemove(function(e) {
	            const score = calcStar(e.clientX, $(this).outerWidth());
				console.log(e.clientX + " ::: " + $(this).outerWidth());
				
	            let str = "";
	            for(let i = 1 ; i <= 5 ; i++) {
	                str += '<h5 class="float-start text-warning">';
	                str += score >= i ? '<i class="float-start text-warning fa-solid fa-star review-score"></i>' : '<i class="float-start text-warning fa-regular fa-star"></i>';
	                str += '</h5>';
	            }
	            $(this).html(str);
	            $("#score").val($(".review-score").length);
	            console.log($("#score").val());
	        })
	
	        function calcStar(x, width) {
				console.log(Math.floor(x / width * 5) -45 + 2);
				
	            return Math.floor(x / width * 5)- 45 + 2;
	        }
    </script>
	</body>
</html>