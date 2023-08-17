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
<h2>Cookie 사용하여 연결 유지</h2>
쿠키를 만듭니다<p>
쿠키의 내용은 <a href="01.1.testteCookie.jsp">여기를 클릭하세요</a>
</body>
</html>