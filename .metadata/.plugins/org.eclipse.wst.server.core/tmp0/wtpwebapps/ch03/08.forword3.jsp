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
당신의 ID는 <B><%=id %></B>이고, <p/>
PW는 <B><%=pw %></B>입니다.
</body>
</html>