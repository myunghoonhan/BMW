//ID 중복체크 검사 함수
function idCheck(id){
	if(id == ""){
		alert("아이디를 입력하세요");
	}else{
		url="../../IdCheck.do?id="+id;
		window.open(url, "post", "width=300, height=150");
	}
}

//주민번호 체크 함수
function juminCheck(jumin1, jumin2){
	var sum=0;
	var temp=0;
	var result=0;
	var weight= new Array(2,3,4,5,6,7,8,9,2,3,4,5);
	var juminNum= jumin1 + jumin2;
	
	for(i=0; i<12; i++){
		sum += (juminNum.charAt(i))*weight[i];
	}
	
	temp = 11 - (sum%11);
	result = temp % 10;
	
	if(result != juminNum.charAt(12)){
		alert("주민번호가 정확하지 않습니다.");
		document.regForm.mem_num1.focus();
	}else{
		alert("주민번호가 정확합니다.");
		document.regForm.mem_num1.focus();
	}
}

//우편번호 검색 함수
function zipCheck(){
	url = "../controller/ZipCheck.jsp?check=y";
	window.open(url, "post", "width=500, height=500, scrollbars=yes");
}

//폼의 입력 데이터 입력 유무 체크하는 함수
function inputCheck(){
	if(document.regForm.mem_id.value == ""){
		alert("아이디를 입력하세요.");
		document.regForm.mem_id.focus();
		return;
	}
	if(document.regForm.mem_passwd.value == ""){
		alert("비밀번호를 입력하세요.");
		document.regForm.mem_passwd.focus();
		return;
	}
	if(document.regForm.mem_name.value == ""){
		alert("이름을 입력하세요.");
		document.regForm.mem_name.focus();
		return;
	}
	if(document.regForm.mem_num1.value == ""){
		alert("주민등록 앞 번호를 입력하세요.");
		document.regForm.mem_num1.focus();
		return;
	}

	if(document.regForm.mem_num2.value == "0"){
		alert("주민등록 뒷 번호를 입력하세요.");
		document.regForm.mem_num2.focus();
		return;
	}
	//submit()함수의 역할=> Form 객체의 함수로 서버로 데이터를 전송 (submit 객체를 누른 효과)
	document.regForm.submit();
}

