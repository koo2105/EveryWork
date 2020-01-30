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

<script>
var tCheck=false;

$(function() {
	$('#title').focus();
	$('#title').focusout(function() {
	 	tCheck=ttCheck();
	}); // title_focusout
}); // ready

function inCheck() {
	if (tCheck==true ) {
		return true;
	}else {
		tCheck=ttCheck();
		return false;
	};
} //inCheck 
</script>
</head>
<body>
<h2>** 새 공고 등록 **</h2>
<form action="binsert" method="post">
<table>
<tr height="40"><td bgcolor="yellow">I D</td>
	<td><input type="text" name="id" value="${loginID}" readonly="readonly"></td></tr>
<tr height="40"><td bgcolor="yellow">pro_Image</td>
		<td><input type="file" name="uploadfilef" id="uploadfilef"><br>
		<img src="" class="select_img"/>
<tr height="40"><td bgcolor="yellow">Company</td>
	<td><input type="text" name="company" id="company"><br>
		<span id="cMessage" class="eMessage"></span></td></tr>
<tr height="40"><td bgcolor="yellow">Company_link</td>
	<td><input type="url" name="link" id="link"><br>
		<span id="cMessage" class="eMessage"></span></td></tr>
<tr height="40"><td bgcolor="yellow">Date</td>
	<td><input type="date" name="date" id="date">
		<span id="dMessage" class="eMessage"></span>
		~ <input type="date" name="date" id="date">
		<span id="dMessage" class="eMessage"></span></td></tr>
<tr height="20"><td bgcolor="yellow" >Content</td>
	<td><textarea rows="5" cols="50" name="content">조건</textarea><br>
	<textarea rows="5" cols="50" name="content">직무</textarea><br>
	<a href="#" class="plus-button">+</a>
	</td></tr>
<tr height="40"><td bgcolor="yellow">Image</td>
		<td><input type="file" name="uploadfilef" id="uploadfilef"><br>
		<img src="" class="select_img"/>
<tr><td></td><td><input type="submit" value="Submit" onclick="return inCheck()">
                 <input type="reset" value="Reset"></td>	
</table>
</form>
<br>
<hr>

<a href="adminf">Home</a><br>
</body>
</html>