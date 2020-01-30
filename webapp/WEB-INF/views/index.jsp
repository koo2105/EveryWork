<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
   <title>EveryWork</title>
   
   <style>
   body{
      margin: 0 auto; /* margin: 상하(0) 좌우(auto) => 중앙정렬 */
      width: 1920px;
      padding-top: 51px;
   }
   
   .nav-container{
   /* display:  flex; */
   width: 100%;
   margin: 0;
   padding: 0;
   background-color: darkslategrey;
   list-style-type: none;
   position: fixed;
   top: 0;
   overflow: hidden;
   }
   
   .nav-item a {
   padding: 15px;
   cursor: pointer;
   text-decoration: none;
   color: white;
   display: inline-block;
   
   }
   
   .nav-item-right {
   float: right;
   text-align: right;
   }
   
   .nav-item-left {
   float: left;
   text-align: left;
   }
   
   .nav-logo{
   background-color: lightseagreen;
   
   }
   .nav-item:hover{
   background-color: grey;
   }

   </style>
   
</head>
<body>

<div class="nav-container">
<div class= "nav-item nav-item-left nav-logo"><a href="home"><b>EveryWork</b></a></div>
<div class= "nav-item nav-item-left nav-recruit"><a href="#">채용공고</a></div>
<div class= "nav-item nav-item-left nav-resume"><a href="#">자기소개서</a></div>
<div class= "nav-item nav-item-left nav-spec"><a href="#">이력서</a></div>
<div class= "nav-item nav-item-left nav-blog"><a href="#">자소서연구소</a></div>
<div class= "nav-item nav-item-right nav-join"><a href="#">회원가입</a></div>
<div class= "nav-item nav-item-right nav-login"><a href="#">로그인</a></div>
</div>



</body>
</html>