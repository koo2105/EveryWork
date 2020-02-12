<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>**회원 상세 페이지**</title>
<link rel="stylesheet" type="text/css" href="resources/jsLib/admin.css">
<script src="resources/jsLib/jquery-3.2.1.min.js"></script>

</head>
<body>
<h2>** 회원 상세 페이지 **</h2>
<table>
<tr height="40"><td class="admin-title">I D</td>
	<td>${minfo.emem_id}</td></tr>
<tr height="40"><td class="admin-title">Name</td>
	<td>${minfo.emem_name}</td></tr>
<tr height="40"><td class="admin-title">PhoneNum</td>
	<td>${minfo.emem_pnum}</td></tr>
<tr height="40"><td class="admin-title">Birthd</td>
	<td>${minfo.emem_birthd}</td></tr>
<tr height="40"><td class="admin-title">Gender</td>
	<td>${minfo.emem_gender}</td></tr>
		
</table>
<br>
<a href="minfoDelete?emem_id=${minfo.emem_id}" class="button" >회원 삭제</a><br><br>

<hr>
<a href=adminhome>adminHome</a>
</body>
</html>