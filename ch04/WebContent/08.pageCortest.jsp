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
	out.print("out.print() 메소드를 이용한 출력<p>");

	pageContext.getOut().print("pageContext.getOut()객체의 print메소드를 출력");
%>
</body>
</html>