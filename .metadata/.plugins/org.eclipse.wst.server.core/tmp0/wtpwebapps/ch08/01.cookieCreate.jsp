<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	Cookie cook = new Cookie("mycookie", "hme");
	cook.setMaxAge(60);
	cook.setValue("Apple");
	response.addCookie(cook);
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>Cookie ����Ͽ� ���� ����</h2>
��Ű�� ����ϴ�<p>
��Ű�� ������ <a href="01.1.testteCookie.jsp">���⸦ Ŭ���ϼ���</a>
</body>
</html>