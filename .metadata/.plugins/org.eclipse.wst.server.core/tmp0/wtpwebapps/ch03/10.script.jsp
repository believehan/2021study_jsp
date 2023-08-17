<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%-- <%! 선언문 (global variable, method정의) %> --%>
<jsp:declaration>
	public int max(int num1, int num2) {
		return num1 > num2 ? num1 : num2;
	}
</jsp:declaration>
<%-- <%scriptlet %> --%>
<jsp:scriptlet>
	int a = 8;
	int b = 28;
</jsp:scriptlet>
<%-- <%=a %> --%>
두 수중 큰수는 <jsp:expression>max(a, b)</jsp:expression>입니다.<br>
두 수중 큰수는 <%=max(a, b)%>입니다.
</body>
</html>