<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="mMgr" class="loginmember.MemberMgr"></jsp:useBean>
<%
   	request.setCharacterEncoding("EUC-KR");
	String id = request.getParameter("id");
	boolean result = mMgr.checkId(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	if(result) {
		out.print(id + "�� �̹� �����ϴ� ID�Դϴ�.<P/>");
	} else {
		out.print(id + "�� ��� ���� �մϴ�.<p/>");
	}
%>
	<a href="#" onClick="self.close()">�ݱ�</a>
</body>
</html>