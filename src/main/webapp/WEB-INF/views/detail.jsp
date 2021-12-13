<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.mycompany.myapp.post.PostDAO, com.mycompany.myapp.post.PostVO"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- 추가할부분 --> 
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Insert title here</title>
</head>
<%
	PostVO u = (PostVO)request.getAttribute("u");
%>
<!-- 실프는 방에서 공부를 해야만 할거 같은 느낌적인 느낌이 1시간 정도면 다 공부하지 않을까?  -->
<body>
	<h1>상세정보</h1>
		<form:form commandName="boardVO" action="../home" method="post">
			<form:hidden path="id"/>
			<table id="view">
				<tr><td>작성자</td><td>${u.getWriter}</td></tr>
				<tr><td>장소</td><td>${u.getPlace}</td></tr>
				<tr><td>시간</td><td>${u.getRegdate}</td></tr>
				<tr><td>전화번호</td><td>${u.get_Phone_number}</td></tr>
				<tr><td>해결</td><td>${u.get_Found}</td></tr>
				<tr><td>내용</td><td><textarea cols="50" rows="5">${u.content}</textarea></td>
				<%-- <tr><td>내용</td><td><form:input path="content" /></td></tr>
				<tr><td>전화번호</td><td><form:input path="phone_number" /></td></tr>
				<tr><td>해결</td><td><form:input path="found" /></td></tr>
				<tr><td>내용</td><td><form:textarea cols="50" rows="5" path="content" /> --%>
				</table>
		</form:form>

	

</body>
</html>





