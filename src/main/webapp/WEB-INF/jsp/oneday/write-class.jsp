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
				<form method="post">
					<label for="title" class="form-label mt-3 text-cookie-secondary"><i class="fa-solid fa-cookie-bite"></i> <b>강좌명</b></label>
					<input type="text" class="form-control dropdown-cookie" id="title" name="title" value="" placeholder="ex) 간단 수제 쿠키 클래스">
	
					<label for="content" class="form-label mt-4 text-cookie-secondary"><i class="fa-regular fa-clipboard"></i> <b>신청 내용</b></label>
					<textarea class="form-control dropdown-cookie" rows="15" id="content" name="content" placeholder="상세 설명에 추가할 내용과 시작 시간을 필수로 입력해 주세요"></textarea>
					
					<!-- <textarea id="summernote" class="form-control dropdown-cookie"></textarea> -->
					
					<label for="location" class="form-label mt-4 text-cookie-secondary"><i class="fa-solid fa-location-dot fa-lg font-icon-cookie"></i> <b>공방 주소</b></label>
					<input type="text" class="form-control dropdown-cookie" id="location" name="location" value="" placeholder="ex) 서울특별시 구로구 디지털로 23 ㅇㅇ건물 ㅇㅇ호">
					
					<label for="max" class="form-label mt-4 text-cookie-secondary"><i class="fa-solid fa-user-group fa-lg font-icon-cookie px-2"></i> <b>수강 정원</b></label>
					<input type="text" class="form-control dropdown-cookie" id="max" name="max" value="" placeholder="ex) 10">
					
					<label for="price" class="form-label mt-4 text-cookie-secondary"><i class="fa-solid fa-sack-dollar fa-lg font-icon-cookie px-2"></i> <b>수강 비용</b></label>
					<input type="text" class="form-control dropdown-cookie" id="price" name="price" value="" placeholder="ex) 20000">
					
					<label for="dutime" class="form-label mt-4 text-cookie-secondary"><i class="fa-regular fa-clock fa-lg font-icon-cookie px-2"></i> <b>소요 시간</b></label>
					<input type="text" class="form-control dropdown-cookie" id="dutime" name="dutime" value="" placeholder="ex) 1시간 30분">
					
					<label for="startdate" class="form-label mt-4 text-cookie-secondary"><i class="fa-regular fa-calendar-check fa-lg font-icon-cookie"></i> <b>개설 날짜</b></label>
					<input type="text" class="form-control dropdown-cookie" id="startdate" name="startdate" value="" placeholder="ex) 2024/11/28, 2024/11/29">
	
					<label for="host" class="form-label mt-4 text-cookie-secondary"><i class="fa-solid fa-user-pen"></i> <b>신청자</b></label>
					<input type="hidden" id="host" name="host" value="${member.id}" >
					<input type="text" class="form-control dropdown-cookie" id="nick" name="nick" value="${member.nick}" readonly>
					
					<label class="form-label mt-4 text-cookie-secondary"><i class="fa-solid fa-paperclip"></i> <b>썸네일로 쓸 이미지</b><br></label>
                    <label for="attach"><span class="btn btn-cookie mx-2">추가하기</span></label>
					<span class="mx-2 attach-count-txt"></span>	                    
                    <input type="file" class="d-none mb-2" id="attach" name="files" multiple>
                   
                   	<div class="row mt-2 attach-result">
						<div class="p-3 col-6 col-sm-4 col-lg-3 col-xl-2">
							<img src="${cp}imgs/class-thumbnail.jpg" class="img-fluid">
						</div>
						<div class="p-3 col-6 col-sm-4 col-lg-3 col-xl-2">
							<img src="${cp}imgs/class-thumbnail.jpg" class="img-fluid">
						</div>
						<div class="p-3 col-6 col-sm-4 col-lg-3 col-xl-2">
							<img src="${cp}imgs/class-thumbnail.jpg" class="img-fluid">
						</div>
						<div class="p-3 col-6 col-sm-4 col-lg-3 col-xl-2">
							<img src="${cp}imgs/class-thumbnail.jpg" class="img-fluid">
						</div>
						<div class="p-3 col-6 col-sm-4 col-lg-3 col-xl-2">
							<img src="${cp}imgs/class-thumbnail.jpg" class="img-fluid">
						</div>
						<div class="p-3 col-6 col-sm-4 col-lg-3 col-xl-2">
							<img src="${cp}imgs/class-thumbnail.jpg" class="img-fluid">
						</div>
						<div class="p-3 col-6 col-sm-4 col-lg-3 col-xl-2">
							<img src="${cp}imgs/class-thumbnail.jpg" class="img-fluid">
						</div>
						<div class="p-3 col-6 col-sm-4 col-lg-3 col-xl-2">
							<img src="${cp}imgs/class-thumbnail.jpg" class="img-fluid">
						</div>
						<div class="p-3 col-6 col-sm-4 col-lg-3 col-xl-2">
							<img src="${cp}imgs/class-thumbnail.jpg" class="img-fluid">
						</div>
					</div>
					
					<div class="text-center mt-3">
						<button type="submit" class="btn btn-cookie-secondary mx2 mt-3 px-4">신청</button>
           				<a href="${cp}oneday/list" class="btn btn-cookie mx-2 mt-3 px-4">취소</a>
           			</div>
				</form>	
			</main>
			<jsp:include page="../../common/footer.jsp" />
		</div>
		<script>
            $("#attach").change(function() {
            	const url = '${cp}' + 'upload'
        		const formData = new FormData();
        		const files = this.files;
        		
        		if(!files) {
        			$(".attach-count-txt").text("");
        			$(".attach-result").empty();
        			return;
        		}
        		for (let i = 0; i < files.length; i++) {
        			formData.append("file", files[i]);
        		}
        		$.post({
        			url,
        			contentType:false,
        			processData:false,
        			data:formData
        		})
        		.done(function(data) {
        			$(".attach-count-txt").text(data.length +"개의 파일");
        			let str = '';
        			let strHidden = '';
        			for(let i in data){
	        			str += `<li class="list-group-item">\${data[i].origin}</li>`;
						strHidden += ``;
						strHidden += `<input type="hidden" name="uuid" value="\${data[i].uuid}" >`;
						strHidden += `<input type="hidden" name="origin" value="\${data[i].origin}" >`;
						strHidden += `<input type="hidden" name="image" value="\${data[i].image}" >`;
						strHidden += `<input type="hidden" name="path" value="\${data[i].path}" >`;
        			}
        			$(".attach-result").html(str);
					$(".uploaded-input").html(strHidden);
        			console.log(data);
        		});
        	});

      	</script>
	</body>
</html>