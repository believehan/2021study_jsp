<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	request.setCharacterEncoding("EUC-KR");
	String siteName=request.getParameter("siteName");
	String siteTel=request.getParameter("siteTel");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>include Tag2</h1>
<jsp:include page="07.includeTag13.jsp">
<jsp:param value="JSP������" name="siteName"/>
<jsp:param value="032-222-3333" name="siteTel"/>
</jsp:include>
include Tag�� Body�Դϴ�.<p/>
����Ʈ �̸� : <%=siteName %><p/>
����Ʈ ��ȭ��ȣ : <%=siteTel %><p/>
</body>
</html>