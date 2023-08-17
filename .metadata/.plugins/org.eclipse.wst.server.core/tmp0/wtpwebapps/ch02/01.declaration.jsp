<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>선언문 사용</h2>
<h3>위치와 상관없이 사용</h3>
나의 이름은 <%=name %>입니다.<br>
나이는 <%=age %>입니다.
<%!
	String name = "홍길동";
	int age = 24;
%>
<%
	String userName = "아무개";
	int age2 = 27;
%>
<h2>스크립트립</h2>
<h3>반드시 선언한 후 사용</h3>
나의 이름은 <%=userName %>입니다.<br>
나이는 <%=age2 %>입니다.
</body>
</html>