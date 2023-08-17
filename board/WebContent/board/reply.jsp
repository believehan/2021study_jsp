<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="bean" class="board.BoardBean" scope="session"/>
<%
	String nowPage = request.getParameter("nowPage");
	String subject = bean.getSubject();
	String content = bean.getContent();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Board Update</title>

</head>
<body bgcolor="#C4FFE5">
	<form name="boardReply" method="post" action="BoardReply">
		<table align="center">
			<tr>
				<td colspan="2" align="center" bgcolor="#A57F92" height="25"><font color="#ffffff">답변하기</font></td>
			</tr>
			<tr>
				<td width="15%">성명</td>
				<td width="85%"><input name="name"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input name="subject" value="<%=subject %>"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="content" rows="10" cols="50"><%=content %>
============답글을 쓰세요===========
				</textarea></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pass" placeholder="비밀번호 입력"></td>
			</tr>
			<tr>
				<td colspan="2"><hr/></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="submit" value="답변등록" >&emsp;
					<input type="reset" value="다시쓰기">&emsp;
					<input type="button" value="뒤로" onClick="history.go(-1)">
				</td>
			</tr>
		</table>
		<input type="hidden" name="ip" value="<%=request.getRemoteAddr() %>">
		<input type="hidden" name="nowPage" value="<%=nowPage %>">
		<input type="hidden" name="ref" value="<%=bean.getRef() %>">
		<input type="hidden" name="pos" value="<%=bean.getPos() %>">
		<input type="hidden" name="depth" value="<%=bean.getDepth() %>">
	</form>
</body>
</html>