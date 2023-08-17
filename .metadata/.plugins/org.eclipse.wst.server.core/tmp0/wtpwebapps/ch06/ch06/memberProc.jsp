<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% request.setCharacterEncoding("EUC-KR"); %>
<jsp:useBean id="regBean" class="ch06.MemberBean"></jsp:useBean>
<jsp:setProperty property="*" name="regBean"/>
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
			<jsp:getProperty property="name" name="regBean"/>
			님이 작성한 내용입니다. 확인해주세요
			</th>
		</tr>
		<tr>
			<td>아이디</td>
			<td><jsp:getProperty property="id" name="regBean"/></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><jsp:getProperty property="pwd" name="regBean"/></td>
		</tr>
		<tr>
			<td>이름</td>
			<td><jsp:getProperty property="name" name="regBean"/></td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td><jsp:getProperty property="birthday" name="regBean"/></td>
		</tr>
		<tr>
			<td>email</td>
			<td><jsp:getProperty property="email" name="regBean"/></td>
		</tr>
		<tr>
			<td colspan="2">
			<input type="submit" value="확인완료">
			<input type="button" value="다시쓰기" onClick="history.back()">
			</td>
		</tr>
	</form>
</table>
</body>
</html>