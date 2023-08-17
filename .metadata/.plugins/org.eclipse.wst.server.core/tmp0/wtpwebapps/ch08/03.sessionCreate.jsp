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
	session.setAttribute("idKey", "kim");
	session.setAttribute("pwKey", "1234");
%>
세션이 생성됨<p>
세션 정보는 <a href="03.1.testeSession.jsp">클릭하세요</a>
</body>
</html>