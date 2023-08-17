<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%!
	int one;
	int two = 1;
	public int plusMethod(int one, int tow) {
		return one + tow;
	}
	String msg;
	int three;
%>
one과 two의 합 = <%=plusMethod(3,6) %><br>
String msg의 값 = <%=msg %><br>
int three의 값 = <%=three %>
<%
	int two2 = 1;
	String msg2;
	int three2;
%>
<%-- String msg의 값 = <%=msg2 %><br>
int three의 값 = <%=three2 %> --%>
</body>
</html>