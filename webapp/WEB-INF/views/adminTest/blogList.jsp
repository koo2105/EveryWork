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
<h2>** 자소서 연구소 관리 **</h2>
<table width=800>
<tr class="admin-title" >
	<td>글 번호</td><td>제목</td><td>카테고리</td>
	<td>등록일</td><td>ID</td>
</tr>
<c:forEach var="mm" items="${Bloglist}" varStatus="vs">
		<tr height=30 align="center">
	 	 <td>${mm.lab_id}</td>
	 	 
		<td align="left">
			<a href="#" onclick="#">${mm.lab_title}</a>
		</td> 
	<td align="left">
<c:if test="${mm.lab_cat=='1'}">EveryWork활용하기</c:if>
<c:if test="${mm.lab_cat=='2'}">자소서 잘 쓰는 법</c:if>
<c:if test="${mm.lab_cat=='3'}">EveryWork 소식</c:if>
</td><td>${mm.lab_date}</td>
	<td>${mm.admin_id}</td>
	</tr>
</c:forEach>
</table>
<hr>
<a href="#" class="button" onclick="bloginsertf()">글 등록</a>
<a href="#" class="button" onclick="blogupdatef()">글 수정</a>
<a href="#" class="button" onclick="#">글 삭제</a>
<c:if test="${loginID!=null}">
	<a href="#">[새글등록]</a>&nbsp;
</c:if>

<div id="content"></div>
</body>
</html>