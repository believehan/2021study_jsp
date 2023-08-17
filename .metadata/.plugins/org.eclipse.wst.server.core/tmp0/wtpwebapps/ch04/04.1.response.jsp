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
	if(request.getProtocol().equals("HTTP/1.1")){
		response.setHeader("Pragma", "no-cache");	
	} else {
		response.setHeader("Cache-Control", "no-store");
	}
%>
<h1>Response Ex2</h1>
파일 변경
</body>
</html>