<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="regMgr" class="ch08.RegisterMgr"></jsp:useBean>
<%
	String id = "";
	String pw = "";
	if(request.getParameter("id") != null) {
		id = request.getParameter("id");
	}
	if(request.getParameter("pwd") != null) {
		pw = request.getParameter("pwd");
	}
	if(regMgr.loginRegister(id, pw)){
		Cookie cookie = new Cookie("idKey", id);
		response.addCookie(cookie);
%>
		<script>
			alert("로그인이 되었습니다.");
			location.href="05.3.sessionLoginOK.jsp";
		</script>
<%
	} else {
%>
		<script>
			alert("로그인이 되지않았습니다.");
			location.href="05.sessionLogin.jsp";
		</script>
<%
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>