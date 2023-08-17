<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<p>다음과 같은 예외발생</p>
에러타입 : <%=exception.getClass().getName ()%></p>
에러메시지 : <%=exception.getMessage()%></p>
</body>
</html>