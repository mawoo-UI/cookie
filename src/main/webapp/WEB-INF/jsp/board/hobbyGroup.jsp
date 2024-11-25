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
        <h2 class="text-center ">취미모임</h2>
        <div class="dropdown">
            <button type="button" class="btn btn-Light " data-bs-toggle="dropdown">
                <i class="fa-solid fa-sort-down" style="color: #443722;"></i>
                선택하기
            </button>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">최신 등록순</a></li>
                <li><a class="dropdown-item" href="#">오래된순</a></li>
                <li><a class="dropdown-item" href="#">인기순</a></li>
            </ul>
            <a href="Postpage.html" class="btn btn-cookie btn-sm float-end" >글 작성하기</a>
        </div>
        
        <table class="table table-hover">
            <thead>
                <tr>
                    <th class="text-center">글 번호</th>
                    <th class="text-center">제목</th>
                    <th class="text-center">작성자</th>
                    <th class="text-center">작성일</th>
                    <th class="text-center">좋아요</th>
                </tr>
                <tbody>
                    <tr>
                        <td class="text-center">1</td>
                        <td class="text-center">골프 동호회</td>
                        <td class="text-center">임마누엘</td>
                        <td class="text-center">2024-11-18</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="text-center">2</td>
                        <td class="text-center">7080 등산모임(남자 마감,여성 환영)</td>
                        <td class="text-center">곽두팔</td>
                        <td class="text-center">2024-11-18</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="text-center">3</td>
                        <td class="text-center">식물 키우는분들 모집합니다.</td>
                        <td class="text-center">박두창</td>
                        <td class="text-center">2024-11-18</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="text-center">4</td>
                        <td class="text-center">바이크 동호회 모집합니다.</td>
                        <td class="text-center">마풍강</td>
                        <td class="text-center">2024-11-18</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="text-center">5</td>
                        <td class="text-center">독서 모임(주 1회 참가 가능하신분만)</td>
                        <td class="text-center">제갈제니</td>
                        <td class="text-center">2024-11-18</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="text-center">6</td>
                        <td class="text-center">카페투어 모임 구합니다.</td>
                        <td class="text-center">곽한구</td>
                        <td class="text-center">2024-11-18</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="text-center">7</td>
                        <td class="text-center">맛집 투어 모임 구합니다.</td>
                        <td class="text-center">임꺽정</td>
                        <td class="text-center">2024-11-18</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="text-center">8</td>
                        <td class="text-center">게임모임 구합니다.</td>
                        <td class="text-center">김풍</td>
                        <td class="text-center">2024-11-18</td>
                        <td class="text-center"></td>
                    </tr>
                </tbody>
            </thead>
        </table>
        <ul class="pagination justify-content-center">
            <li class="page-item"><a class="page-link border-0" href="#"><i class="fa-solid fa-angle-left" style="color: #493208;"></i></a></li>
            <li class="page-item"><a class="page-link border-0 text-dark" href="#">1</a></li>
            <li class="page-item"><a class="page-link border-0 text-dark" href="#">2</a></li>
            <li class="page-item"><a class="page-link border-0 text-dark" href="#">3</a></li>
            <li class="page-item"><a class="page-link border-0 text-dark" href="#"><i class="fa-solid fa-angle-right" style="color: #493208;"></i></a></li>
        </ul>
        </div>
		</main>
		<!-- 풋터 -->
		<jsp:include page="../../common/footer.jsp" />
	</div>
	
</body>
</html>
