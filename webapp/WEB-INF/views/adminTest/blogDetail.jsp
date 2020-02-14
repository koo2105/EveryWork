<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** 자소서연구소 상세 페이지 **</title>
<link rel="stylesheet" type="text/css" href="resources/jsLib/admin.css">
<script src="resources/jsLib/jquery-3.2.1.min.js"></script>
<script>

function axblogUpdate(lab_id) {
	$.ajax({
		type : 'post',
		data : {
			lab_id : lab_id
		},
		url : 'blogUpdatef',
		success : function(result) {
			$('#adminArea').html('');
			$('#adminArea').html(result);
		}

	});
};
</script>
</head>
<body>
<h2>** 자소서연구소 상세 페이지 **</h2>
<table>
<tr height="40"><td class="admin-title">게시글번호</td>
	<td>${binfoDetail.lab_id}</td></tr>
<tr height="40"><td class="admin-title">관리자ID</td>
	<td>${binfoDetail.admin_id}</td></tr>
<tr height="40"><td class="admin-title">Category</td>
	<td>${binfoDetail.lab_cat}</td></tr>
<tr height="40"><td class="admin-title">Title</td>
	<td>${binfoDetail.lab_title}</td></tr>
<tr height="40"><td class="admin-title">조회수</td>
	<td>${binfoDetail.lab_count}</td></tr>
<tr height="40"><td class="admin-title">날짜</td>
	<td>${binfoDetail.lab_date}</td></tr>
<tr height="40"><td class="admin-title">내용</td>
	<td>${binfoDetail.lab_content}</td></tr>
<tr height="40"><td class="admin-title">이미지</td>
	<td><img src="${binfoDetail.lab_img}" width="70" height="100"></td></tr>
</table>
<br>

<a href="#" onclick="axblogUpdate('${binfoDetail.lab_id}')" class="button" >게시글수정</a>&nbsp;&nbsp;
<a href="binfoDelete?lab_id=${binfoDetail.lab_id}" class="button" >게시글삭제</a><br><br>
<hr>
<a href=adminhome>adminHome</a>
</body>
</html>