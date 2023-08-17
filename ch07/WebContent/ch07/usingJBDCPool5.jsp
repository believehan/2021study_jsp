<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*, ch07.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	DBConnectionMgr pool = DBConnectionMgr.getInstance();
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	
	String num="", userid="", prodname="", groupname="", price="", amount="";
	int count = 0;
	
	try {
		conn = pool.getConnection();
		stmt = conn.createStatement();
		rs = stmt.executeQuery("select * from buytbl");
%>
<h1>JSP를 이용한 Mysql연동</h1>
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
	if(rs != null) {
		while(rs.next()) {
			num = rs.getString("num");
			userid = rs.getString("userid");
			prodname = rs.getString("prodname");
			groupname = rs.getString("groupname");
			price = rs.getString("price");
			amount = rs.getString("amount");
%>
	<tr>
		<td><%=num %></td>
		<td><%=userid %></td>
		<td><%=prodname %></td>
		<td><%=groupname %></td>
		<td><%=price %></td>
		<td><%=amount %></td>
	</tr>
<%
		count++;
		}
	}
%>
</table><p>
total records : <%=count %>
<%
	} catch(SQLException e) {
		System.out.println("SQLException : " + e);
	} catch(Exception e) {
		System.out.println("SQLException : " + e);
	} finally {
		if(conn != null)
			try { pool.freeConnection(conn); } catch(Exception e) { }
	}
%>
</body>
</html>