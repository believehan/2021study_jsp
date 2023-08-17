<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = "";
	Cookie[] cookies = request.getCookies();
	if(cookies != null) {
		for(int i=0; i<cookies.length; i++) {
			if(cookies[i].getName().equals("idKey")) {
				id = cookies[i].getValue();
			}
		}
		if(id.equals("")) {
%>
		<script type="text/javascript">
			alert("로그인 되지 않았습니다");
			location.href = "04.cookieLogin.jsp";
		</script>
<%
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2 align="center">Cookie 로그인</h2>
	<h3 align="center"><%=id %>님이 로그인 하였습니다.</h3>
	<h3 align="center"><a href="04.4.cookieLogout.jsp">로그아웃</a></h3>
</body>
</html>