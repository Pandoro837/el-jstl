<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>연산</h1>
	<p> 산술 연산자<br>
		\${5 + 2} ---> ${5 + 2}	<br>
		
		\${5 - 2} ---> ${5 - 2} <br>
		
		\${5 * 2} ---> ${5 * 2} <br>
		
		<br>
		비교 연산자<br>
		\${5 / 2} ---> ${5 / 2} <br>
		\${5 div 2} ---> ${5 div 2} <br>
		
		\${5 % 2} ---> ${5 % 2} <br>
		\${5 mod 2} ---> ${5 mod 2} <br>
		
		<br>
		
		\${5 > 2} ---> ${5 > 2} <br>
		\${5 gt 2} ---> ${5 gt 2} <br>
		
		\${5 < 2} ---> ${5 < 2} <br>
		\${5 lt 2} ---> ${5 lt 2} <br>
		
		<br>
		
		\${5 >= 2} ---> ${5 >= 2} <br>
		\${5 ge 2} ---> ${5 ge 2} <br>		
		
		\${5 <= 2} ---> ${5 <= 2} <br>
		\${5 le 2} ---> ${5 le 2} <br>
		
		<br>
		
		\${5 == 2} ---> ${5 == 2} <br>
		\${5 eq 2} ---> ${5 eq 2} <br>
		
		\${5 != 2} ---> ${5 != 2} <br>
		\${5 eq 2} ---> ${5 eq 2} <br>
		
		<br>
		조건식 <br>
		\${5 >= 2 ? 5 : 2 } ---> ${5 >= 2 ? 5 : 2 } <br>
		
		<br>
		or <br>
		${(5 > 2) || (2 > 10)} <br>
		${(5 < 2) || (2 > 10)} <br>
		
		<br>
		and <br>
		${(5 > 2) && (2 > 10)} <br>
		${(5 > 2) && (2 < 10)} <br>
		${5 > 2}  && ${2 < 10} <br> <!-- 주의, 아님 -->
		
		<br>
		문자열 내부 확인 <br>
		\${empty str} ---> ${empty str} <br> <!-- str 변수가 비어있는지 확인 -->
		
		<br>
		<%
			String val = (String)request.getAttribute("reqVal");
		%>
		<%=val %>
		<!-- 위와 아래는 같은 표현이다 -->
		<br>
		${reqVal}	<!-- requset에 담은 Attribute의 이름을 적으면, 해당 값을 불러온다 -->
		
		<br>
		
		
		
	</p>
</body>
</html>