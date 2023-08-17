<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.*, java.io.*" %>
<%
	String saveFolder = "C:/HME/jspWorkspace/ch10/WebContent/filestorage";
	String encType = "EUC-KR";
	int maxSize= 5 * 1024 - 1024;
	try{
		MultipartRequest multi = new MultipartRequest(request, saveFolder, maxSize, encType, new DefaultFileRenamePolicy());
		// ������� <input type="file">�� ������ �Ķ���͵��� �̸��� ������
		Enumeration params = multi.getParameterNames();
		while(params.hasMoreElements()) {
			String name =(String)params.nextElement();
			String value = multi.getParameter(name);
			out.print(name + " : " + value + "<p>");
		}
		
		// ������� <input type="file">�� �Ķ���͵��� �̸�
		Enumeration files = multi.getFileNames();
		while(files.hasMoreElements()) {
			String name = (String)files.nextElement();
			String filename =multi.getFilesystemName(name);
			String original = multi.getOriginalFileName(name);
			String type = multi.getContentType(name);
			File f = multi.getFile(name);
			out.print("�Ķ���� �̸� : " + name + "<p>");
			out.print("����� ���� �̸� : " + filename + "<p>");
			out.print("����ڰ� �ø� ���� ���� �̸� : " + original + "<p>");
			out.print("������ type : " + type + "<p>");
			if(f != null)
				out.print("����ũ�� : " + f.length() + "Byte");
			
		}
	}catch(Exception e){
		System.out.println(e);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>