<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr" class="loginmember.MemberMgr"></jsp:useBean>
<jsp:useBean id="bean" class="loginmember.MemberBean"></jsp:useBean>
<jsp:setProperty property="*" name="bean" />
<%
	boolean result = mgr.insertMember(bean);
	String msg = "ȸ�����Կ� ���� �Ͽ����ϴ�.";
	String location = "member.jsp";
	if(result){
		msg = "ȸ�������� �Ͽ����ϴ�.";
		location = "login.jsp";
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
	alert("<%=msg%>");
	location.href = "<%=location %>";
</script>
</body>
</html>