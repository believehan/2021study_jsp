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
	<h1>회원가입</h1>
	<table border="1" align="center" bgcolor="#5CD1E5">
		<form method="post" name="regForm" action="memberProc.jsp">
		<tr>
			<th colspan="3" bgcolor="#6B9900" color="white">회원가입</th>
		</tr>
		<tr>
			<td>아이디</td>
			<td><input name="id" size="24"></td>
			<td>아이디를 적어주세요</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pwd" size="25"></td>
			<td>비밀번호를 적어주세요</td>
		</tr>
		<tr>
			<td>비밀번호 확인</td>
			<td><input type="password" name="repwd" size="25"></td>
			<td>비밀번호를 다시 적어주세요</td>
		</tr>
		<tr>
			<td>이름</td>
			<td><input name="name" size="24"></td>
			<td>이름을 적어주세요</td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td><input name="birthday" size="24"></td>
			<td>생년월일을 적어주세요</td>
		</tr>
		<tr>
			<td>email</td>
			<td><input name="email" size="24"></td>
			<td>이메일을 적어주세요</td>
		</tr>
		<tr>
			<td colspan="3" ailng="center">
			<input type="button" value="회원가입" onClick="inputCheck()">
			<input type="reset" value="다시쓰기">
			</td>
		</tr>
		</form>
	</table>
</body>
</html>