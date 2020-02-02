<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** Everywork Join **</title>
<style>
 div {
   display: block;
} 

.join-title {
   font-size: 30px;
   color: darkslategrey;
   font-weight: bold;
   margin-bottom : 30px;
   margin-top : 70px;
   overflow: hidden;
   text-align: center;
}

.join{
   margin: auto;
   width: 310px;
   margin-bottom: 30px;
}

.join-form {
   width: 300px;
   height: 30px;
   margin-bottom: 10px;
}

.join-subtitle {
   font-size : 15;
   font-weight:bold;
   text-align: left;
   width: 300px;
   margin-left: 5px;
   margin-right: 5px;
   padding-top: 10px;
   padding-bottom: 10px;
}

.join-button {
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
   <div class="join-container">
      <div class="join">
         <div class="join-title">로그인</div>
         <div class="join-subtitle">아이디(이메일)</div>
         <input class="join-form" id="emem_id" type="text" name="emem_id">

         <div class="join-subtitle">패스워드(비밀번호)</div>
         <input class="join-form" id="emem_pw" type="password" name="emem_pw">

        
      	<div class="join-button">
            <input type="submit" value="로그인 ">
       	</div>
         </div>	 
   </div>
</form>


</body>
</html>