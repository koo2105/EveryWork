<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
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
<h1>** 자소서연구소 글 수정 **

</h1>
	<form action="blogUpdate" method="post" enctype="multipart/form-data">
	<table width=573>
	<tr><td class="admin-title">글 번호</td>
	<td><input type="text" name="lab_id" id="lab_id" size="50" value="${BlogD.lab_id}"><br></td></tr>
	<tr><td class="admin-title">ID</td>
	<td><input type="text" size="50" name="admin_id" id="admin_id" value="${adloginID}" readonly="readonly"><br></td></tr>
	<tr><td class="admin-title" >Category</td>
	<td>
	<select name="lab_cat" id="lab_cat">
	<c:if test="${BlogD.lab_cat=='1'}">
		<option value="1" selected="selected">EveryWork활용하기</option>
		<option value="2">자소서 잘 쓰는 법</option>
		<option value="3">EveryWork 소식</option>
	</c:if>
		<c:if test="${BlogD.lab_cat=='2'}">
		<option value="1">EveryWork활용하기</option>
		<option value="2" selected="selected">자소서 잘 쓰는 법</option>
		<option value="3">EveryWork 소식</option>
	</c:if>
		<c:if test="${BlogD.lab_cat=='3'}">
		<option value="1">EveryWork활용하기</option>
		<option value="2">자소서 잘 쓰는 법</option>
		<option value="3" selected="selected">EveryWork 소식</option>
	</c:if>
	
	</select><br></td></tr>
	<tr><td class="admin-title" >제목</td>
	<td><input type="text" name="lab_title" id="lab_title" size="50" value="${BlogD.lab_title}"><br></td></tr>
	<tr><td class="admin-title" >내용</td>
	<td><textarea rows="20" cols="55" id="lab_content"name="lab_content" style="resize: none;" >${BlogD.lab_content}</textarea></td></tr>
	<tr><td class="admin-title" >메인사진</td>
	<td><img src="${BlogD.lab_img}" width="100" height="100"><br>
		<input type="text" name="lab_img" id="lab_img" value="${BlogD.lab_img}" hidden="true"><br>
		<input type="file" name="lab_imgf" id="lab_imgf">
	</td></tr>	
	<tr><td><input type="submit" value="수정하기"></td>	
</table>
</form>
<br>
	

	
	
	

</body>
</html>