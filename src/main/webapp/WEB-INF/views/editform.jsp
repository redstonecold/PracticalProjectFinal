<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.mycompany.myapp.post.PostVO" %>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<%
	PostVO u = (PostVO)request.getAttribute("u");
%>

<body>
	<h1>Edit Form</h1>
	
	<form action="../editok" method="post">
		<input type="hidden" name="id" value="<%=u.getId() %>"/>
		<table>
		<tr><td>글 제목 :</td><td><input type="text" name="title" value="<%= u.getTitle()%>"/></td></tr>
		<tr><td>작성자 :</td><td><input type="text" name="writer" value="<%= u.getWriter()%>"/></td></tr>
		<tr><td>내용 :</td><td><textarea cols="50" rows="5" name="content"><%= u.getContent()%></textarea></td></tr>
		<tr><td>분실 예상 장소 :</td><td><input type="text" name="place" value="<%= u.getPlace()%>"/></td></tr>
		<tr><td>연락처 :</td><td><input type="text" name="phone_number" value="<%= u.getPhone_number()%>"/></td></tr>
		<tr>
			<td>찾음 여부 :</td>
			<td><input type="radio" name="found" value=0/>못 찾음 <input type="radio" name="found" value=1 />찾음</td>
		</tr>
		<tr><td colspan="2">
		<input type="button" value="Cancel" onclick="history.back()"/>
		<input type="submit"/>
		</td></tr>
		</table>
	</form>
</body>
</html>