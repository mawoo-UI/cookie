<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="../../../common/head.jsp" />
</head>
<body>
<jsp:include page="../../../common/admin_menu.jsp" />
<div class="container mt-5">
	<div class="dropdown">
        <a href="write?${pageDto.cri.qs2}" class="btn btn-cookie btn-sm float-end" >글 작성하기</a>
    </div>
    <h2 class="text-center ">${cname}</h2>
    <table class="table table-hover">
    <thead>
        <tr>
            <th class="text-center"><label for="checkbox" class="form-label"><span class="btn btn-cookie btn-sm">전체선택</span></label></th>
            <th class="text-center align-middle">글 번호</th>
            <th class="text-center align-middle" style="width: 50%">제목</th>
            <th class="text-center align-middle">작성자</th>
            <th class="text-center align-middle">작성일</th>
            <th class="text-center align-middle">조회수</th>
        </tr>
    </thead>
    <tbody>
        
        <c:forEach items="${boards}" var="b">
        
        <tr>
            <td class="text-center"><input type= "checkbox"></td>
            <td class="text-center">${b.pno}</td>
            <td class="text-left"><a href="view?pno=${b.pno}&${pageDto.cri.qs2}" class="text-cookie-secondary text-decoration-none ">${b.title}</a></td>
            <td class="text-center">${b.writer}</td>
            <td class="text-center">${b.regdate}</td>
            <td class="text-center">${b.viewCount}</td>
        </tr>
        </c:forEach>
        <%-- <div class="text-center my-5">
	            <button href="modify?pno=${board.pno}&${cri.qs2}" class="btn btn-cookie-secondary btn-sm ">등록</button>
	            <a href="list?${cri.qs2}" class="btn btn-cookie btn-sm ">목록</a>
	        </div> --%>
    </tbody>
    </table>
    <ul class="pagination justify-content-center">
        	<c:if test="${pageDto.doublePrev}">
        	<li class="page-item"><a class="page-link border-0 rounded-0 text-cookie-secondary" href="list?page=${pageDto.startPage- 1}&${pageDto.cri.qs}"><i class="fa-solid fa-angles-left"></i></a></li>
            </c:if>
            <c:if test="${pageDto.prev}">
            <li class="page-item"><a class="page-link border-0 rounded-0 text-cookie-secondary" href="list?page=${pageDto.cri.page-1}&${pageDto.cri.qs}"><i class="fa-solid fa-angle-left "></i></a></li>
            </c:if>
            <c:forEach begin ="${pageDto.startPage}" end="${pageDto.endPage}" var ="page">
            <li class="page-item ${page == pageDto.cri.page ? 'active' : ''}"><a class="page-link border-0 text-cookie-secondary" href="list?page=${page}&${pageDto.cri.qs}">${page}</a></li>
            </c:forEach>
            
            <c:if test="${pageDto.next}">
            <li class="page-item"><a class="page-link border-0 rounded-0 text-cookie-secondary" href="list?page=${pageDto.cri.page+1}&${pageDto.cri.qs}"><i class="fa-solid fa-angle-right "></i></a></li>
            </c:if>
            
            <c:if test="${pageDto.doubleNext}">
            <li class="page-item"><a class="page-link border-0 rounded-0 text-cookie-secondary" href="list?page=${pageDto.endPage+1}&${pageDto.cri.qs}"><i class="fa-solid fa-angles-right"></i></a></li>
	        </c:if> 
        </ul>
          <c:forEach items="${posts}" var="post" varStatus="stat" begin="3" end="10" step="2">
			<h3>${stat.index} // ${stat.count} // ${post.title}</h3>	
			<p> ${boards[stat.index] == board} </p>
		 </c:forEach>
    </div>
</body>
</html>