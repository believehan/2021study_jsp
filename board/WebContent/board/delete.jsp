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
					alert("��й�ȣ�� ���� �ʽ��ϴ�.");
					history.back();
				</script>
	<%
			}
		}else {
	%>
			<script type="text/javascript">
				function check() {
					if(document.delFrm.pass.value == "") {
						alert("��й�ȣ�� ��������");
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
			<td bgcolor="#BDBDBD" align="center">������� ��й�ȣ�� �Է��� �ּ���</td>
		</tr>
		<tr>
			<td align="center" height="50"><input type="password" name="pass">
		</tr>
		<tr>
			<td><hr/></td>
		</tr>
		<tr>
			<td align="center">
				<input type="button" value="�����Ϸ�" onClick="check()">
				<input type="reset" value="�ٽþ���">
				<input type="button" value="�ڷ�" onClick="history.go(-1)">
			</td>
		</tr>
	</table>
	<input type="hidden" name="num" value="<%=num %>">
	<input type="hidden" name="nowPage" value="<%=nowPage %>">
</form>
</body>
</html>