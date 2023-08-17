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
	request.setCharacterEncoding("EUC-KR");
	String name = request.getParameter("str");
	int number = Integer.parseInt(request.getParameter("num"));
	
	for(int i=0; i<=number; i++){
		out.print(name + "<br>");
	}
%>
</body>
</html>