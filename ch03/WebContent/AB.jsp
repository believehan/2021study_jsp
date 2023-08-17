<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String name = request.getParameter("name");
	String bloodType = request.getParameter("bloodType");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<b><%=name %></b>의 혈액형은 <b><%=bloodType %></b>형이고
 천재 아니면 바보이다
</body>
</html>