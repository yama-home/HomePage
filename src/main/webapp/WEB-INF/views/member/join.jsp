<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<title>HomePage</title>
<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Font Awesome Icons -->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- Ionicons -->
<link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="/resources/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
<!-- AdminLTE Skins. Choose a skin from the css/skins 
     folder instead of downloading all of them to reduce the load. -->
<link href="/resources/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
<style type="text/css">
/* 전체 */
* {
	margin: auto;
}

.content {
	margin-top: 40px;
	margin-bottom: 40px;
}

body {
	background: #eee !important;
}

.form-join {
	max-width: 800px;
	padding: 15px 35px 45px;
	margin: 0 auto;
	background-color: #fff;
	border: 1px solid rgba(0, 0, 0, 0.1);
	.
	form-join-heading {
		margin-bottom: 30px;
	}
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript" src="/resources/js/common.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$(".btn-warning").on("click", function() {
		event.preventDefault();

		history.back();
	});

	$(".btn-primary").on("click", function() {
		event.preventDefault();

		if(!checkUserid($("input[name='userid']").val())) {
			alert("아이디를 4~12자리 영문, 숫자로 입력해주세요.");
			$("input[name='userid']").focus();
			return;
		}

		if($("input[name='checkID']").val() != "ok") {
			alert("아이디 중복체크가 되지 않았습니다.");
			$("#checkID_result").html("<font color='RED'>4~12자리 영문, 숫자(<b>첫자는 영문</b>)</font>로 입력");
			$("input[name='checkID']").val("no");
			$("input[name='userid']").val("").focus();
			return;
		}

		if($("input[name='userpw']").val() != $("input[name='userpw_re']").val()) {
			alert("비밀번호가 일치하지 않습니다.");
			$("input[name='userpw_re']").val("");
			$("input[name='userpw_re']").focus();
			return;
		}

		$("form[role='form']").submit();
	});

	$("input[name='userid']").on("keyup", function() {
		if(checkUserid($(this).val())) {
			$.post("/member/checkID", {
				userid: $(this).val()
			},
			function(data) {
				if(data == "success") {
					$("#checkID_result").html("<font color='BLUE'>사용 가능한 아이디입니다.</font>");
					$("input[name='checkID']").val("ok");
				} else {
					$("#checkID_result").html("<font color='RED'>이미 사용중인 아이디입니다.</font>");
					$("input[name='checkID']").val("no");
				}
			});
		} else {
			$("#checkID_result").html("<font color='RED'>4~12자리 영문, 숫자(<b>첫자는 영문</b>)</font>로 입력");
			$("input[name='checkID']").val("no");
		}
	});
});
</script>
</head>
<body class="register-page">
<!-- Main content -->
<div class="register-box" style="width:100%; max-width:800px;">
	<div class="register-logo">
		<a href="/"><b>홈페이지</b> 회원가입</a>
	</div>

	<form role="form" action="/member/joinPost" method="post" autocomplete="off">
	<input type="hidden" name="checkID" value="no"/>
	<div class="register-box-body">
		<p class="register-box-msg">회원정보를 입력해주세요.</p>

		<div class="form-group has-feedback">
			<input type="text" name="userid" maxlength="12" placeholder="아이디" class="form-control" required/>
			<span id="checkID_result"><font color="RED">4~12자리 영문, 숫자(<b>첫자는 영문</b>)</font>로 입력</span>
		</div>
		<div class="form-group has-feedback">
			<input type="password" name="userpw" placeholder="비밀번호" class="form-control" required/>
		</div>
		<div class="form-group has-feedback">
			<input type="password" name="userpw_re" placeholder="비밀번호 확인" class="form-control" required/>
		</div>
		<div class="form-group has-feedback">
			<input type="text" name="username" placeholder="이름" class="form-control" required/>
		</div>
		<div class="form-group has-feedback">
			<input type="text" name="email" placeholder="이메일 주소" class="form-control" required/>
		</div>

		<p style="font-size:12px;">
			ㆍ 가입 후 메일로 발송된 링크를 클릭하시면 계정이 활성화됩니다.<br/>
			ㆍ 이름과 이메일 주소는 아이디/비밀번호 찾기에 사용됩니다. 정확히 입력해 주시기 바랍니다.
		</p>

		<div class="row text-center">
			<button type="submit" class="btn btn-primary">회원가입</button>
			<button type="submit" class="btn btn-warning">취소</button>
		</div>
	</div>
	</form>
</div>
</body>
</html>