<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	pageContext.setAttribute("name", "page name");
	request.setAttribute("name", "request name");
	session.setAttribute("name", "session name");
	application.setAttribute("name", "application name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>범주 우선순위</h1>
	
	<h2>자바 코드</h2>
	page name =<%=pageContext.getAttribute("name") %> <br>
	request name =<%=request.getAttribute("name") %> <br>
	session name =<%=session.getAttribute("name") %> <br>
	application name =<%=application.getAttribute("name") %> <br>
	
	<br>
	
	<h2>el</h2>
	scope 구분 <br>
	page name = ${pageScope.name } <br>
	request name = ${requestScope.name } <br>
	session name = ${sessionScope.name } <br>
	application name = ${applicationScope.name } <br>
	
	<br>
	
	스코프 생략 <br>
	page name = ${name } <br>
	request name = ${name } <br>
	session name = ${name } <br>
	application name = ${name } <br>
	
</body>
</html>