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
	1. ���� �����ϴ� ������?<p/>
	<input type="radio" name="season" value="��">��
	<input type="radio" name="season" value="����">����
	<input type="radio" name="season" value="����">����
	<input type="radio" name="season" value="�ܿ�">�ܿ�<br><br>
	
	2. ���� �����ϴ� ������?<p/>
	<input type="radio" name=fruit value="���">���
	<input type="radio" name="fruit" value="����">����
	<input type="radio" name="fruit" value="����">����
	<input type="radio" name="fruit" value="��">��
	<p>
	<input type="submit" value="������">
	<input type="reset" value="�ʱ�ȭ">
</form>
</body>
</html>