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
			<td colspan="4" align="center" height="25" bgcolor="#8041D9"><font color="white">글 읽 기</font></td>
		</tr>
		<tr>
			<td align="center" bgcolor="#D1B2FF" width="15%" height="25">이름</td>
			<td bgcolor="#E8D9FF" width="35%"><%=name %></td>
			<td align="center" bgcolor="#D1B2FF" width="15%">등록날짜</td>
			<td bgcolor="#E8D9FF" width="35%"><%=regdate %></td>
		</tr>
		<tr>
			<td align="center" bgcolor="#D1B2FF" height="25">제목</td>
			<td colspan="3" bgcolor="#E8D9FF"><%=subject %></td>
		</tr>
		<tr>
			<td align="center" bgcolor="#D1B2FF" height="25">첨부파일</td>
			<td colspan="3" bgcolor="#E8D9FF">
				<%
					if(filename != null && !filename.equals("")) {
				%>
						<a href="javascript:down('<%=filename %>')"> <%=filename %></a>&emsp;
						<font color = "blue">(<%=filesize %> KByte)</font>
				<%		
					} else {
						out.print("등록된  파일이 없습니다.");
					}
				%>
			</td>
		</tr>
		<tr>
			<td colspan="4"><br/><pre><%=content %></pre></td>
		</tr>
		<tr>
			<td colspan="4" align="right"><%=ip %>로 부터 글을 남기셨습니다 / 조회수 <%=count %> </td>
		</tr>
		<tr>
			<td colspan="4" align="center"><hr/>
				[ <a href="javascript:list()">리스트</a> | 
				<a href="update.jsp?num=<%=num %>&nowPage=<%=nowPage %>">수 정</a> | 
				<a href="reply.jsp?nowPage=<%=nowPage %>">답 변</a> | 
				<a href="delete.jsp?num=<%=num %>&nowPage=<%=nowPage %>">삭 제</a> ]
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