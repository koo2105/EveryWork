<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** MemberList Spring MVC2 **</title>
<link rel="stylesheet" type="text/css" href="resources/jsLib/admin.css">
<script src="resources/jsLib/jquery-3.2.1.min.js"></script>

</head>
<body>
<h2>** 회원 관리 **</h2>
<table width=800>
<tr class="admin-title">
	<td>I D</td><td>Name</td>
	<td>PhoneNum</td><td>BirthDay</td><td>Sex</td>

</tr>
<c:forEach var="mm" items="${Apple}">
	<tr align="center" height=30>
	
<!-- 	반복문에 event 적용하기
	1) jQuery : class , this 이용
	<td><span class="cc textLink">${mm.id}</span></td>
	
	2) JScript : a Tag의 onclick 이벤트 이용 
		=> function의 매개변수 이용 : aidList('banana') 
	-->
	<td><a href="#" onclick="aidList('${mm.id}')" class="textLink" >${mm.id}</a></td>
	
	<td>${mm.name}</td>
	<td>${mm.num}</td>
	<td>${mm.birthd}</td>
	<td>${mm.sex}</td>
	</tr>
</c:forEach>
</table>
<hr>
<a href="#" class="button">회원 삭제</a>
</body>
</html>