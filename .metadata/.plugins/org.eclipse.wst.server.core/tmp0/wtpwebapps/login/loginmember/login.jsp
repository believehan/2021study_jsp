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
			alert("아이디를 넣어주세요");
			document.loginfrm.id.focus();
			return;
		}
		if(document.loginfrm.pw.value==""){
			alert("비밀번호를 넣어주세요");
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
		<b><%=id %>님 환영합니다.</b>
		<p>즐거운 쇼핑되세요</p>
		<a href="logout.jsp">로그아웃</a>
<%
	} else {
%>
<form name="loginfrm" action="loginProc.jsp">
	<table align="center">
		<tr>
			<th><h3>로그인</h3></th>
		</tr>
		<tr>
			<td align="right">
				아 이 디 
				<input name="id">
			</td>
		</tr>
		<tr>
			<td align="right">
				비밀번호 
				<input type="password" name="pw" size="21">
			</td>
		</tr>
		<tr>
			<td align="right">
				<input type="button" value="로그인" onClick="loginCheck()">
				<input type="button" value="회원가입" onClick="javascript:location.href='member.jsp'">
			</td>
		</tr>
	</table>
</form>
	<% } %>
</body>
</html>