function inputCheck() {
	if(document.regForm.id.value == "") {
		alert("아이디를 넣어 주세요");
		document.regForm.id.focus();
		return false;
	}
	if(document.regForm.pwd.value == "") {
		alert("비밀번호를 넣어 주세요");
		document.regForm.pwd.focus();
		return false;
	}
	if(document.regForm.repwd.value == "") {
		alert("비밀번호를 다시 한번 넣어 주세요");
		document.regForm.repwd.focus();
		return false;
	}
	if(document.regForm.pwd.value !== document.regForm.repwd.value) {
		alert("비밀번호가 일치하지 않습니다");
		document.regForm.repwd.focus();
		return false;
	}
	if(document.regForm.name.value == "") {
		alert("이름을 넣어 주세요");
		document.regForm.name.focus();
		return false;
	}
	if(document.regForm.birthday.value == "") {
		alert("생년월일을 넣어 주세요");
		document.regForm.birthday.focus();
		return false;
	}
	if(document.regForm.email.value == "") {
		alert("이메일을 넣어 주세요");
		document.regForm.email.focus();
		return false;
	}
	document.regForm.submit();
}