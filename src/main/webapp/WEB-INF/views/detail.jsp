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

<!-- 상세정보를 받아드려서 여기다 올린다고 생각을 하면 된다.  
일단은 사진을 url로 추가를 하는 방향으로 가자
 디자인은 차차 생각을 하고 일단은 DAO 에서 어떻게 하면 list 정보를 넘겨 줄 수 있을지 
알아보고 오는 것으로 하자 
DAO가 아니라 contorller 에서 하는 거였네 

BoardVO의 형태로 들어올 것이라는 가정을 하자 

s내가 중요하게 봐야 하는 부분은 css에 관한 부분일수도 있고 아니면 

상세페이지에서 파일을 올리는 것이 나으려나? 
add할 때 올리는 것이 낫지 않으려나? 

-->

