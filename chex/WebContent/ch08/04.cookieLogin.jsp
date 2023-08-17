<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String cookieName = "";
	String id = "";
	Cookie[] cookies = request.getCookies();
	if(cookies != null) {
		for(int i=0; i<cookies.length; i++) {
			if(cookies[i].getName().equals("idKey")) {
				id = cookies[i].getValue();
			}
		}
		if(!id.equals("")) {
%>
		<script type="text/javascript">
			alert("로그인 되었습니다");
			location.href = "04.3.cookieLoginOK.jsp";
		</script>
<%
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2 align="center">Cookie 로그인</h2>
	<form action="04.cookieLoginProc.jsp" method="post">
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
				<td><input type="password"></td>
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