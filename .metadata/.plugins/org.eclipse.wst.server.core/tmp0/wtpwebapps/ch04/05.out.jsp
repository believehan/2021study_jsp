<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" buffer = "5kb" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	int totalBuffer = out.getBufferSize();
	int remainBuffer = out.getRemaining();
	int userBuffer = totalBuffer - remainBuffer;
	out.print("출력");
%>
현재 페이지의 Buffer 상태<p>
Buffer의 전체 크기 : <%=totalBuffer %>byte<p>
Buffer의 사용량 : <%=userBuffer %>byte<p>
남은 Buffer의 크기 : <%=remainBuffer %>byte<p>
</body>
</html>