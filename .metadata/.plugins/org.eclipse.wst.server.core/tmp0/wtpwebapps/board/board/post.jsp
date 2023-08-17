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
				<td colspan="2" align="center" bgcolor="#476600" height="25"><font color="#ffffff">글 쓰 기</font></td>
			</tr>
			<tr>
				<td width="20%">성명</td>
				<td width="80%"><input name="name"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input name="subject"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="content" rows="10" cols="50"></textarea></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pass"></td>
			</tr>
			<tr>
				<td>파일찾기</td>
				<td><input type="file" name="filename"></td>
			</tr>
			<tr>
				<td>내용타입</td>
				<td>HTML<input type="radio" name="contentType" value="HTTP">&emsp;&emsp;
					TEXT<input type="radio" name="contentType" value="TEXT" checked>
				</td>
			</tr>
			<tr>
				<td colspan="2"><hr/></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="등록">&emsp;
					<input type="reset" value="다시쓰기">&emsp;
					<input type="button" value="리스트" onClick="javascript:location.href='list.jsp'">
				</td>
			</tr>			
		</table>
		<input type="hidden" name="ip" value="<%=request.getRemoteAddr() %>">
	</form> 
</body>
</html>








