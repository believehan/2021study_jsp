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
		if(document.loginfrm.pwd.value==""){
			alert("��й�ȣ�� �־��ּ���");
			document.loginfrm.pwd.focus();
			return;
		}
		document.loginfrm.submit();
	}
</script>
</head>
<body>
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
			<th align="center"><b>�α���</b></th>
		</tr>
		<tr>
			<td>���̵� 
				<input name=id>
			</td>
		</tr>
		<tr>
			<td>��й�ȣ
			<input type="password" name=pwd></td>
		</tr>
		<tr>
			<td align="center">
				<input type="button" value="�α���" onClick="loginCheck()">&emsp;
				<input type="button" value="ȸ������" onClick="javascript:location.href='member.jsp'">
			</td>
		</tr>
	</table>
</form>
<% } %>
</body>
</html>