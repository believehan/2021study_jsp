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
��Ű����<p>
��Ű�� ������ <a href="02.1.testeCookie.jsp">���⸦ Ŭ���ϼ���</a>
</body>
</html>