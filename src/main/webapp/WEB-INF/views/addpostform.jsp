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
	  padding: 10px
	}
	.button{
		background-color: #4CAF50; /* Green */
		border: none;
		border-radius: 10px;
		color: white;
		padding: 5px 12px;
		text-align: center;
		text-decoration: none;
		display: inline-block;
		font-size: 16px;
		margin: 2px 2px;
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
	input[type=text], textarea{
		width : 100%;
		border : 1px solid #2243B9;
		padding : 6px 10px;
		box-sizing : border-box;
		border-radius : 10px;
	}
</style>
<head>
<meta charset="UTF-8">
<title>Add post</title>
</head>

<body>
	<div class="header">
		<h1>분실물 게시글 추가</h1>
	</div>
	<br>
	<form action="addok" method="post">
		<table id = "edit">
		<tr><td>글 제목</td></tr><tr><td><input type="text" name="title"/></td></tr>
		<tr><td>작성자</td></tr><tr><td><input type="text" name="writer"/></td></tr>
		<tr><td>내용</td></tr><tr><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
		<tr><td>분실 예상 장소</td></tr><tr><td><input type="text" name="place"/></td></tr>
		<tr><td>연락처</td></tr><tr><td><input type="text" name="phone_number"/></td></tr>
		<tr>
			<td>찾음 여부 <input type="radio" name="found" value=0 checked/>못 찾음 <input type="radio" name="found" value=1 />찾음</td>
		</tr>
		</table>
		<button type="button" class="button" onclick="location.href='list'">목록보기</button>
		<button type="submit" class="button">등록하기</button>
	</form>
	<div class="footer">
	  <p>2021-2 실전프로젝트1 Final Project</p>
	</div>
</body>
</html>