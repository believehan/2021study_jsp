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
	String[] names = request.getParameterValues("food");
	for(int i=0; i<names.length; i++) {
		out.print(names[i] + "<br>");
	}
%>
</body>
</html>