<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Edit Form</h1>
	<form action="editpost.jsp" method="post">
	<input type="hidden" name="seq" value="<%=u.getSeq() %>"/>
	<table>
	<tr><td>Title:</td><td><input type="text" name="title" value="<%= u.getTitle()%>"/></td></tr>
	<tr><td>Writer:</td><td><input type="text" name="writer" value="<%= u.getWriter()%>" /></td></tr>
	<tr><td>Content:</td><td><textarea cols="50" rows="5" name="content"><%= u.getContent()%></textarea></td></tr>
	<tr><td colspan="2"><input type="submit" value="Edit Post"/>
	<input type="button" value="Cancel" onclick="history.back()"/></td></tr>
	</table>
</form>
</body>
</html>