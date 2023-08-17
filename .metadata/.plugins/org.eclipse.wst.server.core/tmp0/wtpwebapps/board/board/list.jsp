<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "board.BoardBean" %>
<%@ page import = "java.util.*" %>
<jsp:useBean id="bMgr" class = "board.BoardMgr" />
<%
	request.setCharacterEncoding("EUC-KR");
	int totalRecord = 0;    // 전체 레코드수
	int numPerPage = 5;    // 1페이지당 보여주는 레코드 수
	int pagePerBlock = 5;   // 1블럭당 보여주는 페이지 수
	
	int totalPage = 0;      // 전체 페이지 수 prve...[1][2][3].....
	int totalBlock = 0;     // 전체 블록수
	
	int nowPage = 1;       	// 현재 해당되는 페이지
	int nowBlock =1;		// 현재 해당되는 블록
	
	int start = 0;			// DB에서 select의 시작번호(한페이지에 필요한 만큼 게시물을 가져오려고)
	int listSize = 0;		// 현재 읽어온 게시물의 수
	
	Vector<BoardBean> vlist = null;
	String keyWord = "", keyField = "";
	if(request.getParameter("keyWord") != null) {
		keyWord = request.getParameter("keyWord");
		keyField = request.getParameter("keyField");
	}
	if(request.getParameter("reload") != null) {
		if(request.getParameter("reload").equals("true")){
			keyWord = "";
			keyField = "";
		}
	}
	if(request.getParameter("nowPage") != null){
		nowPage = Integer.parseInt(request.getParameter("nowPage"));
	}
	start = (nowPage * numPerPage)-numPerPage;
	totalRecord = bMgr.getTotalCount(keyField, keyWord);  //전체 레코드 수
	totalPage = (int)Math.ceil((double)totalRecord / numPerPage); // 전체 페이지수
	nowBlock = (int)Math.ceil((double)nowPage / pagePerBlock);  // 현재 속해있는 블록
	totalBlock = (int)Math.ceil((double)totalPage / pagePerBlock); // 전체블록수
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSP Board</title>
<style>
	a:link {text-decoration:none; color:#696969}
	a:hover {text-decoration:yes; color:#66ccff}
	a:visited {text-decoration:none; color:#330066}
</style>
<script type="text/javascript">
	function list() {
		document.listFrm.action = "list.jsp";
		document.listFrm.submit();
	}
	function check() {
		if(document.searchFrm.keyWord.value == "") {
			alert("검색어를 입력하세요");
			document.searchFrm.keyWord.focus();
			return;
		}
		document.searchFrm.submit();
	}
	function read(num) {
		document.readFrm.num.value = num;
		document.readFrm.action = "read.jsp";
		document.readFrm.submit();
	}
	function block(value) {
		document.readFrm.nowPage.value = <%=pagePerBlock%>*(value-1) + 1;
		document.readFrm.submit();
	}
	function pageing(page) {
		document.readFrm.nowPage.value = page;
		document.readFrm.submit();
	}
</script>
</head>
<body>
<h2 align="center">JSPBoard</h2><p/>
	<table align ="center" width="600">
		<tr>
			<td colspan="5">Total : <%=totalRecord %>Articles(<font color="red"><%=nowPage %>/<%=totalPage %></font>Page)</td>
		</tr>		
		<tr bgcolor="#d0d0d0" align="center">
			<th width="10%">번호</th>
			<th width="45%">제목</th>
			<th width="15%">이름</th>
			<th width="18%">날짜</th>
			<th width="12%">조회수</th>
		</tr>
		<%
			vlist =bMgr.getBoardList(keyField, keyWord, start, numPerPage);
			listSize = vlist.size();
			if(vlist.isEmpty()) {
				out.print("<tr><td colspan='5'>등록된 게시물이 없습니다</td></tr>");
			} else {
				for(int i=0; i<numPerPage; i++) {
					if(i==listSize)
						break;
					BoardBean bean = vlist.get(i);
					int num = bean.getNum();
					String name = bean.getName();
					String subject = bean.getSubject();
					String regdate = bean.getRegdate();
					int count = bean.getCount();
					int depth = bean.getDepth();
		%>
		<tr>
			<td align="center"><%=totalRecord-((nowPage-1)*numPerPage)-i %></td>
			<td>
			<%
				if(depth > 0) {
					for(int j=0; j<depth; j++) {
						out.print("&emsp;");
					}
				}
			%>
			<a href="javascript:read('<%=num %>')"><%=subject %></a>
			</td>
			<td align="center"><%=name %></td>
			<td align="center"><%=regdate %></td>
			<td align="center"><%=count %></td>
		</tr>			
		<%
				} // for end
			}		//if else end
		%>
		</tr>
		<tr>
			<td colspan="5"><br/><br/></td>
		</tr>
		<tr>
			<!-- 페이징 처리 시작 --> 
			<td colspan="3">
				<%
					int pageStart = (nowBlock-1) * pagePerBlock + 1;  // 블럭의 시작 페이지 번호 계산
					int pageEnd = (pageStart + pagePerBlock <= totalPage) ? (pageStart + pagePerBlock) : totalPage +1;
					if(totalPage != 0){
						if(nowBlock > 1) {
				%>
							<a href="javascript:block('<%=nowBlock-1 %>')">prev...</a>
				<%
						}
						out.print("&nbsp;");
						for(; pageStart<pageEnd; pageStart++) {
				%>
							<a href="javascript:pageing('<%=pageStart %>')">
							<%
								if(pageStart==nowPage) {%>
									<font color = "blue">
							<% } %>				
								[<%=pageStart %>]
							<%
								if(pageStart==nowPage) {%>
									</font>
							<% } %>			
							</a>
				<%
						} // for end
						out.print("&nbsp;");
						if(totalBlock > nowBlock) { %>
							<a herf="javascript:block('<%=nowBlock+1 %>')">...next</a>
						<%}
					}
				%>
			</td>
			<!-- 페이징 처리 끝 -->
			<td colspan="2" align="right">
				<a href = "post.jsp">[글쓰기]</a>&nbsp;
				<a href = "javascript:list()">[처음으로]</a> 
			</td>
		</tr>
	</table>
	<hr width="600"/>
	<form name="searchFrm" method="get" action="list.jsp">
		<table align="center" width="600">
			<tr>
				<td align="center">
					<select name="keyField">
						<option value="name">이름</option>
						<option value="subject">제목</option>
						<option value="content">내용</option>
					</select>
					<input name="keyWord">
					<input type="button" value="찾기" onClick="javascript:check()">
					<input type="hidden" name="nowPage" value="1">
				</td>
			</tr>
		</table>
	</form>
	<form name="listFrm" method="post">
		<input type="hidden" name="reload" vaule="true">
		<input type="hidden" name = "nowPage" value="1">
	</form>
	<form name="readFrm" method="get">
		<input type="hidden" name="num">
		<input type="hidden" name="nowPage" value="<%=nowPage %>">
		<input type="hidden" name="keyField" value="<%=keyField %>">
		<input type="hidden" name="keyWord" value="<%=keyWord %>">
	</form>
</body>
</html>