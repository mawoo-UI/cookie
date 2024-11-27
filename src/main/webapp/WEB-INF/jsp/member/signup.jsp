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
            <div class="container clearfix p-2 text-center">
                <a href="index.html" class="float-center"><img src="${cp}imgs/free-icon-cookie-2682369.png" class="img-fluid" alt="로고" width="50px"></a>
                <span class="text-center fw-bold p-3" style="font-size: 32px;">Cookie new Cookie</span>
            </div>
            <form name="frm"class="mx-auto col-lg-5 card p-4 mt-5" method="post">
                <!-- 이메일 -->
                <div class="area-signup-form area-email d-grid">
                    <div class="form-floating mt-3">
                        <input type="text" class="form-control" id="email" placeholder name="email">
                        <label for="email">Email을 입력하세요.</label>
                    </div>
                    <button class="btn btn-cookie mt-3 btn-block" type="button" id="btnEmailVerify"><span class="spinner-border spinner-border-sm invisible"></span> 이메일 인증</button>
                    <p class="text-danger small mb-0 hide">이미 사용중인 이메일 입니다.</p>
                </div>
                <div class="area-signup-form area-auth-num hide">                    
                    <div class="form-floating mt-3">
                        <input type="text" class="form-control" id="authNum" placeholder name="authNum">
                        <label for="authNum">메일로 발송된 인증번호를 입력하세요</label>
                    </div>
                    <button class="btn btn-cookie mt-3 btn-block" type="button">인증번호 확인</button>
                    <p class="text-danger small mb-0 hide">인증번호가 일치하지 않습니다.</p>
                </div>

                <!-- 아이디 -->
                <div class="area-signup-form area-id">
                    <div class="form-floating mt-3">
                        <input type="text" class="form-control" id="id" placeholder name="id">
                        <label for="id">사용하실 아이디를 입력하세요</label>
                    </div>
                    <button class="btn btn-cookie mt-3 btn-block" type="button"><span class="spinner-border spinner-border-sm invisible"></span> 아이디 중복 확인</button>
                    <p class="text-danger small mb-0 hide">이미 사용중인 아이디 입니다.</p>
                </div>

                <!-- 비밀번호 -->
                <div class="area-signup-form area-pw">
                    <div class="form-floating mt-3 position-relative">
                        <input type="password" class="form-control" id="pw" placeholder name="pw">
                        <label for="password">비밀번호</label>
                        <div class="position-absolute" style="top:18px; right:18px">
                            <a href="#" class="text-cookie-secondary"><i class="fa-regular fa-eye" title="비밀번호 보기"></i></a>
                            <a href="#" class="text-cookie-secondary  d-none"><i class="fa-regular fa-eye-slash" title="비밀번호 숨기기"></i></a>
                        </div>
                    </div>
                    <button class="btn btn-cookie mt-3 btn-block" type="button">입력</button>
                    <p class="text-danger small mb-0 hide">비밀번호 규칙에 일치하지 않습니다.</p>
                </div>

                <!-- 이름 -->
                <div class="area-signup-form area-name">
                    <div class="form-floating mt-3">
                        <input type="text" class="form-control" id="name" placeholder name="name">
                        <label for="name">이름</label>
                    </div>
                    <button class="btn btn-cookie mt-3 btn-block" type="button">입력</button>
                    <p class="text-danger small mb-0">이름 규칙에 일치하지 않습니다.</p>
                </div>

                <!-- 닉네임 -->
                <div class="area-signup-form area-nick">
                    <div class="form-floating mt-3">
                        <input type="text" class="form-control" id="nick" placeholder name="nick">
                        <label for="nick">닉네임</label>
                    </div>
                    <button class="btn btn-cookie mt-3 btn-block" type="button"><span class="spinner-border spinner-border-sm invisible"></span>닉네임 중복 체크</button>
                    <p class="text-danger small mb-0 hide">중복된 닉네임이 존재합니다.</p>
                </div>
                
                <div class="area-signup-form area-submit"> 
                	<button class="btn btn-cookie mt-3 btn-block" >회원 가입</button>
                </div>
            </form>
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
    <script>
        // 초기 설정
        $(".area-signup-form").hide();
        const duplicatePropsURL = '${cp}member/validaty';
        const sendEmailAndSessionCheckURL = '${cp}member/sendMail';
        
        // 비밀번호 가시성 토글
        $(".area-pw a").click(function() {
            event.preventDefault();
            const $pw = $(this).parent().find("a").toggleClass("d-none").closest(".area-pw").find("input");
            $pw.attr("type") == "password" ? $pw.attr("type", "text") : $pw.attr("type", "password") 
        })

        // 인증 이메일 발송
        $("#btnEmailVerify").click(function() {
            // 1. 이메일 중복 여부 확인
            let sendData = {email : $("#email").val()}
            sendData = JSON.stringify(sendData); 	
            console.log(sendData)
            $.ajax(duplicatePropsURL, {
            	data:sendData,
                method:"post"
            }).done(function(data) {
                if(!data.result) {
                    console.log('불가능')
                    $("#btnEmailVerify").parent().find("p").show();
                    return;
                }
	            // 2. 이메일 발송 후 secret값 세션에 지정(제한 시간 5분)
	            $.ajax({
	            	method:"post",
	            	data : sendData,
	            	url : sendEmailAndSessionCheckURL,
	            	beforeSend : function() {
	            		$("#btnEmailVerify").prop("disabled", true).find("span").removeClass("invisible")
	            	}
	            })
	            .done(function(data) {
	            	$("#btnEmailVerify").prop("disabled", false).hide().find("span").addClass("invisible");
	            	console.log('메일 발송 완료');
	            	$("#email").prop("readonly", true).addClass("bg-cookie p-2").next().remove();
	            	$(".area-auth-num").addClass("d-grid").show();
	            });
                
            })
        })
        // 3. 유효한 secret값 일치 여부 확인
        $(".area-auth-num button").click(function() {
        	console.log("clicked");
        	$.getJSON(sendEmailAndSessionCheckURL + "/" + $("#authNum").val())
        	.done(function(data) {
        		if(!data.result) {
        			$(".area-auth-num p").show();			
        			console.log("인증 불일치");
        			return;
        		}
        		console.log("인증일치");
        		$(".area-auth-num p").hide();
        		$(".area-auth-num").slideUp(200, function() {$(this).removeClass("d-grid")});
        		$(".area-id").addClass("d-grid").show();
        	})
        	.fail(function(xhr) {
        		console.log(xhr);
        	});
        });
        
        $(".area-id button").click(function() {
        	let sendData = {id : $("#id").val()}
            sendData = JSON.stringify(sendData); 	
            console.log(sendData)
            $.ajax(duplicatePropsURL, {
            	data:sendData,
                method:"post",
            	beforeSend : function() {
            		$(".area-id button").prop("disabled", true).find("span").removeClass("invisible")
            	}
            }).done(function(data) {
                if(!data.result) {
                    console.log('불가능')
                    $(".area-id").parent().find("p").show();
                    return;
                }
                $(".area-id").find("p").hide();
                $("#id").prop("readonly", true).addClass("bg-cookie p-2").next().remove();
                $(".area-id button").slideUp(200).prop("disabled", false).find("span").addClass("invisible")
                $(".area-pw").addClass("d-grid").show();
            });
        });
        
        // 비밀번호 확인 버튼 이벤트
        $(".area-pw button").click(function() {
        	$(".area-pw button").slideUp(200, function() {$(this).removeClass("d-grid")});
            $("#pw").prop("readonly", true).addClass("bg-cookie p-2").next().remove();
        	$(".area-nick").addClass("d-grid").show();
        })
        
        // 닉네임 중복 확인 버튼 이벤트
        $(".area-nick button").click(function() {
        	let sendData = {id : $("#id").val()}
            sendData = JSON.stringify(sendData); 	
            console.log(sendData)
            $.ajax(duplicatePropsURL, {
            	data:sendData,
                method:"post",
            	beforeSend : function() {
            		$(".area-nick button").prop("disabled", true).find("span").removeClass("invisible")
            	}
            }).done(function(data) {
                if(!data.result) {
                    console.log('불가능')
                    $(".area-nick").find("p").show();
                    return;
                }
                $(".area-nick").find("p").hide();
                $("#nick").prop("readonly", true).addClass("bg-cookie p-2").next().remove();
                $(".area-nick button").slideUp(200).prop("disabled", false).find("span").addClass("invisible")
                
                // submit 버튼 활성화
                $(".area-submit").addClass("d-grid").show();
            });
        });
        

        // $(".btn-test").click(function() {
        //     $(".area-id").slideToggle(200).toggleClass("d-grid")
        // })
    </script>  
</body>
</html>