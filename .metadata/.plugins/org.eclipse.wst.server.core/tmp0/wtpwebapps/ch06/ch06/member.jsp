<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="scipt.js" charset="utf-8"></script>
</head>
<body>
	<h1>ȸ������</h1>
	<table border="1" align="center" bgcolor="#5CD1E5">
		<form method="post" name="regForm" action="memberProc.jsp">
		<tr>
			<th colspan="3" bgcolor="#6B9900" color="white">ȸ������</th>
		</tr>
		<tr>
			<td>���̵�</td>
			<td><input name="id" size="24"></td>
			<td>���̵� �����ּ���</td>
		</tr>
		<tr>
			<td>��й�ȣ</td>
			<td><input type="password" name="pwd" size="25"></td>
			<td>��й�ȣ�� �����ּ���</td>
		</tr>
		<tr>
			<td>��й�ȣ Ȯ��</td>
			<td><input type="password" name="repwd" size="25"></td>
			<td>��й�ȣ�� �ٽ� �����ּ���</td>
		</tr>
		<tr>
			<td>�̸�</td>
			<td><input name="name" size="24"></td>
			<td>�̸��� �����ּ���</td>
		</tr>
		<tr>
			<td>�������</td>
			<td><input name="birthday" size="24"></td>
			<td>��������� �����ּ���</td>
		</tr>
		<tr>
			<td>email</td>
			<td><input name="email" size="24"></td>
			<td>�̸����� �����ּ���</td>
		</tr>
		<tr>
			<td colspan="3" ailng="center">
			<input type="button" value="ȸ������" onClick="inputCheck()">
			<input type="reset" value="�ٽþ���">
			</td>
		</tr>
		</form>
	</table>
</body>
</html>