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

	$("form[role='form']").submit(function() {
		event.preventDefault();

		if(isBlank($("input[name='userid']").val())) {
			alert("이름을 입력해주세요.");
			$("input[name='userid']").focus();
			return;
		}

		if(isBlank($("input[name='userpw']").val())) {
			alert("비밀번호를 입력해주세요.");
			$("input[name='userpw']").focus();
			return;
		}

		if(isBlank($("input[name='userpw_re']").val())) {
			alert("비밀번호를 한번 더 입력해주세요.");
			$("input[name='userpw_re']").focus();
			return;
		}

		if($("input[name='userpw']").val() != $("input[name='userpw_re']").val()) {
			alert("비밀번호가 일치하지 않습니다.");
			$("input[name='userpw_re']").val("");
			$("input[name='userpw_re']").focus();
			return;
		}

		if(isBlank($("input[name='username']").val())) {
			alert("이름을 입력해주세요.");
			$("input[name='username']").focus();
			return;
		}

		if(isBlank($("input[name='email']").val())) {
			alert("이메일 주소를 입력해주세요.");
			$("input[name='email']").focus();
			return;
		}

		$(this).submit();
	});
});
</script>
</head>
<body>
<!-- Main content -->
<section class="content">
	<div class="row">
		<!-- left column -->
		<div class="form-join">
			<!-- general form elements -->
			<form role="form" method="post">
			<div class="box">
				<div class="box-header width-border">
					<h2 class="form-join-heading">회원가입</h2>
				</div>

				<div class="box-body">
					<div class="form-group">
						<input type="text" name="userid" placeholder="아이디" class="form-control"/>
					</div>
					<div class="form-group">
						<input type="password" name="userpw" placeholder="비밀번호" class="form-control"/>
					</div>
					<div class="form-group">
						<input type="password" name="userpw_re" placeholder="비밀번호 확인" class="form-control"/>
					</div>
					<div class="form-group">
						<input type="text" name="username" placeholder="이름" class="form-control"/>
					</div>
					<div class="form-group">
						<input type="text" name="email" placeholder="이메일 주소" class="form-control"/>
					</div>
				</div>

				<div class="box-footer">
					<button type="submit" class="btn btn-primary">회원가입</button>
					<button type="submit" class="btn btn-warning">취소</button>
				</div>
			</div>
			</form>
		</div>
	</div>
</section>
</body>
</html>