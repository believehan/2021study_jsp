<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = (String)session.getAttribute("idKey");
	if(id != null) {
%>
		<script>
			alert("로그인 되었습니다.");
			location.herf="05.3.sessionLoginOK.jsp";
		</script>
<%
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2 align="center">session 로그인</h2>
	<form action="05.2.sessionLoginProc.jsp" method="post">
		<table border=1 aling="center" width="300">
			<tr>
				<th colspan="2">Login</th>
			</tr>
			<tr>
				<td width="40%">ID</td>
				<td width="60%"><input name="id"></td>
			</tr>
			<tr>
				<td>pw</td>
				<td><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="login">
					<input type="reset" value="reset">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>