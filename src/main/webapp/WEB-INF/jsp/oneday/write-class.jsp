<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="../../common/head.jsp" />
		<!-- include libraries(jQuery, bootstrap) -->
		<!-- <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		 -->
		<!-- include summernote css/js -->
		<!-- <link href="https://cdn.jsdelivr.net/npm/summernote@0.9.0/dist/summernote.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/summernote@0.9.0/dist/summernote.min.js"></script> -->
	</head>
	<body class="gowun-dodum-regular">
		<div class="wrap">
			<jsp:include page="../../common/header.jsp" />
			<main class="container my-4">
				<form>
					<label for="lname" class="form-label mt-3 text-cookie-secondary"><i class="fa-solid fa-cookie-bite"></i> <b>강좌명</b></label>
					<input type="text" class="form-control dropdown-cookie" id="" name="" value="" placeholder="ex) 간단 수제 쿠키 클래스">
	
					<label for="content" class="form-label mt-4 text-cookie-secondary"><i class="fa-regular fa-clipboard"></i> <b>신청 내용</b></label>
					<textarea class="form-control dropdown-cookie" rows="15" placeholder="상세 설명에 추가할 내용과 시작 시간을 필수로 입력해 주세요"></textarea>
					
					<!-- <textarea id="summernote" class="form-control dropdown-cookie"></textarea> -->
					
					<label for="writer" class="form-label mt-4 text-cookie-secondary"><i class="fa-solid fa-location-dot fa-lg font-icon-cookie"></i> <b>공방 주소</b></label>
					<input type="text" class="form-control dropdown-cookie" id="" name="" value="" placeholder="ex) 서울특별시 구로구 디지털로 23 ㅇㅇ건물 ㅇㅇ호">
					
					<label for="writer" class="form-label mt-4 text-cookie-secondary"><i class="fa-regular fa-calendar-check fa-lg font-icon-cookie"></i> <b>개설 날짜</b></label>
					<input type="text" class="form-control dropdown-cookie" id="" name="" value="" placeholder="2024/11/28, 2024/11/29">
	
					<label for="writer" class="form-label mt-4 text-cookie-secondary"><i class="fa-solid fa-user-pen"></i> <b>신청자</b></label>
					<input type="text" class="form-control dropdown-cookie" id="writer" name="writer" value="허정윤" readonly>
					
					<label class="form-label mt-4 text-cookie-secondary"><i class="fa-solid fa-paperclip"></i> <b>첨부파일</b><br></label>
                    <label for="attach"><span class="btn btn-cookie mx-2">추가하기</span></label>
					<span class="mx-2 attach-count-txt"></span>	                    
                    <input type="file" class="d-none mb-2" id="attach" name="files" multiple>
                    <ul class="list-group attach-result mt-2">

					</ul>
					
					<div class="text-center mt-3">
						<button type="submit" class="btn btn-cookie-secondary mx2 mt-3 px-4">신청</button>
           				<a href="${cp}oneday/list" class="btn btn-cookie mx-2 mt-3 px-4">취소</a>
           			</div>
				</form>	
			</main>
			<jsp:include page="../../common/footer.jsp" />
		</div>
		<script>
			$(document).ready(function() {
				$('#summernote').summernote({
					tabsize: 2,
					height: 400,
					width: 1140,
					minHeight: 400,
  					maxHeight: 500,
					toolbar: [
						['style', ['style']],
						['font', ['bold', 'underline', 'clear']],
						['color', ['color']],
						['para', ['ul', 'ol', 'paragraph']],
						['table', ['table']],
						['insert', ['link', 'picture', 'video']],
						['view', ['fullscreen', 'codeview', 'help']]
       				 ],
					fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
					fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72'],
					lang: "ko-KR",
					placeholder : "상세 설명에 추가할 내용과 시작 시간을 필수로 입력해 주세요"
				});
			});
		</script>		
	</body>
</html>