<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** Everywork login **</title>

<style>
 div {
   display: block;
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


<form action="login" method="post">
   <div class="login-container">
      <div class="login">
         <div class="login-title">로그인</div>
         <div class="login-subtitle">아이디(이메일)</div>
         <input class="login-form" id="emem_id" type="text" name="emem_id">

         <div class="login-subtitle">패스워드(비밀번호)</div>
         <input class="login-form" id="emem_pw" type="password" name="emem_pw">

        
      	<div class="login-button">
            <input type="submit" value="로그인 ">
       	</div>
         </div>	 
   </div>
</form>


</body>
</html>