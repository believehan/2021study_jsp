<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page errorPage="error.jsp.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	int num1 = 10;
	int num2 = 0;
%>
<h1>사칙연산</h1>
num1 + num2 = <%=num1 + num2 %><p/>
num1 - num2 = <%=num1 - num2 %><p/>
num1 * num2 = <%=num1 * num2 %><p/>
num1 / num2 = <%=num1 / num2 %><p/>
</body>
</html>