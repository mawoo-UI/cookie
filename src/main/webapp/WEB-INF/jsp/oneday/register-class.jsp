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
					<label for="lname" class="form-label mt-3 text-cookie-secondary"><i class="fa-solid fa-cookie-bite"></i> <b>강좌명</b></label>
					<input type="text" class="form-control dropdown-cookie" id="" name="" value="강아지 수제 간식 만들기 클래스" readonly>
	
					<label for="writer" class="form-label mt-4 text-cookie-secondary"><i class="fa-regular fa-id-card"></i> <b>이름</b></label>
					<input type="text" class="form-control dropdown-cookie" id="writer" name="writer" value="허정윤">
					
					<label for="writer" class="form-label mt-4 text-cookie-secondary"><i class="fa-solid fa-phone-flip"></i> <b>전화번호</b></label>
					<input type="tel" class="form-control dropdown-cookie" id="" name="" value="" placeholder="ex) 010-1234-5678" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}">
					
					<label for="content" class="form-label mt-4 text-cookie-secondary"><i class="fa-regular fa-clipboard"></i> <b>신청 내용</b></label>
					<textarea id="" name="" class="form-control dropdown-cookie" rows="15" placeholder="강사님께 전하고 싶은 말을 자유롭게 적어 주세요 (쓰지 않아도 무관합니다)"></textarea>
					
					<label for="writer" class="form-label mt-4 text-cookie-secondary"><i class="fa-regular fa-calendar-check fa-lg font-icon-cookie"></i> <b>신청 날짜</b></label>
					<input type="text" class="form-control dropdown-cookie" id="" name="" value="2024/11/28" readonly>
	
					<label for="writer" class="form-label mt-4 text-cookie-secondary"><i class="fa-solid fa-user-pen"></i> <b>작성자</b></label>
					<input type="text" class="form-control dropdown-cookie" id="writer" name="writer" value="허정윤" readonly>
					
					<div class="text-center mt-3">
						<button type="submit" class="btn btn-cookie-secondary mx2 mt-3 px-4">신청</button>
           				<a class="btn btn-cookie mx-2 mt-3 px-4">취소</a>
           			</div>
				</form>			
			</main>
			<jsp:include page="../../common/footer.jsp" />
		</div>
	</body>
</html>