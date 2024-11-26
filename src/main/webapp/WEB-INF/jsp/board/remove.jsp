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
		<main class="container">
    <div class="container mt-3">
        <h2 class="text-center ">자유게시판</h2>

        <input type="text" class="form-control text-bg-light" placeholder="${board.title}" disabled>
    
        <textarea class="form-control text-bg-light my-3 " rows="5" id="comment" name="text"  placeholder="${board.content}" disabled></textarea>
        <input type="file" class="form-control" placeholder="첨부파일" i class="fa-solid fa-paperclip">
        
		<hr>
		
        <div class="d-grid gap-2 d-md-block">
            <button type="button" class="btn btn-danger btn-sm">신고</button>
            <a href="#" class="btn btn-light btn-sm mx-2 float-end" >
                <!-- <i class="fa-solid fa-heart text-danger " ></i>  -->
                <i class="fa-regular fa-heart text-danger" ></i>
                <span>좋아요</span>
                 <button type="button" class="btn btn-cookie-secondary btn-sm">삭제하기</button>
            	<a href="#" class="btn btn-cookie btn-sm float-end" >수정</a>
            </a>
        <!--     <div class="d-grid gap-2 d-md-block">
            <button type="button" class="btn btn-cookie-secondary btn-sm">삭제하기</button>
            <a href="#" class="btn btn-cookie btn-sm float-end" >수정</a>
            <a href="#" class="btn btn-cookie-secondary btn-sm mx-2 float-end" >등록</a>
        </div> -->
        </div>
        <div>
            <p class="text-center">댓글 작성하기</p>
            <textarea class="form-control" id="comment" name="text" placeholder="댓글 쓰기" style="resize: none;" rows="5"></textarea>
            <div class="gradient-custom">
                <div class="container my-5 py-5">
                    <ul class="list-group mx-4">
                        <li class="list-group-item list-group-item-action small">
                            <p class="my-2"><strong>내가그린 기린그림</strong></p>
                            <!-- border-bottom -->
                            <p class="my-1">으.. 나가쇼 아재요</p>
                            <p class="my-1">2024-11-18</p>
                            <button type="button" class="btn btn-cookie-secondary btn-sm"> 댓글달기</button>
                        </li>
                        <li class="list-group-item list-group-item-action small">
                            <p class="my-2"><strong>곽마원</strong></p>
                            <p class="my-1">님 신고요 ㅇㅇ</p>
                            <p class="my-1">2024-11-18</p>
                            <button type="button" class="btn btn-cookie-secondary btn-sm">댓글달기</button>
                        </li>
                        <li class="list-group-item list-group-item-action">
                            <p class="my-2"><strong>김덕선</strong></p>
                            <p class="my-1">오메~ 총각들은 마감이라 아쉽고만…!!</p>
                            <p class="my-1">2024-11-18</p>
                            <button type="button" class="btn btn-cookie-secondary btn-sm" data-bs-toggle="collapse" data-bs-target=".target">댓글달기</button>
                        </li>
                        <li class="list-group-item list-group-item-action small p-0 target collapse">
                            <ul class="list-group">
                                <li class="list-group-item list-group-item-action small ps-5 border border-0 border-bottom">
                                    <p class="mx-4"><strong>임마누엘</strong></p>
                                    <p class="mx-4">ㄴ@김덕선 이건 또 뭐지..</p>
                                    <p class="mx-4">2024-11-18</p>
                                </li>
                                <li class="list-group-item list-group-item-action small ps-5 border border-0">
                                    <p class="mx-4"><strong>아빠안잔다</strong></p>
                                    <p class="mx-4">ㄴ @김덕선 발닦고 주무십쇼</p>
                                    <p class="mx-4">2024-11-18</p>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        
    </div>
		</main>
		<!-- 풋터 -->
		<jsp:include page="../../common/footer.jsp" />
	</div>

</body>
</html>