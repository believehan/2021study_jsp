<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	Cookie[] cookies = request.getCookies();
%>    
<%!
	private String getCookieValue(Cookie[] cookies, String name) {
		if(cookies != null) {
			for(int i=0; i<cookies.length; i++) {
				if(cookies[i].getName().equals(name))
					return cookies[i].getValue();
			}
		}
		return null;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
�̸� : <%=getCookieValue(cookies, "NAME") %><p>
���� : <%=getCookieValue(cookies, "GENDER") %><p>
���� : <%=getCookieValue(cookies, "AGE") %>
</body>
</html>