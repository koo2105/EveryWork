<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** 문의 관리 **</title>
<link rel="stylesheet" type="text/css" href="resources/jsLib/admin.css">
<script src="resources/jsLib/jquery-3.2.1.min.js"></script>
<script>
function answerDetail(inq_id) {
	$.ajax({
		type : 'post',
		data : {
			inq_id : inq_id
		},
		url : 'answerDetail',
		success : function(result) {
			$('#adminArea').html('');
			$('#adminArea').html(result);
		}

	});
};

</script>
<c:if test="${Success=='AS'}">
<script>
	alert('수정되었습니다.');
</script>
</c:if>
<c:if test="${Error=='AE'}">
<script>
	alert('수정실패');
</script>
</c:if>

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
	<td>문의 번호</td><td>제목</td><td>회원ID</td>
	<td>등록일</td><td>답변 상태</td><td>조회수</td>
</tr>
<c:forEach var="mm" items="${Answerlist}" varStatus="vs">
	<tr height=30 align="center">
	
	 	 <td><a href="#" onclick="answerDetail('${mm.inq_id}')">${mm.inq_id}</a></td>
	 	 
		<td align="left">
			${mm.inq_title}
		</td> 
	
	<td align="left">${mm.emem_id}</td><td>${mm.inq_date}</td>
	<td>
	<c:if test="${mm.inq_state=='1'}">
	대기중
	</c:if>
	<c:if test="${mm.inq_state=='2'}">
	처리중
	</c:if>
	<c:if test="${mm.inq_state=='3'}">
	완료
	</c:if>
	
	</td><td>${mm.inq_count}</td>
	</tr>
</c:forEach>
</table>
<hr>



<div id="content"></div>
</body>
</html>