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
	out.print("���");
%>
���� �������� Buffer ����<p>
Buffer�� ��ü ũ�� : <%=totalBuffer %>byte<p>
Buffer�� ��뷮 : <%=userBuffer %>byte<p>
���� Buffer�� ũ�� : <%=remainBuffer %>byte<p>
</body>
</html>