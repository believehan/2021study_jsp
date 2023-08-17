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
성격이 좋지만 반면 화나면 엄청 무서운 혈액형이다.
</body>
</html>