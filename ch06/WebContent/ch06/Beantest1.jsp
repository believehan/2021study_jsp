<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="bean1" class="ch06.BeanTest1"></jsp:useBean>
<jsp:setProperty property="name" name="bean1" value="�ڹٺ� ��� : ȫ�浿"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	����� �̸��� : <jsp:getProperty property="name" name="bean1"/>
</body>
</html>