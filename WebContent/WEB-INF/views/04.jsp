<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vo.UserVo" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>request.attribute 값 꺼내쓰기</h1>

	<h2>자바 문법</h2>
	<%
		UserVo userVo = (UserVo) request.getAttribute("userVo");
		int num = (int)request.getAttribute("num");
		String str = (String)request.getAttribute("str");
	%>
	
	name = <%=userVo.getName() %> <br>
	email = <%=userVo.getEmail() %> <br>
	password = <%=userVo.getPassword() %> <br>
	gender = <%=userVo.getGender() %> <br>
	
	<br>
	
	num = <%=num %>
	str = <%=str %>
	
	<h2>el</h2>
	num = ${requestScope.num} <br>
	str = ${requestScope.str} <br>
	
	<br>
	
	name = ${userVo.name } <br>		<!-- getName으로 작동 -> getter가 없으면 찾지 못함 -->
	email = ${requestScope.userVo.email } <br>
	password = ${requestScope.userVo.password } <br>
	gender = ${requestScope.userVo.gender } <br>
	
</body>
</html>