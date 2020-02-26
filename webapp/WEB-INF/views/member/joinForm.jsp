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

//joinform checkbox
$(document).ready(function(){
	//최상단 체크박스 클릭
	$("#checkallRaido").click(function(){
		//클릭되었으면
		if($("#checkallRaido").prop("checked")){
			//input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
			$("input[name=agree]").prop("checked",true);
			//클릭이 안되있으면
		} else{
			//input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
			$("input[name=agree]").prop("checked",false);
		}
		
	});
});




</script>
<style>
body{

background-color: #f0f0f0;

}


 div {
   display: block;
} 

.join-title {
   font-size: 30px;
    color: #ff6813;
   font-weight: bold;
   margin-bottom : 30px;
   padding-top:30px;
   overflow: hidden;
   text-align: center;
}

.join{
   margin: auto;
   width: 500px;
   margin-bottom: 30px;
}

.join-form {
   display: block;
    height: 50px;
    width: 80%;
  /* margin-top: 10px;
   margin-bottom: 10px;
  padding: 0 15px; */
    border: 1px solid #ddd;
    border-radius: 4px;
     color: #999;
     text-align: center;
}

.join-subtitle {
   font-size : 15;
   font-weight:bold;
   text-align: left;
   width: 400px;
   margin-left: 5px;
   margin-right: 5px;
   padding-top: 10px;
   padding-bottom: 10px;
}

.join-button>input {
   font-size : 15;
   font-weight:bold;
   width: 342px;
   margin-left: 5px;
   margin-right: 5px;
   padding-top: 10px;
   padding-bottom: 10px;
  
   background-color : white;
   border: 1px solid #ddd;
   border-radius: 4px;
}
.radio-sex{
box-sizing: border-box;
}

.join-container{
background-color: #f0f0f0;
}


</style>

</head>
<body>

  <!-- top nav -->
<%@ include file="/WEB-INF/views/everyUsing/navBar.jsp" %>

<form action="join" method="post">
   <div class="join-container">
      <div class="join">
         <div class="join-title">회원가입</div>
         <div class="join-subtitle">아이디(이메일)</div>
         <input class="join-form" id="id" type="text" name="emem_id">

         <div class="join-subtitle">패스워드(비밀번호)</div>
         <input class="join-form" id="password" type="password" name="emem_pw">

         <div class="join-subtitle">패스워드 확인(비밀번호)</div>
         <input class="join-form" id="password2" type="password"><br>
		 <span id="pMessage" class="eMessage"></span>
         <div class="join-subtitle">이름</div>
         <input class="join-form" id="name" type="text" name="emem_name">

         <div class="join-subtitle">휴대폰 번호</div>
         <input class="join-form" id="number" type="text" name="emem_pnum">

         <div class="join-subtitle">생년월일</div>
         <input class="join-form" id="birthd" type="date" name="emem_birthd">
         
         <div class="join-subtitle">성별</div>
           <input class="radio-sex" type="radio" name="emem_gender" value="남" alt="남자" checked >남자&nbsp;&nbsp;
           <input type="radio" name="emem_gender" value="여" alt="여자" >여자&nbsp;&nbsp;<br><br><br>
           
           <div class="join-subtitle">모두 동의합니다<input id="checkallRaido" type="checkbox"></div>
           <input type="checkbox" name="agree" value="이용" alt="이용">이용약관 동의<br>
           <input type="checkbox" name="agree" value="개인" alt="개인" >개인정보 취급방침 동의<br>
           <input type="checkbox" name="agree" value="마케팅" alt="마케팅" >마케팅 정보 수신 동의<br><br>
            
      	<div class="join-button">
            <input type="submit" value="회원가입">
       	</div>
         </div>	 
   </div>
</form>

</body>
</html>