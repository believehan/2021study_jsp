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
	out.print("out.print() �޼ҵ带 �̿��� ���<p>");

	pageContext.getOut().print("pageContext.getOut()��ü�� print�޼ҵ带 ���");
%>
</body>
</html>