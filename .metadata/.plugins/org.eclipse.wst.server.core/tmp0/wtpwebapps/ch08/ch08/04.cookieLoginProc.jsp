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
			alert("�α����� �Ǿ����ϴ�.");
			location.href="04.3.cookieLoginOK.jsp";
		</script>
<%
	} else {
%>
		<script>
			alert("�α����� �����ʾҽ��ϴ�.");
			location.href="04.cookieLogin.jsp";
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