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
	session.setAttribute("idKey", "kim");
	session.setAttribute("pwKey", "1234");
%>
������ ������<p>
���� ������ <a href="03.1.testeSession.jsp">Ŭ���ϼ���</a>
</body>
</html>