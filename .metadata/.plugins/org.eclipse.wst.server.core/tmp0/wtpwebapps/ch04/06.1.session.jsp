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
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	String pw = request.getParameter("pwd");
	
	session.setAttribute("idKey", id);
	session.setMaxInactiveInterval(60*60);
%>
<h1>Session Ex</h1>
<form method="post" action="06.2.session.jsp">
	1. 가장 좋아하는 계절은?<p/>
	<input type="radio" name="season" value="봄">봄
	<input type="radio" name="season" value="여름">여름
	<input type="radio" name="season" value="가을">가을
	<input type="radio" name="season" value="겨울">겨울<br><br>
	
	2. 가장 좋아하는 과일은?<p/>
	<input type="radio" name=fruit value="사과">사과
	<input type="radio" name="fruit" value="포도">포도
	<input type="radio" name="fruit" value="딸기">딸기
	<input type="radio" name="fruit" value="귤">귤
	<p>
	<input type="submit" value="보내기">
	<input type="reset" value="초기화">
</form>
</body>
</html>