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
	String id = (String)session.getAttribute("idKey");
	if(id != null) {
		out.print(id + "�� �ݰ����ϴ�<p>");
%>
	<a href="logout.jsp">�α׾ƿ�</a>
<%
	} else {
%>
	<form method="post" action="LoginServlet">
		id : <input name="id"><p>
		pw : <input type="password" name="pwd"><p>
		<input type="submit" value="�α���">
	</form>
<% } %>
</body>
</html>