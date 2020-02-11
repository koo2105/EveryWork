<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<html>
<head>
<title>Blog</title>
<link rel="stylesheet" type="text/css"	href="resources/jsLib/blogStyle.css">

<style>
</style>
</head>
<body>
	<!-- top nav -->
	<%@ include file="/WEB-INF/views/everyUsing/navBar.jsp"%>



	<div class="mb-container">

		<%@ include file="/WEB-INF/views/everyUsing/menuCategory.jsp"%>

		<div class="blog-content-right">
			<!-- 본문 div -->
			<div class="blog-index-container">
				<!-- 본문 div -->

				<div class="category">
					<div class="category-name">
						<a>EveryWork 활용하기</a>
					</div>
					<div class="posts">
						<c:forEach var="bb1" items="${labList1}"><a class="post"  href="labDetail">
							<div class="post-thumbnail">
								<img src="${bb1.lab_img}" width="200" height="200">
							</div>
							<div class="post-info">
								<div class="title">${bb1.lab_title}
								</div>
								<div class="date-and-count">${bb1.lab_date} | 조회수${bb1.lab_count}</div>
								<div class="description">${bb1.lab_content}</div>
							</div>
						</a> 
						</c:forEach>
					</div>
				</div>

				<div class="category">
					<div class="category-name">
						<a>자소서 잘 쓰는 법</a>
					</div>
					<div class="posts">
						<c:forEach var="bb2" items="${labList2}"><a class="post"  href="labDetail">
							<div class="post-thumbnail">
								<img src="${bb2.lab_img}" width="200" height="200">
							</div>
							<div class="post-info">
								<div class="title">${bb2.lab_title}
								</div>
								<div class="date-and-count">${bb2.lab_date} | 조회수${bb2.lab_count}</div>
								<div class="description">${bb2.lab_content}</div>
							</div>
						</a> 
						</c:forEach>
					</div>
				</div>


				<div class="category">
					<div class="category-name">
						<a>EveryWork 소식</a>
					</div>
					<div class="posts">
							<c:forEach var="bb3" items="${labList3}"><a class="post"  href="labDetail">
							<div class="post-thumbnail">
								<img src="${bb3.lab_img}" width="200" height="200">
							</div>
							<div class="post-info">
								<div class="title">${bb3.lab_title}
								</div>
								<div class="date-and-count">${bb3.lab_date} | 조회수${bb3.lab_count}</div>
								<div class="description">${bb3.lab_content}</div>
							</div>
						</a> 
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
