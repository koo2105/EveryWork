<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** Member MVC2 DoFinish **</title>
</head>
<body>
<h2>** Spring MVC2_@ DoFinish **</h2>

<c:if test="${Error=='J'}">
	<h3>회원 가입 실패~~</h3>
	<h3>다시 하시겠습니까 ?</h3>
	===> <a href="joinf">[회원가입]</a>
</c:if>


<br>
<hr>
<br>
<a href="home">[HOME]</a>
</body>
</html>