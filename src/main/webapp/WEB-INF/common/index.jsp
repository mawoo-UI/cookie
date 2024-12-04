<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="head.jsp" />
		
	</head>
	<body class="gowun-dodum-regular">
		<div class="wrap">
			<jsp:include page="headertop.jsp"/>
			<hr class="mb-0">
			<main class="container">
				<div class="bxslider pb-0">
					<div><img src="${cp}imgs/slider-1.jpg" /></div>
					<div><img src="${cp}imgs/slider-2.jpg" /></div>
					<div><img src="${cp}imgs/slider-3.jpg" /></div>
					<div><img src="${cp}imgs/slider-1.jpg" /></div>
					<div><img src="${cp}imgs/slider-2.jpg" /></div>
				</div>
				<jsp:include page="headermenu.jsp"/>
				<div class="row mt-3">
					<div class="col-6 border-cookie-right">
						<h6 class="fw-bold text-center"><img src="imgs/icon.png" alt="로고" class="img-fluid icon-cookie">인기 클래스</h6>
						<div class="d-flex justify-content-around">
							<c:forEach items="${trendList}" var="trend">
								<div class="mt-2 p-0 float-start w-25">
									<a href="${cp}oneday/view?cbno=${trend.cbno}" class="text-decoration-none text-dark "><img src="${cp}display?path=${trend.attachs[0].path}&uuid=${trend.attachs[0].uuid}" alt="클래스썸네일" class="img-fluid thumbnail-cookie py-2" onerror="this.src='https://placehold.co/188x195?text=No+Image'"><br>${trend.title}</a>
								</div>
							</c:forEach>
						</div>
					</div>
					<div class="col-6">
						<h6 class="fw-bold text-center"><img src="imgs/icon-3.png" alt="로고" class="img-fluid icon-cookie">인기 게시글</h6>
						<ul class="list-group mx-4 mt-4">
							<c:forEach items="${likesList}" var="board">
								<li class="list-group-item list-group-item-action border-0">
									<a href="${cp}board/view?pno=${board.pno}&${qs2}" class="text-decoration-none text-dark float-start">[${categories[board.cno-1].cname.substring(0, 2)}] | ${board.title}</a>
									<a href="#" class="text-decoration-none text-secondary small float-end">좋아요 ${board.likes}</a>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</main>
			<jsp:include page="footer.jsp" />
		</div>
		<script>
	        $('.bxslider').bxSlider({
	            auto: true,
	            // autoControls: true,
	            // stopAutoOnClick: true,
	            pager: true,
	            slideWidth: 0,
	            speed: 500,
	            adaptiveHeightSpeed: 300,
	            wrapperClass:'bx-wrapper mb-5 p-0'
	        });
	    </script>
	    <div class="modal fade" id="ajeModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">오늘의 아재</h5>
		      </div>
		      <div class="modal-body">
		      	<h3></h3>
		      	<div class="d-grid my-3">
		      	<button type="button" data-bs-toggle="collapse" class="btn btn-cookie btn-block" data-bs-target="#answer">아재되기</button>
		      	</div>
		      	<div class="clearfix my-3 h-0">
			      	<p class="collapse float-start" id="answer"></p>
			      	<button type="button" class="btn btn-secondary float-end d-none btn-my-close" data-bs-dismiss="modal">Close</button>
	      		</div> 
	      		<div class="layer-popup text-end hide">
					<label class=" "><input  type= "checkbox" class="checkbox-stop"> 오늘은 그만 보기</label> 
		      	</div>
	
	
		      </div>
		    </div>
		  </div>
		</div>
		<script>
		$(function() {
			const ajeModal = new bootstrap.Modal($("#ajeModal").get(0), {
				backdrop : false
			});
			$("#ajeModal").on("show.bs.modal", function() {
				$.getJSON("${cp}aje/ajax").done(data => {
					sessionStorage.setItem("aje", data);
					$("#ajeModal .modal-body h3").text(data.quiz) 
					$("#ajeModal .modal-body p").text(data.answer);
				});
			})
			$("#ajeModal .modal-body button[data-bs-toggle]").click(() => $("#ajeModal [data-bs-dismiss]").removeClass("d-none").parent().next().removeClass("hide"));
			/* $("#ajeModal").on("hide.bs.modal", function() {
				$("#ajeModal .modal-body p").slideDown(1000);
			}) */
			//ajeModal.show();
			//$("#ajeModal").modal("show");
			
			if(!$.cookie("layer")){
	    		//$(".layer-popup").show();
				//ajeModal.show();
				ajeModal.show();
		    }
		    $(".btn-my-close").click(function () {
				event.preventDefault();
		    	const checked = $(".checkbox-stop").prop("checked");
				console.log(checked);
				if(checked) {
					$.cookie('layer', 'yes', {expires: 1});
				}
				ajeModal.hide();
			})
		})
		
		</script>
	    
	</body>
</html>