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
	Cookie[] cookies = request.getCookies();
	if(cookies != null) {
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals("mycookie")) {
				out.print("Cookie Name : " + cookies[i].getName() + "<p>");
				out.print("Cookie Value : " + cookies[i].getValue());
			}
		}
	}
%>
</body>
</html>