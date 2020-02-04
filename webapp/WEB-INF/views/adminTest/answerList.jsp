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
<h2>** 문의 관리 **</h2>
<table width=800>
<tr class="admin-title" >
	<td>문의 번호</td><td>제목</td><td>관리자ID</td>
	<td>등록일</td><td>답변 상태</td><td>조회수</td>
</tr>
<c:forEach var="mm" items="${Answerlist}" varStatus="vs">
	<tr height=30 align="center">
	
	 	 <td>${mm.inq_id}</td>
	 	 
		<td align="left">
			<a href="#" onclick="#">${mm.inq_title}</a>
		</td> 
	 

	
	<td align="left">${mm.admin_id}</td><td>${mm.inq_date}</td>
	<td>${mm.inq_state}</td><td>${mm.inq_count}</td>
	</tr>
</c:forEach>
</table>
<hr>



<div id="content"></div>
</body>
</html>