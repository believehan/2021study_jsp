<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>�Ի� ������</h1>
	<table border="1" align="center" bgcolor="#5CD1E5">
		<form method="post" name="regForm" action="interProc.jsp">
		<tr>
			<td>�̸�</td>
			<td><input name="name" size="24"></td>
		</tr>
		<tr>
			<td>�ּ�</td>
			<td><input name="ad" size="24"></td>
		</tr>
		<tr>
			<td>��ȭ��ȣ</td>
			<td><input name="tel" size="24"></td>
		</tr>
		<tr>
			<td>���� �μ�</td>
			<td><input name="dep" size="24"></td>
		</tr>
		<tr>
			<td>���� ����</td>
			<td><input name="mot" size="24"></td>
		</tr>
		<tr>
			<td colspan="3" ailng="center">
			<input type="submit" value="����">
			<input type="reset" value="�ʱ�ȭ">
			</td>
		</tr>
</body>
</html>