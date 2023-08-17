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
이름 : <%=getCookieValue(cookies, "NAME") %><p>
성별 : <%=getCookieValue(cookies, "GENDER") %><p>
나이 : <%=getCookieValue(cookies, "AGE") %>
</body>
</html>