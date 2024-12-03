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
            <select class="form-select my-3" name="cno">
			  <option value="1">취미/모임</option>
			  <option value="2">자유게시판</option>
			  <option value="3">지역게시판</option>
			</select>
            <textarea class="form-control my-3" rows="5" name="content" placeholder="내용을 입력하세요"></textarea>
            <input type="text" class="form-control my-3" name="writer" placeholder="작성자">
            <label for="attach" class="form-label"><span class="btn btn-cookie">파일첨부</span></label>
            <span class="mx-2 attach-count-txt"></span>
            <input type="file" id="attach" name="file" class="d-none" multiple>
           	<ul class="list-group attach-result">
			
			</ul> 
                <!-- <i class="fa-solid fa-paperclip"></i> -->
	        <div class="d-grid gap-2 d-md-block clearfix">
	            <button class="btn btn-cookie-secondary btn-sm mx-2 float-end"  >등록</button>
	        </div>
			<div class="uploaded-input"></div>
	    </form>
		</main>
		<!-- 풋터 -->
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