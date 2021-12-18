<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page import="com.mycompany.myapp.post.PostVO" %>
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
/* 	.box-radio-input input[type="radio"]{
	  display:none;
	}
	
	.box-radio-input input[type="radio"] + span{
	  display:inline-block;
	  background:none;
	  border:1px solid #dfdfdf;  
	  padding:0px 10px;
	  text-align:center;
	  height:35px;
	  line-height:33px;
	  font-weight:500;
	  cursor:pointer;
	}
	
	.box-radio-input input[type="radio"]:checked + span{
	  border:1px solid #23a3a7;
	  background:#23a3a7;
	  color:#fff;
	} */
</style>
<head>
<meta charset="UTF-8">
<title>Edit Post</title>
</head>

<%
	PostVO u = (PostVO)request.getAttribute("u");
%>

<body>
	<div class="header">
		<h1>Edit Form</h1>
	</div>
	
	<form action="../editok" method="post">
		<input type="hidden" name="id" value="<%=u.getId() %>"/>
		<table>
		<tr><td>글 제목</td></tr><tr><td><input type="text" name="title" value="<%= u.getTitle()%>"/></td></tr>
		<tr><td>작성자</td></tr><tr><td><input type="text" name="writer" value="<%= u.getWriter()%>"/></td></tr>
		<tr><td>내용</td></tr><tr><td><textarea cols="50" rows="5" name="content"><%= u.getContent()%></textarea></td></tr>
		<tr><td>분실 예상 장소</td></tr><tr><td><input type="text" name="place" value="<%= u.getPlace()%>"/></td></tr>
		<tr><td>연락처</td></tr><tr><td><input type="text" name="phone_number" value="<%= u.getPhone_number()%>"/></td></tr>
		<tr>
			<td>찾음 여부
				<label class="box-radio-input">
				<input type="radio" name="found" value=0 checked/><span>못 찾음</span><input type="radio" name="found" value=1 /><span>찾음</span>
			</label></td>
		</tr>
		<tr><td colspan="2">
		<input type="button" class="button" value="Cancel" onclick="history.back()"/>
		<input type="submit" class="button"/>
		</td></tr>
		</table>
	</form>
	<div class="footer">
	  <p>2021-2 실전프로젝트1 Final Project</p>
	</div>
</body>
</html>