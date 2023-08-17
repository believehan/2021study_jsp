<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String name = "홍길동";
	int num1 = 10, num2 = 20;
	int sum = num1 + num2;
%>
내 이름은 <%=name%>입니다.<br>
10 + 20 =<%=sum %>
</body>
</html>