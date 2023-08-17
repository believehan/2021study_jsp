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
		// 폼요소중 <input type="file">을 제외한 파라미터들의 이름을 얻어오기
		Enumeration params = multi.getParameterNames();
		while(params.hasMoreElements()) {
			String name =(String)params.nextElement();
			String value = multi.getParameter(name);
			out.print(name + " : " + value + "<p>");
		}
		
		// 폼요소중 <input type="file">인 파라미터들의 이름
		Enumeration files = multi.getFileNames();
		while(files.hasMoreElements()) {
			String name = (String)files.nextElement();
			String filename =multi.getFilesystemName(name);
			String original = multi.getOriginalFileName(name);
			String type = multi.getContentType(name);
			File f = multi.getFile(name);
			out.print("파라미터 이름 : " + name + "<p>");
			out.print("저장된 파일 이름 : " + filename + "<p>");
			out.print("사용자가 올린 실제 파일 이름 : " + original + "<p>");
			out.print("파일의 type : " + type + "<p>");
			if(f != null)
				out.print("파일크기 : " + f.length() + "Byte");
			
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