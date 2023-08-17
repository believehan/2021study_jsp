<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="board.BoardBean" %>
<jsp:useBean id="bMgr" class="board.BoardMgr"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Board Delete</title>
<%
	request.setCharacterEncoding("EUC-KR");
	String nowPage = request.getParameter("nowPage");
	int num = Integer.parseInt(request.getParameter("num"));
	if(request.getParameter("pass") != null) {
		String inPass = request.getParameter("pass");
		BoardBean bean = (BoardBean)session.getAttribute("bean");
		String dbPass = bean.getPass();
		if(inPass.equals(dbPass)) {
			bMgr.deleteBoard(num);
			String url = "list.jsp?nowPage=" + nowPage;
			response.sendRedirect(url);
		}else {
			%>
				<script type="text/javascript">
					alert("비밀번호가 맞지 않습니다.");
					history.back();
				</script>
	<%
			}
		}else {
	%>
			<script type="text/javascript">
				function check() {
					if(document.delFrm.pass.value == "") {
						alert("비밀번호를 넣으세요");
						document.delFrm.pass.focus();
						return false;
					}
					document.delFrm.submit();
				}
			</script>
	
	<%
	}
%>
</head>
<body>
<form method="post" name="delFrm" artion="delete.jsp">
	<table width="600" align="center">
		<tr>
			<td height="30"></td>
		</tr>
		<tr>
			<td bgcolor="#BDBDBD" align="center">사용자의 비밀번호를 입력해 주세요</td>
		</tr>
		<tr>
			<td align="center" height="50"><input type="password" name="pass">
		</tr>
		<tr>
			<td><hr/></td>
		</tr>
		<tr>
			<td align="center">
				<input type="button" value="삭제완료" onClick="check()">
				<input type="reset" value="다시쓰기">
				<input type="button" value="뒤로" onClick="history.go(-1)">
			</td>
		</tr>
	</table>
	<input type="hidden" name="num" value="<%=num %>">
	<input type="hidden" name="nowPage" value="<%=nowPage %>">
</form>
</body>
</html>