<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Board Post</title>
</head>
<body bgcolor="#FFD5A2">
	<form method="post" name="postFrm" action="boardPost" enctype="multipart/form-data">
		<table align="center">
			<tr>
				<td colspan="2" align="center" bgcolor="#476600" height="25"><font color="#ffffff">�� �� ��</font></td>
			</tr>
			<tr>
				<td width="20%">����</td>
				<td width="80%"><input name="name"></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input name="subject"></td>
			</tr>
			<tr>
				<td>����</td>
				<td><textarea name="content" rows="10" cols="50"></textarea></td>
			</tr>
			<tr>
				<td>��й�ȣ</td>
				<td><input type="password" name="pass"></td>
			</tr>
			<tr>
				<td>����ã��</td>
				<td><input type="file" name="filename"></td>
			</tr>
			<tr>
				<td>����Ÿ��</td>
				<td>HTML<input type="radio" name="contentType" value="HTTP">&emsp;&emsp;
					TEXT<input type="radio" name="contentType" value="TEXT" checked>
				</td>
			</tr>
			<tr>
				<td colspan="2"><hr/></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="���">&emsp;
					<input type="reset" value="�ٽþ���">&emsp;
					<input type="button" value="����Ʈ" onClick="javascript:location.href='list.jsp'">
				</td>
			</tr>			
		</table>
		<input type="hidden" name="ip" value="<%=request.getRemoteAddr() %>">
	</form> 
</body>
</html>








