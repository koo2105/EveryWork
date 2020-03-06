<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>**admin DoFinish **</title>
<script src="resources/jsLib/jquery-3.2.1.min.js"></script>
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
</style>


</head>
<body>

<c:if test="${JOI=='T'}"> 
	<h3>공고 등록 성공</h3>
	<h3>홈으로</h3>
	===> <a href="adminhome">[어드민홈]</a> 
</c:if>
<c:if test="${Error=='JOE'}"> --%>
	 <h3>공고 등록 실패..</h3>
	<h3>홈으로</h3>
	===> <a href="adminhome">[어드민홈]</a> 
</c:if>
 --%>
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
	===> <a href="adminhome">[홈으로]</a>
</c:if>

<c:if test="${Success=='AT'}">
	<h3>문의 등록 완료</h3>
	===> <a href="adminhome">[홈으로]</a>
</c:if>

<c:if test="${Error=='AU'}">
	<h3>문의 등록에 실패하셨습니다~~~</h3>
	<h3>다시 하시겠습니까 ?</h3>
	===> <a href="adminhome">[홈으로]</a>
</c:if>

<c:if test="${BOGI=='T'}">
	<h3>자소서연구소 등록 성공</h3>
	<h3>홈으로</h3>
	===> <a href="adminhome">[어드민홈]</a>
</c:if>
<c:if test="${Error=='BOGE'}">
	<h3>자소서연구소 등록 실패..</h3>
	<h3>홈으로</h3>
	===> <a href="adminhome">[어드민홈]</a>
</c:if>

<c:if test="${Error=='UU'}">
	<h3>자소서연구소 수정에 실패했습니다~~~</h3>
	<h3>다시 하시겠습니까 ?</h3>
	===> <a href="blogUpdatef?id=${adloginID}">[자소서연구소정보]</a>
</c:if>
<c:if test="${Success=='B'}">
	<h3>정보 수정 완료</h3>
	===> <a href="adminhome">[홈으로]</a>
</c:if>

<c:if test="${Success=='AS'}">
	<h3>상태 수정 완료</h3>
	===> <a href="adminhome">[홈으로]</a>
</c:if>
<c:if test="${Error=='AE'}">
	<h3>상태 수정에 실패했습니다~~~</h3>
	<h3>다시 하시겠습니까 ?</h3>
	===> <a href="answerUpdatef?id=${adloginID}">[문의]</a>
</c:if>

<br>
<hr>
<br>
<a href="home">[HOME]</a>
</body>
</html>