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
        <h2 class="text-center ">충청도</h2>
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
                        <td class="text-left">머드 축제 기대된다</td>
                        <td class="text-center">황덕수</td>
                        <td class="text-center">2024-11-18</td>
                        <td class="text-center">0</td>
                    </tr>
                    <tr>
                        <td class="text-center">19</td>
                        <td class="text-left">이번에 부모님 모시고 갈만한곳 알려줘</td>
                        <td class="text-center">곽마원</td>
                        <td class="text-center">2024-11-18</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td class="text-center">18</td>
                        <td class="text-left">원데이 클래스 추천해줄 곳 있음?(충북)</td>
                        <td class="text-center">임꺽정</td>
                        <td class="text-center">2024-11-18</td>
                        <td class="text-center">0</td>
                    </tr>
                    <tr>
                        <td class="text-center">17</td>
                        <td class="text-left">맛집 추천 받음(충북)</td>
                        <td class="text-center">김덕수</td>
                        <td class="text-center">2024-11-18</td>
                        <td class="text-center">0</td>
                    </tr>
                    <tr>
                        <td class="text-center">16</td>
                        <td class="text-left">충북 신도시 거주해보면 좀 어때</td>
                        <td class="text-center">박두창</td>
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
                        <td class="text-left">국립청주박물관 이번에 가족들이랑 다녀왔습니다^^</td>
                        <td class="text-center">김억두</td>
                        <td class="text-center">2024-11-18</td>
                        <td class="text-center">0</td>
                    </tr>
                    <tr>
                        <td class="text-center">13</td>
                        <td class="text-left">충북 최고의 맛집을 찾았다!</td>
                        <td class="text-center">하우돈</td>
                        <td class="text-center">2024-11-18</td>
                        <td class="text-center">0</td>
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
    </div>
		</main>
		<!-- 풋터 -->
		<jsp:include page="../../common/footer.jsp" />
	</div>

</body>
</html>