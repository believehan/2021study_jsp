<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	request.setCharacterEncoding("EUC-KR");
	String id = (String)session.getAttribute("idKey");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
	function loginCheck() {
		if(document.loginfrm.id.value==""){
			alert("���̵� �־��ּ���");
			document.loginfrm.id.focus();
			return;
		}
		if(document.loginfrm.pw.value==""){
			alert("��й�ȣ�� �־��ּ���");
			document.loginfrm.pw.focus();
			return;
		}
		document.loginfrm.submit();
	}
</script>
</head>
<body bgcolor="#FFFFB5">
<% 
	if(id != null) {
%>
		<b><%=id %>�� ȯ���մϴ�.</b>
		<p>��ſ� ���εǼ���</p>
		<a href="logout.jsp">�α׾ƿ�</a>
<%
	} else {
%>
<form name="loginfrm" action="loginProc.jsp">
	<table align="center">
		<tr>
			<th><h3>�α���</h3></th>
		</tr>
		<tr>
			<td align="right">
				�� �� �� 
				<input name="id">
			</td>
		</tr>
		<tr>
			<td align="right">
				��й�ȣ 
				<input type="password" name="pw" size="21">
			</td>
		</tr>
		<tr>
			<td align="right">
				<input type="button" value="�α���" onClick="loginCheck()">
				<input type="button" value="ȸ������" onClick="javascript:location.href='member.jsp'">
			</td>
		</tr>
	</table>
</form>
	<% } %>
</body>
</html>