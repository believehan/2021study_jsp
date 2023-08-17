<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="script.js" type="text/javascript" charset="utf-8"></script>
<script type="text/javascript">
	function idCheck(id) {
		frm = document.regFrm;
		if(id == "") {
			alert("���̵� �Է��ϼ���");
			frm.id.focus();
			return;
		}
		url = "idCheck.jsp?id=" + id;
		window.open(url, "IDCheck", "width=300, height=150");
	}
	
	function findAddr() {
		new daum.Postcode({
	        oncomplete: function(data) {
	            var roadAddr = data.roadAddress;  // ���θ� �ּ�
	            var jibunAddr = data.jibunAddress;   // ���� �ּ�
	            var extraAddr = '';
	            
	            document.getElementById('postcode').value = data.zonecode;
	            if(roadAddr != '') {
	            	if(data.bname != '') {
	            		extraAddr += data.bname;
	           		}
	            	if(data.buildingName != '') {
	            		extraAddr += (extraAddr != '' ? ', ' + data.buildingName : data.buildingName);
	            	}
	            	roadAddr += (extraAddr != '' ? ' (' + extraAddr + ')' : '');
	            	document.getElementById('addr').value = roadAddr;
	            } else if(jibunAddr != '') {
	            	document.getElementById('addr').value = jibunAddr;
	            }
	            document.getElementById('detailAddr').focus();
	        }
	    }).open();
	}
</script>
</head>
<body bgcolor="#FFFFD2">
	<form name="regFrm" method ="post" action="memberProc.jsp">
		<table border="1" align="center" width="800">
			<tr bgcolor="#356300" height="40">
				<td colspan="3" align="center"><font color="white" size="5"><b>ȸ������</b></font></td>
			</tr>
			<tr>
				<td>���̵�</td>
				<td>
					<input name="id">
					<input type="button" value="ID�ߺ�Ȯ��" onClick="idCheck(this.form.id.value)">
				</td>
				<td>���̵� �Է��� �ּ���</td>
			</tr>
			<tr>
				<td>�н�����</td>
				<td>
					<input type="password" name="pwd">
				</td>
				<td>�н����带 �Է��� �ּ���</td>
			</tr>
			<tr>
				<td>�н����� Ȯ��</td>
				<td>
					<input type="password" name="repwd">
				</td>
				<td>�н����带 �ѹ� �� �Է��� �ּ���</td>
			</tr>
			<tr>
				<td>�̸�</td>
				<td>
					<input name="name">
				</td>
				<td>�̸��� �Է��� �ּ���</td>
			</tr>
			<tr>
				<td>����</td>
				<td>
					<input type="radio" name="gender" value="1" checked>��&emsp;&emsp;
					<input type="radio" name="gender" value="2" >��
				</td>
				<td>������ ������ �ּ���</td>
			</tr>
			<tr>
				<td>�������</td>
				<td>
					<input name="birthday" placeholder="ex) 190315">
				</td>
				<td>��������� �Է��� �ּ���</td>
			</tr>
			<tr>
				<td>E-mail</td>
				<td>
					<input name="email" size="40" placeholder="ex) email@naver.com">
				</td>
				<td>�̸����� �Է��� �ּ���</td>
			</tr>
			<tr>
				<td>�����ȣ</td>
				<td>
					<input name="zipcode" id="postcode" readonly>
					<input type="button" value="�����ȣ ã��" onClick="findAddr()">
				</td>
				<td>�����ȣ�� �˻��ϼ���</td>
			</tr>
			<tr>
				<td>�ּ�</td>
				<td>
					<input name="address" id="addr" size="60" readonly><br/>
					<input name="detailAddress" id="detailAddr" placeholder="���ּ� �ֱ�">
				</td>
				<td>���ּҰ� ������ �Է����ּ���</td>
			</tr>
			<tr>
				<td>���</td>
				<td>
					<input type="checkbox" name="hobby" value="���ͳ�">���ͳ�&nbsp;
					<input type="checkbox" name="hobby" value="����">����&nbsp;
					<input type="checkbox" name="hobby" value="����">����&nbsp;
					<input type="checkbox" name="hobby" value="��ȭ">��ȭ&nbsp;
					<input type="checkbox" name="hobby" value="�">�
				</td>
				<td>��̸� �����ϼ���</td>
			</tr>
			<tr>
				<td>����</td>
				<td>
					<select name="job">
						<option value="0" selected>�����ϼ���.
						<option value="ȸ���">ȸ���
						<option value="������">������
						<option value="�ǻ�">�ǻ�
						<option value="������">������
						<option value="�л�">�л�
						<option value="����">����
						<option value="��Ÿ">��Ÿ
					</select>
				</td>
				<td>������ �����ϼ���</td>
			</tr>
			<tr>
				<td colspan="3" align="center">
					<input type="button" value="ȸ������" onClick="inputCheck()">&emsp;
					<input type="reset" value="�ٽþ���">&emsp;
					<input type="button" value="�α���" onClick="javascript:location.href='login.jsp'">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>