<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
�α׾ƿ� �Ǿ����ϴ�.
<%
	session.invalidate();
	response.sendRedirect("03.login.jsp");
%>
</body>
</html>