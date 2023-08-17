<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String siteName = request.getParameter("siteName");
	String siteTel = request.getParameter("siteTel");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>include tag의 Top부분</h3>
사이트 이름 : <%=siteName %><p/>
사이트 전화번호 : <%=siteTel %><p/>
</body>
</html>