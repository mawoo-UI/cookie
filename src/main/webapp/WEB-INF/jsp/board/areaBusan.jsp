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
        <h2 class="text-center ">부산</h2>
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
        <div class="dropdown">
            <!-- <button type="button" class="btn btn-Light " data-bs-toggle="dropdown">
                <i class="fa-solid fa-sort-down" style="color: #443722;"></i>
                선택하기
            </button>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">최신 등록순</a></li>
                <li><a class="dropdown-item" href="#">오래된순</a></li>
                <li><a class="dropdown-item" href="#">인기순</a></li>
            </ul> -->
            <a href="Boardpage.html" class="btn btn-cookie btn-sm float-end" >글 작성하기</a>
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
                        <td class="text-left">내년엔 얼마나 더 더울까</td>
                        <td class="text-center">김화성</td>
                        <td class="text-center">2024-11-18</td>
                        <td class="text-center">1</td>
                    </tr>
                    <tr>
                        <td class="text-center">19</td>
                        <td class="text-left">해운대 쪽 집들 왜이렇게 비싸냐;</td>
                        <td class="text-center">김풍</td>
                        <td class="text-center">2024-11-18</td>
                        <td class="text-center">0</td>
                    </tr>
                    <tr>
                        <td class="text-center">18</td>
                        <td class="text-left">담주에 부산가는데 할거추천좀</td>
                        <td class="text-center">강아지</td>
                        <td class="text-center">2024-11-18</td>
                        <td class="text-center">0</td>
                    </tr>
                    <tr>
                        <td class="text-center">17</td>
                        <td class="text-left">맛집 추천 받음(경남)</td>
                        <td class="text-center">마풍강</td>
                        <td class="text-center">2024-11-18</td>
                        <td class="text-center">0</td>
                    </tr>
                    <tr>
                        <td class="text-center">16</td>
                        <td class="text-left">할거 추천해줘</td>
                        <td class="text-center">이정희</td>
                        <td class="text-center">2024-11-18</td>
                        <td class="text-center">0</td>
                    </tr>
                    <tr>
                        <td class="text-center">15</td>
                        <td class="text-left">카페 추천해줘(경남)</td>
                        <td class="text-center">곽마원</td>
                        <td class="text-center">2024-11-18</td>
                        <td class="text-center">0</td>
                    </tr>
                    <tr>
                        <td class="text-center">14</td>
                        <td class="text-left">여기 근처에 재즈바 있음?</td>
                        <td class="text-center">임꺽정</td>
                        <td class="text-center">2024-11-18</td>
                        <td class="text-center">0</td>
                    </tr>
                    <tr>
                        <td class="text-center">13</td>
                        <td class="text-left">원데이 클래스 재밌었던데 있었어?</td>
                        <td class="text-center">김풍</td>
                        <td class="text-center">2024-11-18</td>
                        <td class="text-center">0</td>
                    </tr>
                </tbody>
            </thead>
        </table>
        <!-- <button type="button" class="btn btn-cookie-secondary btn-sm">삭제하기</button> -->
        <ul class="pagination justify-content-center">
            <li class="page-item"><a class="page-link border-0" href="#"><i class="fa-solid fa-angle-left" style="color: #493208;"></i></a></li>
            <li class="page-item"><a class="page-link border-0 text-dark" href="#">1</a></li>
            <li class="page-item"><a class="page-link border-0 text-dark" href="#">2</a></li>
            <li class="page-item"><a class="page-link border-0 text-dark" href="#">3</a></li>
            <li class="page-item"><a class="page-link border-0 text-dark" href="#"><i class="fa-solid fa-angle-right" style="color: #493208;"></i></a></li>
        </ul>
    </div>
   </div>
		</main>
		<!-- 풋터 -->
		<jsp:include page="../../common/footer.jsp" />
	</div>

</body>
</html>