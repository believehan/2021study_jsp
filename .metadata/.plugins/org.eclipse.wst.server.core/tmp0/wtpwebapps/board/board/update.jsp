<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="board.BoardBean" %>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	String nowPage = request.getParameter("nowPage");
	BoardBean bean = (BoardBean)session.getAttribute("bean");
	String subject = bean.getSubject();
	String name = bean.getName();
	String content = bean.getContent();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Board Update</title>
<script>
	function check() {
		if(document.updateFrm.pass.value=="") {
			alert("������ ���� ��й�ȣ�� �Է��ϼ���.");
			document.updateFrm.pass.focus();
			return false;
		}
		document.updateFrm.submit();
	}
</script>
</head>
<body bgcolor="#C4FFE5">
	<form name="updateFrm" method="post" action="boardUpdate">
		<table align="center">
			<tr>
				<td colspan="2" align="center" bgcolor="#A57F92" height="25"><font color="#ffffff">�����ϱ�</font></td>
			</tr>
			<tr>
				<td width="15%">����</td>
				<td width="85%"><input name="name" value="<%=name %>"></td>
			</tr>
			<tr>
				<td>����</td>
				<td><input name="subject" value="<%=subject %>"></td>
			</tr>
			<tr>
				<td>����</td>
				<td><textarea name="content" rows="10" cols="50"><%=content %></textarea></td>
			</tr>
			<tr>
				<td>��й�ȣ</td>
				<td><input type="password" name="pass">�����ÿ��� ��й�ȣ�� �ʿ��մϴ�.</td>
			</tr>
			<tr>
				<td colspan="2"><hr/></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="�����Ϸ�" onClick="check()">&emsp;
					<input type="reset" value="�ٽü���">&emsp;
					<input type="button" value="�ڷ�" onClick="history.go(-1)">
				</td>
			</tr>
		</table>
		<input type="hidden" name="num" value="<%=num %>">
		<input type="hidden" name="nowPage" value="<%=nowPage %>">
	</form>
</body>
</html>