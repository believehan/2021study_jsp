<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%--
<%
	int sum = 0;
	int i ;
	for(i=1; i<=10; i++) {
		if(i < 10) {
	<%=(i + " + ")%>
<%
		} else {
%>
			<%=(i + " = ") %>
<%
		} sum += i;
	}
%>
<%=sum %> --%>
<%
	int sum = 0;
	int i ;
	for(i=1; i<=10; i++) {
		if(i < 10) 
			out.print(i + " + ");
		else
			out.print(i + " + ");
		
		sum +=i;
	}
%>
<%=sum %>
</body>
</html>