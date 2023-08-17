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
	//url경로
	String appPath = application.getContextPath();
	// 웹 어플리케이션 루트에 대한 로컬상의
	String realPath = application.getRealPath("/");
	application.log("application 내부 객체 로그 테스트 중");
%>
<h1>Application Ex</h1>
서블릿 컨테이너의 이름버전 : <%=serverInfo %><p>
02.request2.html 파일의 MIME Type : <%=mimeType %><p> 
웹 어플리케이션의 USL 경로명 : <%=appPath %><p> 
로컬 파일 시스템의 경로명 : <%=realPath %>
</body>
</html>