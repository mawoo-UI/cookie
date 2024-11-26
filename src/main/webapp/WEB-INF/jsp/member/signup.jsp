<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="../../common/head.jsp" />
</head>    
<body>
    <div class="wrap">
        <main class="container">
            <div class="row col-md-12 m-2">
	            <div class="container d-flex p-2 text-center justify-content-center">
	            	<div class="text-center d-flex m-3" >
		                <a href="index.html"><img src="${cp}/imgs/free-icon-cookie-2682369.png" class="img-fluid" alt="로고" width="50px"></a>
		                <h1 class="fw-bold ms-2">Cookie new Cookie</h1>
	                </div>
	            </div>
	            <form name="frm"class="mx-auto col-lg-5 card p-4 mt-2">
	                <input type="text" class="form-control mt-3" id="id" placeholder="아이디" name="id">
	                <input type="password" class="form-control mt-3" id="pwd" placeholder="비밀번호" name="pwd">
	                <input type="email" class="form-control mt-3" id="email" placeholder="이메일 주소" name="email">
	                <input type="text" class="form-control mt-3" id="name" placeholder="이름" name="name">
	                <input type="text" class="form-control mt-3" id="birth" placeholder="생년월일" name="birth">
	                <div class="input-group my-3">
	                    <input type="text" class="form-control" placeholder="주소" readonly id="roadAddr">
	                    <button class="btn-cookie btn btn-primary" id="search" type="button" onclick="goPopup()">주소 검색</button>
	                </div>
	                <input type="text" class="form-control mt-3" id="detailAddr" placeholder="상세주소" name="detail_addr" readonly>
	                <input type="text" class="form-control my-3" id="tel" placeholder="휴대전화번호" name="tel">
	                <button class="btn-cookie btn btn-primary" id="check" type="button">휴대폰 본인확인</button>
	                <input type="text" class="form-control mt-3" id="" placeholder="가입경로" name="">
	                <select class="form-select my-3">
	                    <option>취미선택(최대 3개 선택 가능)</option>
	                    <option>배드민턴</option>
	                    <option>주식</option>
	                    <option>게임</option>
	                    <option>독서</option>
	                    <option>수영</option>
	                    <option>축구</option>
	                    <option>헬스</option>
	                    <option>여행</option>
	                    <option>등산</option>
	                    <option>요리</option>
	                    <option>음악감상</option>
	                </select>
	                <div>
	                    <button class="btn-cookie btn float-start" style="width: 49%;">취소</button>
	                    <button class="btn-cookie btn float-end" style="width: 49%;">가입완료</button>
	                </div>
	            </form>
    		</div>
        </main>
    </div>
    <script>
    function goPopup(){
    	// 주소검색을 수행할 팝업 페이지를 호출합니다.
    	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://business.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
    	var pop = window.open("${cp}member/jusopopup","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
    	
    	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://business.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
        //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
    }


    function jusoCallBack(roadAddrPart,detailAddr){
		$("#roadAddr").val(roadAddrPart);
		$("#detailAddr").val(detailAddr);
    }
    </script>
</body>
</html>