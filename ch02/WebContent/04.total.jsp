<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	float flo = 3.45667f;
	int num = Math.round(flo);
	java.util.Date date = new java.util.Date();
	int hour = date.getHours();
	int one = 73;
	int two = 98;
%>
<%!
	public int op(int i, int j) {
	return i>j ? i : j;
}
%>
�Ǽ� flo�� �ݿø���=<%=num %><br>
���� ��¥�� �ð��� ? <%=date.toString() %><br>
�� ���� ū ���ڴ� ? <%=op(one, two) %><br>
������ �����ϱ��?  �����ϱ��? <%=(hour< 12) ? "����" : "����" %>
</body>
</html>