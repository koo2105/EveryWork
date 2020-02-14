<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Blog Insert Form</title>
	<link rel="stylesheet" type="text/css" href="resources/jsLib/admin.css">
	<script src="resources/jsLib/js/service/HuskyEZCreator.js" charset="utf-8"></script>
	<script src="resources/jsLib/jquery-3.2.1.min.js"></script>
	
</head>
<body>
<h1>** 자소서연구소 글 등록 **

</h1>
	<form action="blogInsert" method="post" id="#" enctype="multipart/form-data">
	<table width=573>
	<tr><td class="admin-title" >ID</td>
	<td><input type="text" size="50" name="admin_id" id="admin_id" value="${adloginID}" readonly="readonly"><br></td></tr>
	<tr><td class="admin-title" >Category</td>
	<td>
	<select name="lab_cat" id="lab_cat">
		<option value="1">EveryWork활용하기</option>
		<option value="2">자소서 잘 쓰는 법</option>
		<option value="3">EveryWork 소식</option>
	</select><br></td></tr>
	<tr><td class="admin-title" >제목</td>
	<td><input type="text" name="lab_title" id="lab_title" size="50"><br></td></tr>
	<tr><td class="admin-title" >내용</td>
	<td><textarea rows="20" cols="55" id="lab_content"name="lab_content" style="resize: none;"></textarea></td></tr>
	<tr><td class="admin-title" >메인사진</td>
	<td><input type="file" name = "lab_imgf" id="lab_imgf"><br><img src="" class="select_img"/></td></tr>
	</table>
	<br>
	<input type="submit" value="전송" onclick="return inCheck()">
		<!-- <a  href="#" onclick="submitContents()" class="button">전송</a> -->
	</form>

</body>
</html>