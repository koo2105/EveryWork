<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>**Everywork Join **</title>
<script src="resources/jsLib/namchulAjax.js"></script>
<script src="resources/jsLib/jquery-3.2.1.min.js"></script>
<script src="resources/jsLib/inCheck.js"></script>

<script>
/* $(function() {
	$('#password2').focusout(function() {
		pwCheck2();
	}); // password_focusout

}); */

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


//1) 전역변수정의
var iCheck=false;
var pCheck=false;
var pCheck2=false;
var nCheck=false;
var bCheck=false;

//2) 각 InputTag의 focusout 이벤트핸들러		
$(function() {
	$('#id').focus();
	$('#id').focusout(function() {
	 	iCheck=idCheck();
	}); // id_focusout
	
	$('#password').focusout(function() {
		pCheck=pwCheck();
	}); // password_focusout
	
	$('#password2').focusout(function() {
		pCheck2=pwCheck2();
	}); // password2_focusout
	
	$('#name').focusout(function() {
	 	nCheck=nmCheck();
	}); // name_focusout
	
	$('#birthd').focusout(function() {
		bCheck=bdCheck();
	}); // birthd_focusout
	


}); // ready

//3) submit 처리
function inCheck() {
	// input Tag중  focusout 이 발생되지 않은 경우 확인을 위함.   
	console.log("b,o,w 1 =>"+bCheck+oCheck+wCheck) ;
	if (iCheck==false) {iCheck=idCheck() };
	if (pCheck==false) {pCheck=pwCheck() };
	if (pCheck2==false) {pCheck2=pwCheck2() };
	if (nCheck==false) {nCheck=nmCheck() };
	if (bCheck==false) {bCheck=bdCheck() };

	console.log("b,o,w 2 =>"+bCheck+oCheck+wCheck) ;
	
	if (iCheck==true && pCheck==true && pCheck2==true &&
			nCheck==true && bCheck==true ) {
		  return true;
	}else return false;		 
} //inCheck 


function idDupCheck() {
	if (iCheck==false) {
		iCheck=idCheck(); 
	} else {
		var url="idDupCheck?id="+$('#id').val();
		// idDupCheck?id=banana
		window.open(url,"_blank"
			,"toolbar=no,menubar=yes,scrollbars=yes,resizable=yes,width=500,height=400");
	}
} // idDupCheck()


</script>
<style>
body{

background-color: #f0f0f0;

}

 div {
   display: block;
} 
.eMessage {
		color:red; font-style:italic; font-size:x-small;
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
   width: 400px;
   
}

.join-form {
   display: block;
    height: 40px;
    width: 100%;
    border: 1px solid #ddd;
    border-radius: 4px;
     color: #999;
}

.join-subtitle {
   font-size : 15;
   font-weight:bold;
   text-align: left;
   width: 100%;
   padding-bottom: 5px;
   padding-top: 10px;
}

.join-button>input {
   font-size : 15;
   font-weight:bold;
   /* margin-left: 5px;
   margin-right: 5px;
   padding-top: 10px;
   padding-bottom: 10px; */
   background-color : white;
   border: 1px solid #ddd;
   border-radius: 4px;
   vertical-align: middle;
}

.join-button .jBtn_submit{
	color: #777777;
    display: inline-block;
    border-radius: 4px;
    padding: 5px 10px;
    font-weight: normal;
    font-size: 14px;
    cursor: pointer;
    text-decoration: none;
    width: 300px;
    height :40px;
    vertical-align: center;
	margin-left: 50px;
	margin-top: 20px;
	margin-bottom: 50px;
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
         	<input type="button" value="ID 중복확인" onclick="idDupCheck()" id="idDup">
			<span id="iMessage" class="eMessage"></span>
         <div class="join-subtitle">패스워드(비밀번호)</div>
         <input class="join-form" id="password" type="password" name="emem_pw">
         <span id="pMessage" class="eMessage"></span>

         <div class="join-subtitle">패스워드 확인(비밀번호)</div>
         <input class="join-form" id="password2" type="password">
		 <span id="pwMessage" class="eMessage"></span>
		 
         <div class="join-subtitle">이름</div>
         <input class="join-form" id="name" type="text" name="emem_name">
			<span id="nMessage" class="eMessage"></span>
         <div class="join-subtitle">휴대폰 번호</div>
         <input class="join-form" id="number" type="text" name="emem_pnum">

         <div class="join-subtitle">생년월일</div>
         <input class="join-form" id="birthd" type="date" name="emem_birthd">
         <span id="bMessage" class="eMessage"></span>
         <div class="join-subtitle">성별</div>
           <input class="radio-sex" type="radio" name="emem_gender" value="남" alt="남자" checked >남자&nbsp;&nbsp;
           <input type="radio" name="emem_gender" value="여" alt="여자" >여자&nbsp;&nbsp;<br><br><br>
           
           <div class="join-subtitle">모두 동의합니다<input id="checkallRaido" type="checkbox"></div>
           <input type="checkbox" name="agree" value="이용" alt="이용">이용약관 동의<br>
           <input type="checkbox" name="agree" value="개인" alt="개인" >개인정보 취급방침 동의<br>
           <input type="checkbox" name="agree" value="마케팅" alt="마케팅" >마케팅 정보 수신 동의<br><br>
            
      	<div class="join-button">
            <input class="jBtn_submit" type="submit" value="회원가입" onclick="return inCheck()" 
						id="submit" disabled="disabled" >
       	</div>
         </div>	 
   </div>
</form>

</body>
</html>