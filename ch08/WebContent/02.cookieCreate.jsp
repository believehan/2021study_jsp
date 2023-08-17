<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	response.addCookie(new Cookie("NAME", "Joho"));
	response.addCookie(new Cookie("GENDER", "Male"));
	response.addCookie(new Cookie("AGE", "24"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
쿠키생성<p>
쿠키의 내용은 <a href="02.1.testeCookie.jsp">여기를 클릭하세요</a>
</body>
</html>