<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** 회원 관리 **</title>
<link rel="stylesheet" type="text/css" href="resources/jsLib/admin.css">
<script src="resources/jsLib/jquery-3.2.1.min.js"></script>
<script>
function aminfoDetail(emem_id) {
	$.ajax({
		type : 'post',
		data : {
			emem_id : emem_id
		},
		url : 'minfo',
		success : function(result) {
			$('#adminArea').html('');
			$('#adminArea').html(result);
		}

	});
};
</script>
</head>
<body>
<h2>** 회원 관리 **</h2>
<table width=800>
<tr class="admin-title">
	<td>I D</td><td>Name</td>
	<td>PhoneNum</td><td>BirthDay</td><td>Gender</td>

</tr>
<c:forEach var="mm" items="${List}">
	<tr align="center" height=30>
	
	<td><a href="#" onclick="aminfoDetail('${mm.emem_id}')" >${mm.emem_id}</a></td>
	<%-- <td><a href="minfo" onclick="aidList('${mm.emem_id}')" class="textLink" >${mm.emem_id}</a></td> --%>
	
	<td>${mm.emem_name}</td>
	<td>${mm.emem_pnum}</td>
	<td>${mm.emem_birthd}</td>
	<td>${mm.emem_gender}</td>
	</tr>
</c:forEach>
</table>
<hr>

</body>
</html>