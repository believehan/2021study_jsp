<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>���� ���</h2>
<h3>��ġ�� ������� ���</h3>
���� �̸��� <%=name %>�Դϴ�.<br>
���̴� <%=age %>�Դϴ�.
<%!
	String name = "ȫ�浿";
	int age = 24;
%>
<%
	String userName = "�ƹ���";
	int age2 = 27;
%>
<h2>��ũ��Ʈ��</h2>
<h3>�ݵ�� ������ �� ���</h3>
���� �̸��� <%=userName %>�Դϴ�.<br>
���̴� <%=age2 %>�Դϴ�.
</body>
</html>