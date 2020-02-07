<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** Advertisement Form**</title>
<style>
 div {
   display: block;
} 

.adver-title {
   font-size: 30px;
   color: darkslategrey;
   font-weight: bold;
   margin-bottom : 30px;
   margin-top : 70px;
   overflow: hidden;
   text-align: center;
}

.adver{
   margin: auto;
   width: 310px;
   margin-bottom: 30px;
}

.id-form {
   width: 300px;
   height: 30px;
   margin-bottom: 10px;
}

.adver-form {
   width: 300px;
   height: 300px;
   margin-bottom: 10px;
   resize: none;
  
}

.adver-subtitle {
   font-size : 15;
   font-weight:bold;
   text-align: left;
   width: 200px;
   margin-left: 5px;
   margin-right: 5px;
   padding-top: 10px;
   padding-bottom: 10px;
}

.adver-button {
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

.x-btn{
	float:right;
	margin-top: -90px;
	margin-right: 10px;
}

</style>

</head>
<body>


<form action="adver" method="post">
   <div class="adver-container">
   <div class="x-btn"><a href="#" onclick="adverClose()"><img alt="닫기" src="resources/img/x_btn.png"></a></div>
      <div class="adver">
         <div class="adver-title">제휴 제안</div>
         <div class="adver-subtitle">아이디(이메일)</div>
         <input class="id-form" id="emem_id" type="text" name="emem_id" value="${loginID}" readonly="readonly">

         <div class="adver-subtitle">제휴/광고 내용</div>
		 <textarea class="adver-form" id="adv_content" name="adv_content"></textarea>
        
      	<div class="adver-button">
            <input type="submit" value="보내기">
       	</div>
         </div>	 
   </div>
</form>


</body>
</html>