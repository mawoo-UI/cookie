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
                        <td class="text-left">내년엔 얼마나 더 더울까</td>
                        <td class="text-center">김태양</td>
                        <td class="text-center">2024-11-18</td>
                        <td class="text-center">0</td>
                    </tr>
                    <tr>
                        <td class="text-center">19</td>
                        <td class="text-left">뭉티기 맛집알려줘</td>
                        <td class="text-center">마강함</td>
                        <td class="text-center">2024-11-18</td>
                        <td class="text-center">0</td>
                    </tr>
                    <tr>
                        <td class="text-center">18</td>
                        <td class="text-left">할게 없다</td>
                        <td class="text-center">김진희</td>
                        <td class="text-center">2024-11-18</td>
                        <td class="text-center">0</td>
                    </tr>
                    <tr>
                        <td class="text-center">17</td>
                        <td class="text-left">영화관 음향 오지는데 없냐?</td>
                        <td class="text-center">김강원</td>
                        <td class="text-center">2024-11-18</td>
                        <td class="text-center">0</td>
                    </tr>
                    <tr>
                        <td class="text-center">16</td>
                        <td class="text-left">대구대굴ㄹㄹ</td>
                        <td class="text-center">엄준식</td>
                        <td class="text-center">2024-11-18</td>
                        <td class="text-center">0</td>
                    </tr>
                    <tr>
                        <td class="text-center">15</td>
                        <td class="text-left">카페 추천해줘()</td>
                        <td class="text-center">곽마원</td>
                        <td class="text-center">2024-11-18</td>
                        <td class="text-center">0</td>
                    </tr>
                    <tr>
                        <td class="text-center">14</td>
                        <td class="text-left">여기 근처 치킨집이</td>
                        <td class="text-center">임꺽정</td>
                        <td class="text-center">2024-11-18</td>
                        <td class="text-center">0</td>
                    </tr>
                    <tr>
                        <td class="text-center">13</td>
                        <td class="text-left">아빠 안잔다</td>
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
		</main>
		<!-- 풋터 -->
		<jsp:include page="../../common/footer.jsp" />
	</div>

</body>
</html>