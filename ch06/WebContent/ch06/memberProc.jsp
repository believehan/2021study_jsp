<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("EUC-KR"); %>
<jsp:useBean id="regBean" class="ch06.MemberBean"></jsp:useBean>
<jsp:setProperty property="*" name="regBean"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border="1" align="center">
	<form name="regForm" method="post" action="?????.jsp">
		<tr>
			<th colspan="2">
			<jsp:getProperty property="name" name="regBean"/>
			���� �ۼ��� �����Դϴ�. Ȯ�����ּ���
			</th>
		</tr>
		<tr>
			<td>���̵�</td>
			<td><jsp:getProperty property="id" name="regBean"/></td>
		</tr>
		<tr>
			<td>��й�ȣ</td>
			<td><jsp:getProperty property="pwd" name="regBean"/></td>
		</tr>
		<tr>
			<td>�̸�</td>
			<td><jsp:getProperty property="name" name="regBean"/></td>
		</tr>
		<tr>
			<td>�������</td>
			<td><jsp:getProperty property="birthday" name="regBean"/></td>
		</tr>
		<tr>
			<td>email</td>
			<td><jsp:getProperty property="email" name="regBean"/></td>
		</tr>
		<tr>
			<td colspan="2">
			<input type="submit" value="Ȯ�οϷ�">
			<input type="button" value="�ٽþ���" onClick="history.back()">
			</td>
		</tr>
	</form>
</table>
</body>
</html>