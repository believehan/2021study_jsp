<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, ch07.*" %>
<jsp:useBean id="regMgr" class="ch07.beantest01"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<tr>
		<th>USERID</th>
		<th>NAME</th>
		<th>BIRTHYEAR</th>
		<th>ADDR</th>
		<th>MOBILE1</th>
		<th>MOBILE2</th>
		<th>HEIGHT</th>
		<th>MDATE</th>
	</tr>
<%
	Vector<BeanTest5> vlist = regMgr.getBeanList();
	for(int i=0; i<vlist.size(); i++) {
		BeanTest5 regBean = vlist.get(i);
%>
	<tr>
		<td><%=regBean.getUserid() %></td>
		<td><%=regBean.getName() %></td>
		<td><%=regBean.getBirthyear() %></td>
		<td><%=regBean.getAddr() %></td>
		<td><%=regBean.getMobile1() %></td>
		<td><%=regBean.getMobile2() %></td>
		<td><%=regBean.getHeight() %></td>
		<td><%=regBean.getMdate() %></td>
	</tr>
<%
	}
%>
</table>
</body>
</html>