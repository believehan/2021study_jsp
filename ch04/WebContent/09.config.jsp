<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	Enumeration e = config.getInitParameterNames();
	while(e.hasMoreElements()) {
		String initParamName = (String)e.nextElement();
		out.print(initParamName + " : " + config.getInitParameter(initParamName) + "<p>");
	}
%>
</body>
</html>