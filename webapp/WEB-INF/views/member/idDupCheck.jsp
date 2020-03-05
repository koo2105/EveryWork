<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** ID 중복 Check **</title>
<script src="resources/jsLib/jquery-3.2.1.min.js"></script>
<script src="resources/jsLib/inCheck.js"></script>
<script>
	$(function() {
		$('#id').focusout(function() {
		 	idCheck();
		}).click(function() {
			$('#msgBlock').html('');
		}); // id_focusout.click
		
	}); // ready

	function idOk() {
	// joinForm(parent window : opener) 으로 id를 전달하고
	// 현재의 창은 닫는다.
		opener.document.getElementById('id').value="${ID}";
		// id 가 확정된 경우 더이상 id는 입력하지 못하도록 하고,
		// joinForm의 submit 은 사용할 수 있도록 해줌.
		opener.document.getElementById('submit').disabled="";
		opener.document.getElementById('idDup').disabled="disabled";
		opener.$('#id').prop("readonly",true);
		opener.$('#password').focus();
		self.close();
	} // idOk() 
	//=> attr()는 HTML의 속성을 취급
	//=> prop()는 JavaScript의 프로퍼티를  취급
</script>
<style>
	body{   
  		background-color: #FDF5E6 ;
  		font-family: 맑은고딕;
		}
	#wrap{     
 		margin-left: 0;
 		text-align: center;
		 }
	h3 {
 		/* font-family: 맑은고딕, Times, serif; */
	  	font-size: 30px;
  		color: #00008B;
  		font-weight: normal;
		}
		
		.eMessage {
		color:red; font-style:italic; font-size:x-small;
	}
		
/* 	input[type=button], input[type=submit] {
  		float: right;
	} */
</style>
</head>
<body>
<div id=wrap>
<h3>** ID 중복확인 **</h3>
<form action="idDupCheck" method="post">
UserID:
	<input type="text" id="id" name="id" value="">
	<input type="submit" value="ID 중복확인" onclick="return idCheck()">
	<br><span id="iMessage" class="eMessage"></span>
</form>
<br><br><hr><br>
<div id="msgBlock">
	<c:if test="${idUse=='T'}">
	${ID}는 사용 가능한 ID 입니다. ~~ 
	<input type="button" value="idOk" onclick="idOk()">
	</c:if>
	<c:if test="${idUse=='F'}">
	${ID}는 이미 존재 합니다 ~~ <br>
	사용 불가능합니다. 다시 선택하세요  ~~ 
	<!-- 부모창에 남아있는 id값은 지워주고 (only JS 가능), 
			현재창의 id 에 focus  --> 
		<script>
			$('#id').focus();
			opener.document.getElementById('id').value='';
		</script>		
	</c:if>
</div></div>
</body>
</html>