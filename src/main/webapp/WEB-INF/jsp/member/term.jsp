<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="../../common/head.jsp" />
</head>
<body>
    <div class="wrap">
		<div class="container clearfix p-2 text-center">
			<a href="index.html" class="float-center"><img src="${cp}imgs/free-icon-cookie-2682369.png" class="img-fluid" alt="로고" width="50px"></a>
			<span class="text-center fw-bold p-3" style="font-size: 32px;">Cookie new Cookie</span>
		</div>
		
		<form name="frm" class="mx-auto col-lg-5 card p-4 mt-5" id="regsiterForm" method="post" action="signup"> 
		<div class="card" >
			<div class="card-header bg-cookie">
				<h5 class="p-3 text-white text-center mb-0">회원가입</h5>
			</div>
			<div class="card-body">
				<h5 class="card-title my-3">
					<label><input type="checkbox" class="form-check-input me-2" id="allAgree" > 이용약관 전체동의</label> 
				</h5>
				<hr>
				<div class="card-text">
					<div class="my-3 clearfix">
						<label><input type="checkbox" class="form-check-input me-2 " name="clause" > 회원가입약관 동의 (필수)</label> <a data-bs-toggle="collapse" href="#clause" class="float-end text-cookie-secondary collapse-link btn-collapse-clause"><i class="fa-solid fa-chevron-up fa-chevron-down"></i></a>
					</div>
					<div class="collapse" id="clause" >
						<textarea class="w-100" rows="10">
<jsp:include page="term/clause.jsp" />
						</textarea>
						</div> 
					<div class="my-3 clearfix">
						<label><input type="checkbox" class="form-check-input me-2"  name="info"> 개인정보 처리방침 안내 동의 (필수)</label> <a data-bs-toggle="collapse" href="#personalInfo" class="float-end text-cookie-secondary collapse-link btn-collapse-info"><i class="fa-solid fa-chevron-up fa-chevron-down"></i></a>
					</div> 
					<div class="collapse" id="personalInfo" >
						<textarea class="w-100" rows="10">
<jsp:include page="term/personal_info.jsp" />
						</textarea>
					</div>
				</div>
			</div>
			<div class="row my-3 px-3">
				<div class="col d-grid px-3">
					<a href="${cp}" class="btn-cookie btn btn-block mx-2" >취소</a>
				</div>
				<div class="col d-grid px-3">
					<button class="btn-cookie btn btn-block mx-2" >회원가입</button>
				</div>
             </div>
		</div>	
		</form>
		<script>
			$("#regsiterForm").submit(function() {
				let flag = false; 
				if(!$('[name="clause"]').prop("checked")) {
					alert("회원가입약관 동의 이후에 가입이 가능합니다");
					return false;
				}
				
				if(!$('[name="info"]').prop("checked")) {
					alert("개인정보 처리방침 안내 동의  이후에 가입이 가능합니다");
					return false;
				}
			})
			$(".collapse-link").click(function() {
				$(this).find("i").toggleClass("fa-chevron-down");
			});	
			
			$("#allAgree").change(function() {
				console.log('agree');
				console.log($(this).prop("checked"));
				$(":checkbox").prop("checked", $(this).prop("checked"));
			})
		</script>
    </div>
</body>
</html>