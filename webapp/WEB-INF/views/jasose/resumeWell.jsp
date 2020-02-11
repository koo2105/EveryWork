<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>EveryWork</title>
<link rel="stylesheet" type="text/css" href="resources/jsLib/blogStyle.css">
<style>


</style>
</head>
<body>
 <!-- top nav -->
	<!-- top nav -->
	<%@ include file="/WEB-INF/views/everyUsing/navBar.jsp"%>



	<div class="mb-container">
	<%@ include file="/WEB-INF/views/everyUsing/menuCategory.jsp"%>


		<div class="blog-content-right">
			<div class="blog-category-container">

				<div class="category-name">
<c:if test="${param.lab_cat=='1'}">EveryWork활용하기</c:if>
<c:if test="${param.lab_cat=='2'}">자소서 잘 쓰는 법</c:if>
<c:if test="${param.lab_cat=='3'}">EveryWork 소식</c:if>
</div>
				<div class="posts">
				<c:forEach var="rr" items="${resumeList}">
					<a class="post"  href="labDetail">
						<div class="post-thumbnail">
							<img src="${rr.lab_img}" width="150" height="150">
						</div>
						<div class="post-info">
							<div class="title">${rr.lab_title}</div>

							<div class="date-and-count">${rr.lab_date} | 조회수${rr.lab_count}</div>

							<div class="description">${rr.lab_content}</div>


						</div>
					</a> 
			</c:forEach>			
				</div>
				<div class="text-center"></div>
			</div>

		</div>
	</div>



</body>
</html>

