<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("EUC-KR"); %>
<jsp:useBean id="intBean" class="testfd.interBean"></jsp:useBean>
<jsp:setProperty property="*" name="intBean"/>
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
			<jsp:getProperty property="name" name="intBean"/>
			���� �ۼ��� �����Դϴ�. Ȯ�����ּ���
			</th>
		</tr>
		<tr>
			<td>���̵�</td>
			<td><jsp:getProperty property="ad" name="intBean"/></td>
		</tr>
		<tr>
			<td>��й�ȣ</td>
			<td><jsp:getProperty property="tel" name="intBean"/></td>
		</tr>
		<tr>
			<td>�̸�</td>
			<td><jsp:getProperty property="dep" name="intBean"/></td>
		</tr>
		<tr>
			<td>�������</td>
			<td><jsp:getProperty property="mot" name="intBean"/></td>
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