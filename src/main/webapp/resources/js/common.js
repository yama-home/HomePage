// 공백(Blank) 체크
function isBlank(blankvalue) {
	var f = blankvalue.replace(/(^\s*)|(\s*$)/g, "");

	if (f != "")
		return false;
	else
		return true;
}

//폼 입력유형체크
function chkType(input, type) {
	switch (type) {
		case 0 : var filter = /^[1-9][0-9]+$/; break; // 숫자만
		case 1 : var filter = /^[0-9a-zA-Z]+$/; break; // 영문, 숫자만
		case 2 : var filter = /^[a-zA-Z][0-9a-zA-Z]+$/; break; // 영문, 숫자만(첫자는 영문)
		case 3 : var filter = /^\w+$/; break; // 영문, 숫자, _
		case 4 : var filter = /^[a-zA-Z]+$/; break; // 영문만
		case 5 : var filter = /^[1-9][0-9]+$/; break; // 숫자만 + -
		case 6 : var filter = /^[a-z]+$/; break; // 소-영문만
		case 7 : var filter = /^[0-9a-z]+$/; break; // 소-영문, 숫자만
		case 8 : var filter =/^[a-zA-Z0-9\-\.\_]+\@[a-zA-Z0-9\-\.]+\.([a-zA-Z]{2,4})$/; break; // 메일
		case 9 : var filter = /^[0-9|a-z|ㄱ-ㅎ|ㅏ-ㅣ|가-힝]+$/; break; //한글, 숫자, 영문
		case 10 : var filter =/^[a-zA-Z0-9\-\.\_]+\@[a-zA-Z0-9\-\.]+\.([a-zA-Z]{2,4})$/; break; // Null(사용금지)
		case 11 : var filter = /^[0-9a-zA-Z_]+$/; break; // 영문, 숫자, _
		case 12 : var filter = /^[0-9a-zA-Z~,!,@,#,$,*,(,),=,+,_,.,|]+$/; break; // 영문, 숫자, 특수문자(개행문자 제외)
	}

	if (!filter.test(input)) {
		var result = 'resultFalse';
		input = '';
		return result;
	}
}

//문자열 길이체크
function inputLength(field, max_length, min_length) {
	var str; 
	var str_count = 0; 
	var cut_count = 0; 
	var str_length = field.length;

	for (k=0; k < str_length; k++) {
		str = field.charAt(k);
		if (escape(str).length > 4)
			str_count += 2; 
		else {
			if (escape(str) != '%0A')
				str_count++; 
		}
	}

	if (max_length < str_count)
		return 0;
	else if (min_length > str_count)
		return 1;
	else
		return 2;
}

//아이디 체크
function checkUserid(userid) {
	if (!isBlank(userid)) {
		if (chkType(userid, 3) == "resultFalse")
			return false;
		else {
			if (inputLength(userid, 12, 4) != "2")
				return false;
			else
				return true;
		}
	} else
		return false;
}