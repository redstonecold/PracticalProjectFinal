<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<style>
	body {
	  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	  border-collapse: collapse;
	  width: 100%;
	}
	.header {
	  background-color: #004680;
	  color: #ffffff;
	  padding: 10px;
	}
	h1{
		text-align:center;
	}
	#list td, #list th {
	  border: 1px solid #ddd;
	  padding: 8px;
	  text-align:center;
	}
	#list tr:nth-child(even){background-color: #EBEBEB;}
	#list tr:hover {background-color: #ddd;}
	#list th {
	  padding-top: 12px;
	  padding-bottom: 12px;
	  text-align: center;
	  background-color: #006bb3;
	  color: white;
	}
	.button {
		background-color: #4CAF50; /* Green */
		border: none;
		border-radius: 10px;
		color: white;
		padding: 9px 20px;
		text-align: center;
		text-decoration: none;
		display: inline-block;
		font-size: 16px;
		margin: 4px 2px;
		cursor: pointer;
	}
	.button:hover{
		background-color: #52CD48;
	}
	.footer {
	  background-color: #004680;
	  color: #ffffff;
	  text-align: center;
	  font-size: 12px;
	  padding: 15px;
	  margin: 20px auto 0 auto;
	}
</style>

<head>
<meta charset="UTF-8">
<title>Lost And Found</title>
</head>
<body>
	<div class="header">
	<h1>한동 분실물 게시판</h1>
	</div>
	
	<br/><button class="button" type="button" onclick="location.href='../post/add'">게시글 쓰기</button>
	<table id="list" width="90%">
	<tr>
		<th>No</th>
		<th>게시일</th>
		<th>제목</th>
		<th>작성자</th>
		<th>게시글 보기</th>
	</tr>
	<c:forEach items="${list}" var="u">
		<tr>
			<td>${u.getId()}</td>
			<td>${u.getRegdate()}</td>
			<td>${u.getTitle()}</td>
			<td>${u.getWriter()}</td>
			<td><a href="editform/${u.getId()}">View</a></td>
		</tr>
	</c:forEach>
	</table>
	
	<div class="footer">
	  <p>2021-2 실전프로젝트1 Final Project</p>
	</div>
</body>
</html>