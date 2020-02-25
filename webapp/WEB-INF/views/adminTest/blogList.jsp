<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** 자소서 연구소 관리 **</title>
<link rel="stylesheet" type="text/css" href="resources/jsLib/admin.css">
<script src="resources/jsLib/jquery-3.2.1.min.js"></script>
<script src="resources/jsLib/namchulAjax.js"></script>
<script>
	function binfoDetail(lab_id) {
		$.ajax({
			type : 'post',
			data : {
				lab_id : lab_id
			},
			url : 'binfoDetail',
			success : function(result) {
				$('#adminArea').html('');
				$('#adminArea').html(result);
			}

		});
	};
	
	$(function() {
		$('#searchBtn').on(
				"click",
				function(event) {
					self.location = "ajlist"
							+ '${pageMaker.makeQuery(1)}' + "&searchType="
							+ $("select option:selected").val() + "&keyword="
							+ $('#keywordInput').val();
				}); // on
	}); // ready
</script>
<style>
.result {
	color: blue;
}

#content {
	display: none;
	/* jQuery 메서드 => show() / hide() 적용됨 */
	width: 300px;
	height: 100px;
	background: MintCream;
	z-index: 100;
	position: absolute;
}
</style>
</head>
<body>
	<h2>** 자소서 연구소 관리 **</h2>

	<table width=800>
		<tr class="admin-title">
			<td>글 번호</td>
			<td>제목</td>
			<td>카테고리</td>
			<td>등록일</td>
			<td>ID</td>
		</tr>
		<c:forEach var="mm" items="${Bloglist}" varStatus="vs">
			<tr height=30 align="center">

				<td><a href="#" onclick="binfoDetail('${mm.lab_id}')">${mm.lab_id}</a></td>

				<td align="left">${mm.lab_title}</td>
				<td align="left"><c:if test="${mm.lab_cat=='1'}">EveryWork활용하기</c:if>
					<c:if test="${mm.lab_cat=='2'}">자소서 잘 쓰는 법</c:if> <c:if
						test="${mm.lab_cat=='3'}">EveryWork 소식</c:if></td>
				<td>${mm.lab_date}</td>
				<td>${mm.admin_id}</td>
			</tr>
		</c:forEach>
	</table>
	<hr>
	<a href="#" class="button" onclick="bloginsertf()">글 등록</a>
	<br>



	<div id="content"></div>

	<div id="searchBar" class=""
		style="padding-left: 0px; padding-right: 0px;">
		<div class="  " style="padding-right: 0px; padding-left: 0px;">
			<div class="  " style="padding-right: 0px; padding-left: 0px;">
				<select name="searchType" class="" style="float: right;">
					<option value="n"
						<c:out value="${pageMaker.cri.searchType == null?'selected':''}"/>>
						---</option>
					<option value="t"
						<c:out value="${pageMaker.cri.searchType eq 't'?'selected':''}"/>>
						제목</option>
					<option value="c"
						<c:out value="${pageMaker.cri.searchType eq 'c'?'selected':''}"/>>
						내용</option>
					<option value="tc"
						<c:out value="${pageMaker.cri.searchType eq 'tc'?'selected':''}"/>>
						제목과 내용</option>
				</select>
			</div>
			<div class="">
				<input type="text" name='keyword' id="keywordInput" class=" "
					value='${pageMaker.cri.keyword}'>
			</div>
			<div class="" style="padding-right: 0px; padding-left: 0px;">
				<a class="" id="searchBtn">Search</a>
			</div>
		</div>
	</div>

	<!--  PagingCri Code 추가   -->

	<div class="container" style="text-align: center;">
		<ul class="pagination">
			<c:if test="${pageMaker.prev}">
				<li><a href="ajlist${pageMaker.makeSearch(1)}"
					style="color: black;">First</a></li>
				<li><a
					href="ajlist${pageMaker.makeSearch(pageMaker.startPage - 1)}"
					style="color: black;">이전</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}"
				var="idx">
				<c:choose>
					<c:when test="${pageMaker.cri.page==idx}">
						<li class="active"><a
							href="ajlist${pageMaker.makeSearch(idx)}"
							style="background-color: Crimson; border-color: Crimson;">${idx}</a></li>
					</c:when>
					<c:otherwise>
						<li><a href="ajlist${pageMaker.makeSearch(idx)}"
							style="color: black;">${idx}</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<li><a
					href="ajlist${pageMaker.makeSearch(pageMaker.endPage + 1)}"
					style="color: black;">다음</a></li>
				<li><a href="ajlist${pageMaker.makeSearch(pageMaker.lastPage)}"
					style="color: black;">Last</a></li>
			</c:if>
		</ul>
	</div>
</body>
</html>