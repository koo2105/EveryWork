<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> NavBar </title>
<link rel="stylesheet" type="text/css" href="resources/jsLib/navBar.css">
</head>
<body>

<nav>
	<div class="nav-container">
		<div class= "nav-item nav-item-left nav-logo"><a href="home"><b>EveryWork</b></a></div>
		<div class= "nav-item nav-item-left nav-recruit"><a href="jobMain">채용공고</a></div>
		<div class= "nav-item nav-item-left nav-resume"><a href="resumeForm">자기소개서</a></div>
		<div class= "nav-item nav-item-left nav-spec"><a href="specForm">이력서</a></div>
		<div class= "nav-item nav-item-left nav-blog"><a href="blog">자소서연구소</a></div>
		<c:if test="${loginID!=null}">
		<div class= "nav-item nav-item-right nav-login-icon"><a href="#"><img src="./resources/img/login_icon.png" height="25px"></a>
		</div><!-- end nav-login-icon -->
		</c:if>
		<c:if test="${loginID==null}">
		<div class= "nav-item nav-item-right nav-join"><a href="joinForm">회원가입</a></div>
		<div class= "nav-item nav-item-right nav-login"><a href="#">로그인</a></div>
		</c:if>
		</div>
</nav>


</body>
</html>