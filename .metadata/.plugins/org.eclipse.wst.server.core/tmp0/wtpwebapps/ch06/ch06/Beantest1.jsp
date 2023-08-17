<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="bean1" class="ch06.BeanTest1"></jsp:useBean>
<jsp:setProperty property="name" name="bean1" value="자바빈 사용 : 홍길동"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	당신의 이름은 : <jsp:getProperty property="name" name="bean1"/>
</body>
</html>