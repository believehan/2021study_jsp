<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<script type="text/javascript">
	var count = 1;
	var addCount;
	
	//행추가
	 function addInputBox() {
		for(var i=1; i<=count; i++) {
			if(!document.getElementsByName("test" + i)[0]) {
				addCount=i;
				break;
			} else {
				addCount = count;
			}
		}
				
		var addStr = "<tr><td width=40><input type=checkbox name=checkList value=" + addCount +
						  "></td><td width=200><input type=file name=test" + addCount + "></td></tr>";
		var table = document.getElementById("dynamic_table");
		var newRow = table.insertRow();
		var newCell = newRow.insertCell();
		newCell.innerHTML = addStr;
		count++;
	} 
	//행 삭제
	function subtractInputBox() {
		var table = document.getElementById("dynamic_table");
		var rows = dynamic_table.rows.length;
		var chk = 0;
		if(rows > 1) {
			for(var i=0; i<document.gForm.checkList.length; i++) {
				if(document.gForm.checkList[i].checked == true) {
					table.deleteRow(i);
					i--;
					count--;
					chk++;
				}
			}
			if(chk <= 0) {
				alert("삭제할 행을 체크해 주세요");
			}
		} else {
			alert("더이상 삭제할 수 없습니다");
		}
	}
</script>
<body>
	<h4>파일을 업로드 하려면 행 추가 버튼을 누르세요</h4>
	<input type="button" value="행 추가" onclick="javascript:addInputBox();">&emsp;
	<input type="button" value="행 삭제" onclick="javascript:subtractInputBox();">
	<form name="gForm" method="post" enctype="multipart/form-data" action="04.multiViewPage.jsp">
		<input type="hidden" name="count">
		<table border="1" id="dynamic_table">
		</table><P/>
		<input type="submit" value="UPLOAD">
	</form>
</body>
</html>