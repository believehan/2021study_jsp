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
실수 flo의 반올림값=<%=num %><br>
현재 날짜와 시간은 ? <%=date.toString() %><br>
두 수중 큰 숫자는 ? <%=op(one, two) %><br>
지금은 오전일까요?  오후일까요? <%=(hour< 12) ? "오전" : "오후" %>
</body>
</html>