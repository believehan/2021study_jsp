<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="mgr" class="ch09.MemberMgr"/>
<jsp:useBean id="bean" class="ch09.memberBean"/>
<jsp:setProperty property="*" name="bean" />
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>ȸ�����ԵǾ����ϴ�.</h3>
<input type="button" onClick="javascript:location.href='login.jsp'" value="�α���">
</body>
</html>