<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<form name="frmName" method="post" enctype="multipart/form-data" action="02.viewPage.jsp">
	user : <input name="user"><p>
	title : <input name="title"><p>
	file : <input type="file" name="uploadFile" ><p>
	<input type="submit" value="UPLOAD"> 
</form>
</body>
</html>