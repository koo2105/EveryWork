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


<form action="logout" method="post">
   <div class="join-container">
      <div class="join">
         <div class="join-title">${loginID}</div>
         <div class="join-subtitle">개인정보변경</div>
         <div class="join-subtitle">로그아웃</div>
         <div class="join-subtitle">문의하기</div>
         <div class="join-subtitle">이용약관</div>
         <div class="join-subtitle">개인정보취급방침</div>
         </div>	 
   </div>
</form>


</body>
</html>