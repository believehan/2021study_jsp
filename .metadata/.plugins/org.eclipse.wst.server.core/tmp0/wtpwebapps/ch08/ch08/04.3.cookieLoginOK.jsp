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
			alert("�α��� ���� �ʾҽ��ϴ�");
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
	<h2 align="center">Cookie �α���</h2>
	<h3 align="center"><%=id %>���� �α��� �Ͽ����ϴ�.</h3>
	<h3 align="center"><a href="04.4.cookieLogout.jsp">�α׾ƿ�</a></h3>
</body>
</html>