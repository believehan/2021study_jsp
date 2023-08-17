<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>입사 지원서</h1>
	<table border="1" align="center" bgcolor="#5CD1E5">
		<form method="post" name="regForm" action="interProc.jsp">
		<tr>
			<td>이름</td>
			<td><input name="name" size="24"></td>
		</tr>
		<tr>
			<td>주소</td>
			<td><input name="ad" size="24"></td>
		</tr>
		<tr>
			<td>전화번호</td>
			<td><input name="tel" size="24"></td>
		</tr>
		<tr>
			<td>지원 부서</td>
			<td><input name="dep" size="24"></td>
		</tr>
		<tr>
			<td>지원 동기</td>
			<td><input name="mot" size="24"></td>
		</tr>
		<tr>
			<td colspan="3" ailng="center">
			<input type="submit" value="제출">
			<input type="reset" value="초기화">
			</td>
		</tr>
</body>
</html>