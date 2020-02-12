<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** Spring [새글 등록] _ inCheck **</title>
<link rel="stylesheet" type="text/css" href="resources/jsLib/admin.css">
<script src="resources/jsLib/jquery-3.2.1.min.js"></script>

</head>
<body>
<h2>** 새 공고 등록 **</h2>
<form action="jobopeninsert" method="post" enctype="multipart/form-data">
<table>
<tr height="40"><td class="admin-title">I D</td>
	<td><input type="text" name="admin_id" id="admin_id" value="${adloginID}" readonly="readonly"></td></tr>
<tr height="40"><td class="admin-title">pro_Image</td>
		<td><input type="file" name="jobopen_pimgf" id="jobopen_pimgf" ><br>
		<img src="" class="select_img"/></td>
<tr height="40"><td class="admin-title">Company</td>
	<td><input type="text" name="jobopen_company" id="jobopen_company"><br>
		<span id="cMessage" class="eMessage"></span></td></tr>
<tr height="40"><td class="admin-title">Company_link</td>
	<td><input type="text" name="jobopen_link" id="jobopen_link"><br>
		<span id="cMessage" class="eMessage"></span></td></tr>
<tr height="40"><td class="admin-title">Date</td>
	<td><input type="date" name="jobopen_sdate" id="jobopen_sdate">
		<span id="dMessage" class="eMessage"></span>
		~ <input type="date" name="jobopen_edate" id="jobopen_edate">
		<span id="dMessage" class="eMessage"></span></td></tr>
<tr height="40"><td class="admin-title" >Image</td>
		<td><input type="file" id="jobopen_cimgf" name="jobopen_cimgf"><br>
		<img src="" class="select_img"/>
<tr><td></td><td><input type="submit" value="등록" onclick="return inCheck()">
                 <input type="reset" value="취소"></td>	
</table>
</form>
<br>
<hr>

<a href=adminhome>adminHome</a><br>
</body>
</html>