<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*, ch07.*" %>
<jsp:useBean id="regMgr" class="ch07.RegisterMgrPool"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>Bean을 이용한 Mysql</h1>
<table border="1">
	<tr>
		<th>NUM</th>
		<th>USERID</th>
		<th>PRODNAME</th>
		<th>GROUPNAME</th>
		<th>PRICE</th>
		<th>AMOUNT</th>
	</tr>
<%
	Vector<BeanTest4> vlist = regMgr.getRegisterList();
	for(int i=0; i<vlist.size(); i++) {
		BeanTest4 regBean = vlist.get(i);
%>
	<tr>
		<td><%=regBean.getNum() %></td>
		<td><%=regBean.getUserid() %></td>
		<td><%=regBean.getProdname() %></td>
		<td><%=regBean.getGroupname() %></td>
		<td><%=regBean.getPrice() %></td>
		<td><%=regBean.getAmount() %></td>
	</tr>
<%
	}
%>
</table>
</body>
</html>