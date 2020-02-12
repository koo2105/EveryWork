<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>**공고 상세 페이지**</title>
<link rel="stylesheet" type="text/css" href="resources/jsLib/admin.css">
<script src="resources/jsLib/jquery-3.2.1.min.js"></script>

</head>
<body>
<h2>** 공고 상세 페이지 **</h2>
<table>
<tr height="40"><td class="admin-title">I D</td>
	<td>${Detail.admin_id}</td></tr>
<tr height="40"><td class="admin-title">pro_Image</td>
	<td><img src="${Detail.jobopen_pimg}" width="70" height="100"></td></tr>	
<tr height="40"><td class="admin-title">Company</td>
	<td>${Detail.jobopen_company}</td></tr>
<tr height="40"><td class="admin-title">Company_link</td>
	<td>${Detail.jobopen_link}</td></tr>
<tr height="40"><td class="admin-title">Date</td>
	<td>${Detail.jobopen_sdate}~${Detail.jobopen_edate}</td></tr>
<tr height="40"><td class="admin-title" >Image</td>
	<td><img src="${Detail.jobopen_cimg}" width="70" height="100"></td></tr>	
		
</table>
<br>
<hr>

<a href=adminhome>adminHome</a><br>
</body>
</html>