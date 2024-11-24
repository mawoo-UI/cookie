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
			<main class="container my-4">
				<form>
					<label for="lname" class="form-label mt-3 text-cookie-secondary"><i class="fa-solid fa-cookie-bite"></i> <b>수강한 클래스</b></label>
					<input type="text" class="form-control dropdown-cookie" id="" name="" value="강아지 수제 간식 만들기 클래스" readonly>
	
					<label for="content" class="form-label mt-4 text-cookie-secondary"><i class="fa-regular fa-clipboard"></i> <b>리뷰</b>
					</label>
					<div class="stars clearfix d-block mx-4 float-end px-4 mt-4">
						<h5 class="float-start text-warning"><i class="fa-regular fa-star"></i></h5>
						<h5 class="float-start text-warning"><i class="fa-regular fa-star"></i></h5>
						<h5 class="float-start text-warning"><i class="fa-regular fa-star"></i></h5>
						<h5 class="float-start text-warning"><i class="fa-regular fa-star"></i></h5>
						<h5 class="float-start text-warning"><i class="fa-regular fa-star"></i></h5>
					</div>
					<textarea class="form-control dropdown-cookie" rows="15" placeholder="내용을 입력해 주세요">
정말 재미있어요 호호~ 시간 가는 줄 모르고 만들었답니다 선생님이 설명을 너무너무 잘하셔서 쉽게 만들 수 있었고 아주 유익한 시간이었어요 다음에 기회가 된다면 다른 것도 만들어 보고 싶네용
					</textarea>
	
					<label for="writer" class="form-label mt-4 text-cookie-secondary"><i class="fa-solid fa-user-pen"></i> <b>작성자</b></label>
					<input type="text" class="form-control dropdown-cookie" id="writer" name="writer" value="허정윤" readonly>
					
					<div class="text-center mt-3">
						<a class="btn btn-cookie-secondary mx-1 mt-3 px-4">수정</a>
              			<a class="btn btn-cookie mx-1 mt-3 px-4">삭제</a>
              			<a class="btn btn-cookie bg-white dropdown-cookie text-cookie-secondary mx-1 mt-3 px-4">취소</a>
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
	                str += score >= i ? '<i class="fa-solid fa-star"></i>' : '<i class="fa-regular fa-star"></i>';
	                str += '</h5>';
	            }
	            $(this).html(str);
	        })
	
	        function calcStar(x, width) {
				console.log(Math.floor(x / width * 5) -45 + 2);
				
	            return Math.floor(x / width * 5)- 45 + 2;
	        }
    </script>
	</body>
</html>