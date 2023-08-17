<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page info="web 동적 페이지를 위한 JSP"%>
<%@ page import="java.util.*" session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>페이지 정보를 넣고 출력하기</h1>
<%=this.getServletInfo() %>
</body>
</html>