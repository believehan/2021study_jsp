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
	String name = "Korea wed JSP";
%>
<h1>Include Tag</h1>
<jsp:include page="06.includeTag2.jsp"></jsp:include>
includeTag의 Body입니다.
본문내용
</body>
</html>