<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%-- <%! ���� (global variable, method����) %> --%>
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
�� ���� ū���� <jsp:expression>max(a, b)</jsp:expression>�Դϴ�.<br>
�� ���� ū���� <%=max(a, b)%>�Դϴ�.
</body>
</html>