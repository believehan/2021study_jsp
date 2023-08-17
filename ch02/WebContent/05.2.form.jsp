<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<%
	request.setCharacterEncoding("EUC-KR");
	String name = request.getParameter("name1");
	String color = request.getParameter("color");
	String msg;
	
	/* switch(color) {
	case "blue" :
		msg = "파란색";
		break;
	case "red" :
		msg = "빨간색";
		break;
	case "orange" :
		msg = "오랜지색";
		break;
	default :
		msg = "기타"; 
	}*/
		
	if(color.equals("blue")){
		msg = "파란색";
	}
	else if(color.equals("red")){
			msg = "빨간색";
	}
	else if(color.equals("orange")){
		msg = "오렌지";
	}
	else
		msg = "기타";
%>
</head>
<body bgcolor="<%=color %>">

<b><%=name %></b>님이 좋아하는 색상은 <b><%=msg %></b>입니다.
</body>
</html>