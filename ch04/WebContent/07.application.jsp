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
	String serverInfo = application.getServerInfo();
	String mimeType = application.getMimeType("02.request2.html");
	//url���
	String appPath = application.getContextPath();
	// �� ���ø����̼� ��Ʈ�� ���� ���û���
	String realPath = application.getRealPath("/");
	application.log("application ���� ��ü �α� �׽�Ʈ ��");
%>
<h1>Application Ex</h1>
���� �����̳��� �̸����� : <%=serverInfo %><p>
02.request2.html ������ MIME Type : <%=mimeType %><p> 
�� ���ø����̼��� USL ��θ� : <%=appPath %><p> 
���� ���� �ý����� ��θ� : <%=realPath %>
</body>
</html>