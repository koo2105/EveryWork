<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>**문의사항  상세 페이지**</title>
<link rel="stylesheet" type="text/css" href="resources/jsLib/admin.css">
<script src="resources/jsLib/jquery-3.2.1.min.js"></script>
<script>

</script>
</head>
<body>
<h2>** 문의사항 상세 페이지 **</h2>
<form action="answerUpdate" method="post">
<input type="hidden" name="inq_id" value="${answerDetail.inq_id}">
<table>
<tr height="40"><td class="admin-title">문의번호</td>
	<td>${answerDetail.inq_id}</td></tr>
<tr height="40"><td class="admin-title">회원ID</td>
	<td>${answerDetail.emem_id}</td></tr>
<tr height="40"><td class="admin-title">Title</td>
	<td>${answerDetail.inq_title}</td></tr>
<tr height="40"><td class="admin-title">내용</td>
	<td>${answerDetail.inq_content}</td></tr>
<tr height="40"><td class="admin-title">날짜</td>
	<td>${answerDetail.inq_date}</td></tr>
<tr height="40"><td class="admin-title">상태</td>
	<td><select name="inq_state" id="inq_state">
	<c:if test="${answerDetail.inq_state=='1'}">
	<option value="1" selected="selected">대기중</option>
	<option value="2" >처리중</option>
	<option value="3">완료</option>
	</c:if>
	<c:if test="${answerDetail.inq_state=='2'}">
	<option value="1">대기중</option>
	<option value="2" selected="selected">처리중</option>
	<option value="3">완료</option>
	</c:if>
	<c:if test="${answerDetail.inq_state=='3'}">
	<option value="1">대기중</option>
	<option value="2">처리중</option>
	<option value="3" selected="selected">완료</option>
	</c:if>
</select></td></tr>
<tr height="40"><td class="admin-title">조회수</td>
	<td>${answerDetail.inq_count}</td></tr>
</table>
<input type="button" onclick="answerUpdate(${answerDetail.inq_id})" value="저장">
</form>
<br>
<br><br>
<a href="answerDelete?inq_id=${answerDetail.inq_id}" class="button" >게시글삭제</a><br><br>

<hr>
<a href="adminhome">adminHome</a>
</body>
</html>