<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="board.BoardBean" %>
<jsp:useBean id="bMgr" class="board.BoardMgr" />
<%
	request.setCharacterEncoding("EUC-KR");
	int num = Integer.parseInt(request.getParameter("num"));
	String nowPage = request.getParameter("nowPage");
	String keyField = request.getParameter("keyField");
	String keyWord = request.getParameter("keyWord");
	bMgr.upCount(num);
	BoardBean bean = bMgr.getBoard(num);
	String name = bean.getName();
	String subject = bean.getSubject();
	String regdate = bean.getRegdate();
	String filename = bean.getFilename();
	String content = bean.getContent();
	int filesize = bean.getFilesize();
	String ip = bean.getIp();
	int count = bean.getCount();
	session.setAttribute("bean", bean);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Board Read</title>
<style>
	a {text-decoration:none}
</style>
<script type="text/javascript">
	function down(filename) {
		document.downFrm.filename.value = filename;
		document.downFrm.submit();
	}
	function list() {
		document.listFrm.submit();
	}
</script>
</head>
<body>
<body bgcolor="#FFD5A2">
	<table align="center" width="600">
		<tr>
			<td colspan="4" align="center" height="25" bgcolor="#8041D9"><font color="white">�� �� ��</font></td>
		</tr>
		<tr>
			<td align="center" bgcolor="#D1B2FF" width="15%" height="25">�̸�</td>
			<td bgcolor="#E8D9FF" width="35%"><%=name %></td>
			<td align="center" bgcolor="#D1B2FF" width="15%">��ϳ�¥</td>
			<td bgcolor="#E8D9FF" width="35%"><%=regdate %></td>
		</tr>
		<tr>
			<td align="center" bgcolor="#D1B2FF" height="25">����</td>
			<td colspan="3" bgcolor="#E8D9FF"><%=subject %></td>
		</tr>
		<tr>
			<td align="center" bgcolor="#D1B2FF" height="25">÷������</td>
			<td colspan="3" bgcolor="#E8D9FF">
				<%
					if(filename != null && !filename.equals("")) {
				%>
						<a href="javascript:down('<%=filename %>')"> <%=filename %></a>&emsp;
						<font color = "blue">(<%=filesize %> KByte)</font>
				<%		
					} else {
						out.print("��ϵ�  ������ �����ϴ�.");
					}
				%>
			</td>
		</tr>
		<tr>
			<td colspan="4"><br/><pre><%=content %></pre></td>
		</tr>
		<tr>
			<td colspan="4" align="right"><%=ip %>�� ���� ���� ����̽��ϴ� / ��ȸ�� <%=count %> </td>
		</tr>
		<tr>
			<td colspan="4" align="center"><hr/>
				[ <a href="javascript:list()">����Ʈ</a> | 
				<a href="update.jsp?num=<%=num %>&nowPage=<%=nowPage %>">�� ��</a> | 
				<a href="reply.jsp?nowPage=<%=nowPage %>">�� ��</a> | 
				<a href="delete.jsp?num=<%=num %>&nowPage=<%=nowPage %>">�� ��</a> ]
			</td>
		</tr>
	</table>
	<form name="downFrm" method="post" action="download.jsp">
		<input type="hidden" name="filename">
	</form>
	<form name="listFrm" method="post" action="list.jsp">
		<input type="hidden" name="nowPage" value="<%=nowPage %>">
		<%
			if(!(keyWord==null || keyWord.equals(""))){
		%>
			<input type="hidden" name="keyField" value="<%=keyField %>">
			<input type="hidden" name="keyWord" value="<%=keyWord %>">
		<%
			}
		%>
	</form>
</body>
</html>