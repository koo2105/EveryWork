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
<c:if test="${JOI=='T'}">
	<h3>공고 등록 성공</h3>
	<h3>홈으로</h3>
	===> <a href="adminhome">[어드민홈]</a>
</c:if>
<c:if test="${Error=='JOE'}">
	<h3>공고 등록 실패..</h3>
	<h3>홈으로</h3>
	===> <a href="adminhome">[어드민홈]</a>
</c:if>

<c:if test="${Error=='J'}">
	<h3>회원 가입 실패~~</h3>
	<h3>다시 하시겠습니까 ?</h3>
	===> <a href="joinf">[회원가입]</a>
</c:if>

<c:if test="${Error=='U'}">
	<h3>정보 수정에 실패했습니다~~~</h3>
	<h3>다시 하시겠습니까 ?</h3>
	===> <a href="updatef?id=${loginID}">[내정보]</a>
</c:if>
<c:if test="${Success=='T'}">
	<h3>정보 수정 완료</h3>
	===> <a href="home">[홈으로]</a>
</c:if>

<c:if test="${Success=='AT'}">
	<h3>문의 등록 완료</h3>
	===> <a href="home">[홈으로]</a>
</c:if>

<c:if test="${Error=='AU'}">
	<h3>문의 등록에 실패하셨습니다~~~</h3>
	<h3>다시 하시겠습니까 ?</h3>
	===> <a href="home">[홈으로]</a>
</c:if>



<br>
<hr>
<br>
<a href="home">[HOME]</a>
</body>
</html>