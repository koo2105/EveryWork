<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** Everywork login **</title>
<link rel="stylesheet" type="text/css" href="resources/jsLib/navBar.css">
<script src="resources/jsLib/jquery-3.2.1.min.js"></script>
<script src="resources/jsLib/namchulAjax.js"></script>
<script src="resources/jsLib/inCheck.js"></script>
<script>
// 1) 전역변수정의
	var iCheck=false;
	var pCheck=false;
// 2) 각 InputTag의 focusout 이벤트핸들러	
$(function() {
	$('#id').focus();
	$('#id').focusout(function() {
	 	iCheck=idCheck();
		//if () iCheck=true;
		//else iCheck=false;
	}); // id_focusout
	
	$('#password').focusout(function() {
		pCheck=pwCheck();
	}); // password_focusout
}); // ready

//3) submit 처리
function inCheck() {
	
	if (iCheck==true && pCheck==true) {
		return true;
	}else {
		if (iCheck==false) {iCheck=idCheck() };
		if (pCheck==false) {pCheck=pwCheck() };
		//return false;
	};
} //inCheck 

</script>

<style>
.eMessage {
	color: red;
	font-style: italic;
	font-size: x-small;
}

div {
	display: block;
}
.login-container{

    }
.login-title {
	font-size: 30px;
	color: #ff6813;
	font-weight: bold;
	margin-bottom: 30px;
	margin-top: 30px;
	overflow: hidden;
	text-align: center;
}

.login {
	margin: auto;
	width: 310px;
	margin-bottom: 30px;
}

.login-form {

	/* margin-bottom: 10px; */
	display: block;
    width: 300px;
    height: 40px;
   /*  margin: 10px 0;
    padding: 0 15px; */
    border: 1px solid #ddd;
    border-radius: 4px;
    text-align: center;
}

.login-subtitle {
	font-size: 15;
	font-weight: bold;
	text-align: left;
	width: 300px;
	margin-left: 5px;
	margin-right: 5px;
	padding-top: 10px;
	padding-bottom: 10px;
}

.login-button>input {
	font-size: 15;
	font-weight: bold;
	width: 300px;
	margin-top: 30px;
	margin-left: 5px;
	margin-right: 5px;
	padding-top: 10px;
	padding-bottom: 10px;
	text-align: center;
	border: 1px solid #ddd;
    border-radius: 4px;
}
.login-button>input {

}

.radio-sex {
	box-sizing: border-box;
}


</style>

</head>
<body>


<form action="login" method="post">
		<div class="login-container">
			<div class="login">
				<div class="login-title">로그인</div>
				<div class="login-subtitle">아이디(이메일)</div>
				<input class="login-form" id="id" type="text" name="emem_id">
				<span id="iMessage" class="eMessage"></span>

				<div class="login-subtitle">패스워드(비밀번호)</div>
				<input class="login-form" id="password" type="password"
					name="emem_pw">
				<span id="pMessage" class="eMessage"></span>


				<div class="login-button">
					<input type="submit" value="로그인 " onclick="return inCheck()">
				</div>
			</div>
		</div>
	</form> 





</body>
</html>