<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** Everywork login **</title>
<script src="resources/jsLib/jquery-3.2.1.min.js"></script>
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
 div {
   display: block;
} 

.eMessage {
	color: red;
	font-style: italic;
	font-size: x-small;
}

.login-title {
   font-size: 30px;
   color: darkslategrey;
   font-weight: bold;
   margin-bottom : 30px;
   margin-top : 70px;
   overflow: hidden;
   text-align: center;
}

.login{
   margin: auto;
   width: 310px;
   margin-bottom: 30px;
}

.login-form {
   width: 300px;
   height: 30px;
   margin-bottom: 10px;
}

.login-subtitle {
   font-size : 15;
   font-weight:bold;
   text-align: left;
   width: 300px;
   margin-left: 5px;
   margin-right: 5px;
   padding-top: 10px;
   padding-bottom: 10px;
}

.login-button {
   font-size : 15;
   font-weight:bold;
   width: 300px;
   margin-left: 5px;
   margin-right: 5px;
   padding-top: 10px;
   padding-bottom: 10px;
   text-align: center;
}
.radio-sex{
box-sizing: border-box;
}


</style>

</head>
<body>


<form action="adminlogin" method="post">
   <div class="login-container">
      <div class="login">
         <div class="login-title">로그인</div>
         <div class="login-subtitle">아이디</div>
         <input class="login-form" id="id" type="text" name="admin_id">
        	 <span id="iMessage" class="eMessage"></span>
         <div class="login-subtitle">패스워드(비밀번호)</div>
         <input class="login-form" id="password" type="password" name="admin_password">
      		<span id="pMessage" class="eMessage"></span>
      	
      	<div class="login-button">
            <input type="submit" value="로그인 ">
       	</div>
         </div>	 
   </div>
</form>



<c:if test="${Error=='AL'}">
<script>
	alert('아이디 또는 비밀번호가 틀렸습니다.');
</script>
</c:if>
</body>
</html>