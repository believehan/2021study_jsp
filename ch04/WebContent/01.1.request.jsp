<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR");
	String name = request.getParameter("name");
	String studentNum = request.getParameter("studentNum");
	String gender = request.getParameter("gender");
	String major = request.getParameter("major");
	
	if(gender.equals("man")) {
		gender = "����";
	} else {
		gender = "����";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
���� : <%=name %><p>
�й� : <%=studentNum %><p>
���� : <%=gender %><p>
�а� : <%=major %>
</body>
</html>