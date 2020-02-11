<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** BoardList Spring MVC2 **</title>
<link rel="stylesheet" type="text/css" href="resources/jsLib/admin.css">
<script src="resources/jsLib/jquery-3.2.1.min.js"></script>
<script src="resources/jsLib/namchulAjax.js"></script>

<style>
	.result { color:blue; }
	
	#content{
		display:none; 
		/* jQuery 메서드 => show() / hide() 적용됨 */
		width:300px;
		height:100px;
		background:MintCream ;
		z-index:100;
		position:absolute;
	}
</style>
</head>
<body>
<h2>** 채용 공고 관리 **</h2>
<table width=800>
<tr class="admin-title" >
	<td>공고 번호</td><td>회사명</td><td>관리자ID</td>
	<td>시작일자</td><td>마감일자</td><td>조회수</td>
</tr>
<c:forEach var="mm" items="${Joblist}" varStatus="vs">
	<tr height=30 align="center">
	 <!-- jQuery 를 이용해서 값전달 Test -->
	 <td>${mm.jobopen_id}</td>
	 
	<td align="left">
		<!-- detail 에서 countUp(조회수 증가) 하는경우 -->
		<c:if test="${loginID!=mm.admin_id}">
			<a href="#" onclick="#">${mm.jobopen_company}</a>
		</c:if>
		<!-- <a href="#"            .... scroll 위치 이동 
			 <a href="javascript:;" .... 사용하면 해결         -->
			 
			 
		<!-- detail 에서 countUp(조회수 증가) 안하는경우 -->
		<c:if test="${loginID==mm.admin_id}">
			<a href="#" onclick="#">${mm.jobopen_company}</a>
		</c:if>
	</td> 
	 

	
	<td align="left">${mm.admin_id}</td>
	<td>${mm.jobopen_sdate}</td><td>${mm.jobopen_edate}</td><td>${mm.jobopen_count}</td>
	</tr>
</c:forEach>
</table>
<hr>
<a href="#" class="button" onclick="gonggoinsert()">공고 등록</a>
<a href="#" class="button" onclick="gonggoupdate()">공고 수정</a>
<a href="#" class="button">공고 삭제</a>



<div id="content"></div>
</body>
</html>