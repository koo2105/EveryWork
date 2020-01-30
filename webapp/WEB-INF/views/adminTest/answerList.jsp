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
	<td>Seq</td><td>Title</td><td>ID</td>
	<td>RegDate</td><td>State</td>
</tr>
<c:forEach var="mm" items="${Banana}" varStatus="vs">
	<tr height=30 align="center">
	 <!-- jQuery 를 이용해서 값전달 Test -->
	 <td class="cq textLink" id="seq${vs.index}">${mm.seq}</td>
		<td align="left">
		 <c:if test="${mm.indent>0}">
   			<c:forEach begin="1" end="${mm.indent}">
   			<span>&nbsp;&nbsp;</span>
  			</c:forEach>
   			<span style="color:red">re..</span>
   			</c:if>
   			
		<!-- detail 에서 countUp(조회수 증가) 하는경우 -->
		<c:if test="${loginID!=mm.id}">
			<%-- <a href="#" onclick="axBDetail(${mm.seq},'C')">${mm.title}</a> --%>
			<a href="javascript:;" onclick="axBDetailJson(${mm.seq},'C','${vs.index}')" class="ct textLink">${mm.title}</a>
		</c:if>
		<!-- <a href="#"            .... scroll 위치 이동 
			 <a href="javascript:;" .... 사용하면 해결         -->
			 
		<!-- detail 에서 countUp(조회수 증가) 안하는경우 -->
		<c:if test="${loginID==mm.id}">
			<%-- <a href="javascript:;" onclick="axBDetail(${mm.seq},'L')">${mm.title}</a> --%>
			<a href="#" onclick="axBDetailJson(${mm.seq},'L','${vs.index}')" class="ct textLink">${mm.title}</a>
		</c:if>
	</td>
	<td>${mm.id}</td><td>${mm.regdate}</td><td>${mm.state}</td>
	</tr>
	<tr><td></td>
		<td colspan="4"><span id='result${vs.index}' class=result></span>
	</td></tr>
</c:forEach>
</table>
<hr>

<c:if test="${loginID!=null}">
	<a href="binsertf">[새글등록]</a>&nbsp;
</c:if>

<div id="content"></div>
</body>
</html>