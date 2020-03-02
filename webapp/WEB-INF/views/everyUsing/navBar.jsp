<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NavBar</title>
<link rel="stylesheet" type="text/css" href="resources/jsLib/navBar.css">
<script src="resources/jsLib/jquery-3.2.1.min.js"></script>
<script src="resources/jsLib/namchulAjax.js"></script>

</head>
<body>

	<%-- <nav>
		<div class="nav-container">
			<div class="nav-item nav-item-left nav-logo">
				<a href="home"><b>EveryWork</b></a>
			</div>
			<div class="nav-item nav-item-left nav-recruit">
				<a href="jobMain">채용공고</a>
			</div>
			<div class="nav-item nav-item-left nav-resume">
				<a href="resumeForm?emem_id=${loginID}">자기소개서</a>
			</div>
			<div class="nav-item nav-item-left nav-spec">
				<a href="specForm?emem_id=${loginID}">이력서</a>
			</div>
			<div class="nav-item nav-item-left nav-blog">
				<a href="blog">자소서연구소</a>
			</div>
			<c:if test="${loginID!=null}">
				<div class="nav-item nav-item-right nav-login-icon">
					<a href="#" onclick="mInfo()"><img
						src="./resources/img/login_icon.png" height="25px"></a>
				</div>
				<!-- end nav-login-icon -->
			</c:if>
			
			
			<c:if test="${loginID==null}">
				<div class="nav-item nav-item-right nav-join">
					<a href="joinForm">회원가입</a>
				</div>
				<div class="nav-item nav-item-right nav-login">
					<a href="#" onclick="mlogin()">로그인</a>
				</div>
			</c:if>
		</div>
		<div id="login-div">
			<jsp:include page="/WEB-INF/views/member/loginForm.jsp"></jsp:include>
			 	<%@include file="/WEB-INF/views/member/loginForm.jsp" %>
		</div>
		<div id="mInfo-div">
			<jsp:include page="/WEB-INF/views/member/memberInfo.jsp"></jsp:include>
		</div>
	</nav> --%>




	<div class="top-nav-bar">
		<div class="logo vertical-center">
			<a href="home"> <img class="tab-logo"
				src="./resources/img/everyworkLogo.png">
			</a>
		</div>
		<!-- ngIf: showBrowserAlert -->

		<div class="tab_center">
			<a class="tab_button tab-recruit" href="jobMain">
				<div>채용 공고</div>
			</a> <a class="tab_button tab-resume"
				href="resumeForm?emem_id=${loginID}">
				<div>자기소개서</div>
			</a> <a class="tab_button tab-spec" href="specForm?emem_id=${loginID}">
				<div>이력서</div>
			</a> <a class="tab_button tab-example" href="blog">
				<div>자소서연구소</div>
			</a>

		</div>

		<div class="sign vertical-center">
			<div class="tab_right">
				<div class="sign">
					<c:if test="${loginID==null}">
						<div class="sign-button piwik-sign-in" onclick="mlogin()">
							로그인</div>
						<div class="sign-button sign-up piwik-sign-up"
							onclick="location.href='joinForm'">회원가입</div>
					</c:if>
					
					<c:if test="${loginID!=null}">
				<div class="dropdown">
					<a href="#" onclick="mInfo()"><img
						src="./resources/img/login.png" height="25px"></a>
				</div>
			</c:if>

				</div>
				
				<div id="login-div">
			<jsp:include page="/WEB-INF/views/member/loginForm.jsp"></jsp:include>
			 	<%-- <%@include file="/WEB-INF/views/member/loginForm.jsp" %> --%>
		</div>
		<div id="mInfo-div">
			<jsp:include page="/WEB-INF/views/member/memberInfo.jsp"></jsp:include>
		</div>
				

			

				

			</div>

		</div>
	</div>



</body>
</html>