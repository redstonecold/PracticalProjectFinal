<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add post</title>
</head>

<body>
	<h1>Add New Post</h1>
	<form action="addok" method="post">
		<table id = "edit">
		<tr><td>글 제목 :</td><td><input type="text" name="title"/></td></tr>
		<tr><td>작성자 :</td><td><input type="text" name="writer"/></td></tr>
		<tr><td>내용 :</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
		<tr><td>분실 예상 장소 :</td><td><input type="text" name="place"/></td></tr>
		<tr><td>연락처 :</td><td><input type="text" name="phone_number"/></td></tr>
		<tr>
			<td>찾음 여부 :</td>
			<td><input type="radio" name="found" value=0 checked/>못 찾음 <input type="radio" name="found" value=1 />찾음</td>
		</tr>
		</table>
		<button type="button" onclick="location.href='list'">목록보기</button>
		<button type="submit">등록하기</button>
	</form>
</body>
</html>