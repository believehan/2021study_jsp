<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="mMgr" class="loginmember.MemberMgr"></jsp:useBean>
<%
	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String url = "login.jsp";
	String msg = "로그인에 실패하였습니다.";
	
	boolean result = mMgr.loginMember(id, pw);
	if(result) {
		session.setAttribute("idKey", id);
		msg = "로그인에 성공 하였습니다.";
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<script>
	alert("<%=msg %>");
	location.href ="<%=url %>";
</script>
</body>
</html>