<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>**Everywork Join **</title>

<script src="resources/jsLib/namchulAjax.js"></script>
<script src="resources/jsLib/jquery-3.2.1.min.js"></script>
<script>
$(function() {
	$('#password2').focusout(function() {
		pwCheck();
	}); // password_focusout

});

</script>

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
}
.radio-sex{
box-sizing: border-box;
}


</style>

</head>
<body>

<%@ include file="/WEB-INF/views/everyUsing/navBar.jsp" %>

	<form action="update" method="post">
   <div class="join-container">
      <div class="join">
         <div class="join-title">회원 정보 수정</div>
         <div class="join-subtitle">아이디(이메일)</div>
         <input class="join-form" id="id" type="text" name="emem_id" value="${Detail.emem_id}" readonly="readonly">

         <div class="join-subtitle">패스워드 변경(비밀번호)</div>
         <input class="join-form" id="password" type="password" name="emem_pw">

         <div class="join-subtitle">패스워드 변경 확인(비밀번호)</div>
         <input class="join-form" id="password2" type="password" ><br>
          <span id="pMessage" class="eMessage"></span> 
          
         <div class="join-subtitle">이름</div>
         <input class="join-form" id="name" type="text" name="emem_name" value="${Detail.emem_name}">

         <div class="join-subtitle">휴대폰 번호</div>
         <input class="join-form" id="number" type="text" name="emem_pnum" value="${Detail.emem_pnum}">

         <div class="join-subtitle">생년월일</div>
         <input class="join-form" id="birthd" type="date" name="emem_birthd" value="${Detail.emem_birthd}">
       
            
      	<div class="join-button">
            <input type="submit" value="저장하기">
            
       	</div>
         </div>	 
   </div>

</form>
</body>
</html>