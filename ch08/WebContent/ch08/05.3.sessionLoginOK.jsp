<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String id = (String)session.getAttribute("idKey");
		if(id == null) {
%>
		<script type="text/javascript">
			alert("�α��� ���� �ʾҽ��ϴ�");
			location.href = "05.sessionLogin.jsp";
		</script>
<%	}	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2 align="center">session �α���</h2>
	<h3 align="center"><%=id %>���� �α��� �Ͽ����ϴ�.</h3>
	<h3 align="center"><a href="05.4.sessionLogout.jsp">�α׾ƿ�</a></h3>
</body>
</html>