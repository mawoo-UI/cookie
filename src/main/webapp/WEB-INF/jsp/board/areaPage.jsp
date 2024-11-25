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
        <h2 class="text-center ">지역게시판</h2>
        <div>
            <div class="container">
                <nav class="navbar navbar-expand-sm">
                    <ul class="navbar-nav container justify-content-center">
                        <li class="nav-item dropdown mx-5">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">지역 선택</a>
                            <ul class="dropdown-menu dropdown-cookie">
                                <li><a class="dropdown-item" href="Postboard_Area _Seoul.html">서울</a></li>
                                <li><a class="dropdown-item" href="Postboard_Area _Gangwon.html">강원도</a></li>
                                <li><a class="dropdown-item" href="Postboard_Area _Chungcheong.html">충청도</a></li>
                                <li><a class="dropdown-item" href="Postboard_Area _Daejeon.html">대전</a></li>
                                <li><a class="dropdown-item" href="Postboard_Area _Daegu.html">대구</a></li>
                                <li><a class="dropdown-item" href="Postboard_Area _Busan.html">부산</a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
                <hr class="m-0 text-cookie-secondary">
            </div>

        </div>
        <div class="dropdown">
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
                        <td class="text-center">20</td>
                        <img>
                        <td class="text-left">깔깔 유머집 너네 어떤거 공모했냐?</td>
                        <td class="text-center">박두창</td>
                        <td class="text-center">2024-11-18</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="text-center">19</td>
                        <td class="text-left">오늘 따릉이 탈 사람 구합니다.(서울)</td>
                        <td class="text-center">곽두팔</td>
                        <td class="text-center">2024-11-18</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="text-center">18</td>
                        <td class="text-left">원데이 클래스 추천해줄 곳 있음?(충북)</td>
                        <td class="text-center">제갈제니</td>
                        <td class="text-center">2024-11-18</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="text-center">17</td>
                        <td class="text-left">맛집 추천 받음(경남)</td>
                        <td class="text-center">마풍강</td>
                        <td class="text-center">2024-11-18</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="text-center">16</td>
                        <td class="text-left">크리스마스도 솔로네(서울)</td>
                        <td class="text-center">김강원</td>
                        <td class="text-center">2024-11-18</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="text-center">15</td>
                        <td class="text-left">카페 추천해줘(경남)</td>
                        <td class="text-center">곽마원</td>
                        <td class="text-center">2024-11-18</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="text-center">14</td>
                        <td class="text-left">여기 근처에 재즈바 있음?(전남)</td>
                        <td class="text-center">임꺽정</td>
                        <td class="text-center">2024-11-18</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="text-center">13</td>
                        <td class="text-left">원데이 클래스 재밌었던데 있었어?</td>
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