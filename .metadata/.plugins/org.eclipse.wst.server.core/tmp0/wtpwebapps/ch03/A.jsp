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
<b><%=name %></b>�� �������� <b><%=bloodType %></b>���̰�
������ �����ϰ� �Ϻ������� �Դϴ�.
</body>
</html>