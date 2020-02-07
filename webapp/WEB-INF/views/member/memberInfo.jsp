<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** Everywork mInfo **</title>
<style>
 div {
   display: block;
} 

.mInfo-title {
   font-size: 30px;
   color: darkslategrey;
   font-weight: bold;
   margin-bottom : 30px;
   margin-top : 70px;
   overflow: hidden;
   text-align: center;
}

.mInfo{
   margin: auto;
   width: 310px;
   margin-bottom: 30px;
}

.mInfo-form {
   width: 300px;
   height: 30px;
   margin-bottom: 10px;
}

.mInfo-subtitle {
   font-size : 15;
   font-weight:bold;
   text-align: left;
   width: 300px;
   margin-left: 5px;
   margin-right: 5px;
   padding-top: 10px;
   padding-bottom: 10px;
}

.mInfo-button {
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


<form action="logout" method="post">
   <div class="mInfo-container">
      <div class="mInfo">
         <div class="mInfo-title">${loginID}</div>
         <div class="mInfo-subtitle"><a href="mdetail?emem_id=${loginID}">개인정보변경</a></div>
         <div class="mInfo-subtitle"><a href="mlogout">로그아웃</a></div>
         <div class="mInfo-subtitle"><a href="#" onclick="answerOpen()">문의하기</a></div>
         <div class="mInfo-subtitle"><a href="terms">이용약관</a></div>
         <div class="mInfo-subtitle"><a href="privacy">개인정보취급방침</a></div>
         </div>	 
   </div>
</form>


</body>
</html>