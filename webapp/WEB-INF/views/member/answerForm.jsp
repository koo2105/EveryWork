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

.answer-title {
   font-size: 30px;
   color: darkslategrey;
   font-weight: bold;
   margin-bottom : 30px;
   margin-top : 70px;
   overflow: hidden;
   text-align: center;
}

.answer{
   margin: auto;
   width: 310px;
   margin-bottom: 30px;
}

.id-form {
   width: 300px;
   height: 30px;
   margin-bottom: 10px;
}

.answer-form {
   width: 300px;
   height: 300px;
   margin-bottom: 10px;
   resize: none;
  
}

.answer-subtitle {
   font-size : 15;
   font-weight:bold;
   text-align: left;
   width: 200px;
   margin-left: 5px;
   margin-right: 5px;
   padding-top: 10px;
   padding-bottom: 10px;
}

.answer-button {
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


<form action="answer" method="post">
   <div class="answer-container">
   <div class="x-btn"><a href="#" onclick="answerClose()"><img alt="닫기" src="resources/img/x_btn.png"></a></div>
      <div class="answer">
         <div class="answer-title">문의하기</div>
         <div class="answer-subtitle">아이디(이메일)</div>
         <input class="id-form" id="emem_id" type="text" name="emem_id">

         <div class="answer-subtitle">문의 내용</div>
		 <textarea class="answer-form" id="inq_content" name="inq_content"></textarea>
        
      	<div class="answer-button">
            <input type="submit" value="문의">
       	</div>
         </div>	 
   </div>
</form>


</body>
</html>