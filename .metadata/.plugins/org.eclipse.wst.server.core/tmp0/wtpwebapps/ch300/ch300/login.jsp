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
		out.print(id + "님 반갑습니다<p>");
%>
	<a href="logout.jsp">로그아웃</a>
<%
	} else {
%>
	<form method="post" action="LoginServlet">
		id : <input name="id"><p>
		pw : <input type="password" name="pwd"><p>
		<input type="submit" value="로그인">
	</form>
<% } %>
</body>
</html>