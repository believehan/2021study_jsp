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
<h3>include tag�� Top�κ�</h3>
����Ʈ �̸� : <%=siteName %><p/>
����Ʈ ��ȭ��ȣ : <%=siteTel %><p/>
</body>
</html>