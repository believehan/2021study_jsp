<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	Enumeration sn= session.getAttributeNames();
	while(sn.hasMoreElements()){
		String name = (String)sn.nextElement();
		String value = (String)session.getAttribute(name);
		out.print("session name : " + name + "<p>");
		out.print("session value : " + value + "<p>");
	}
%>
</body>
</html>