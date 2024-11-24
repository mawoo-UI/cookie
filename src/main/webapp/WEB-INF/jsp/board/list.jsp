<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                    <th class="text-center">조회수</th>
                </tr>
            </thead>
            <tbody>
                <tr class="">
                    <td class="text-center bg-cookie"><i class="fa-solid fa-fire text-danger"></i> </td>
                    <td class="text-left bg-cookie"><span class="badge bg-secondary">인기</span> <a href="BoardView.html">골프 동호회</a></td>
                    <td class="text-center bg-cookie">임마누엘</td>
                    <td class="text-center bg-cookie">2024-11-18</td>
                    <td class="text-center bg-cookie">1</td>
                </tr>
                
                <c:forEach items="${boards}" var="b">
                
                <tr>
                    <td class="text-center">${b.pno}</td>
                    <td class="text-left"><a href="view?pno=${b.pno}">${b.title}</a></td>
                    <td class="text-center">${b.writer}</td>
                    <td class="text-center">${b.regdate}</td>
                    <td class="text-center">${b.viewCount}</td>
                </tr>
                </c:forEach>
               
            </tbody>
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
		</main>
		<!-- 풋터 -->
		<jsp:include page="../../common/footer.jsp" />
	</div>

</body>
</html>