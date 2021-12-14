<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lost And Found</title>
</head>
<body>
	<br/><button type="button" onclick="location.href='add'">게시글 쓰기</button>
	<table id="list" width="90%">
	<tr>
		<th>No</th>
		<th>게시일</th>
		<th>물건명</th>
		<th>게시글</th>
		<th>작성자</th>
		<th>게시글 보기</th>
	</tr>
	<c:forEach items="${list}" var="u">
		<tr>
			<td>${u.getId()}</td>
			<td>${u.getRegdate()}</td>
			<td>${u.getName()}</td>
			<td>${u.getTitle()}</td>
			<td>${u.getWriter()}</td>
			<td><a href="editform/${u.getId()}">View</a></td>
		</tr>
	</c:forEach>
	</table>
</body>
</html>