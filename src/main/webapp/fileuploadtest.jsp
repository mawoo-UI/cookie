<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<title>Insert title here</title>
</head>
<body>
	<form action="${cp}upload" method="post" enctype="multipart/form-data">
		<input type="file" multiple name ="files" id ="attach"> 
		<button>업로드</button> 
	</form>
	<ul class="attach-result">
	
	</ul>
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