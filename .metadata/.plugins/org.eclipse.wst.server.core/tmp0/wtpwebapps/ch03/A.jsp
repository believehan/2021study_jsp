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
성격은 성실하고 완벽주의자 입니다.
</body>
</html>