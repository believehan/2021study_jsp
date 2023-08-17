<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	request.setCharacterEncoding("EUC-KR");
	
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>Forword Tag</h1>
forword 되기전의 페이지<p/>
<jsp:forward page="08.forword3.jsp"></jsp:forward>
</body>
</html>