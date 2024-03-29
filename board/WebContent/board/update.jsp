<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="board.BoardBean" %>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	String nowPage = request.getParameter("nowPage");
	BoardBean bean = (BoardBean)session.getAttribute("bean");
	String subject = bean.getSubject();
	String name = bean.getName();
	String content = bean.getContent();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Board Update</title>
<script>
	function check() {
		if(document.updateFrm.pass.value=="") {
			alert("수정을 위해 비밀번호를 입력하세요.");
			document.updateFrm.pass.focus();
			return false;
		}
		document.updateFrm.submit();
	}
</script>
</head>
<body bgcolor="#C4FFE5">
	<form name="updateFrm" method="post" action="boardUpdate">
		<table align="center">
			<tr>
				<td colspan="2" align="center" bgcolor="#A57F92" height="25"><font color="#ffffff">수정하기</font></td>
			</tr>
			<tr>
				<td width="15%">성명</td>
				<td width="85%"><input name="name" value="<%=name %>"></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input name="subject" value="<%=subject %>"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea name="content" rows="10" cols="50"><%=content %></textarea></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="pass">수정시에는 비밀번호가 필요합니다.</td>
			</tr>
			<tr>
				<td colspan="2"><hr/></td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<input type="button" value="수정완료" onClick="check()">&emsp;
					<input type="reset" value="다시수정">&emsp;
					<input type="button" value="뒤로" onClick="history.go(-1)">
				</td>
			</tr>
		</table>
		<input type="hidden" name="num" value="<%=num %>">
		<input type="hidden" name="nowPage" value="<%=nowPage %>">
	</form>
</body>
</html>