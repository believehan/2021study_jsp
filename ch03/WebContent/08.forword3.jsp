<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id=request.getParameter("id");
	String pw=request.getParameter("pwd");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
����� ID�� <B><%=id %></B>�̰�, <p/>
PW�� <B><%=pw %></B>�Դϴ�.
</body>
</html>