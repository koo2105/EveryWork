<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<html>
<head>
<title>자소서연구소</title>
<link rel="stylesheet" type="text/css" href="resources/jsLib/blogStyle.css">
<link rel="stylesheet" type="text/css" href="resources/jsLib/homeStyle.css">

<style>
</style>
</head>
<body>
	<!-- top nav -->
	<%@ include file="/WEB-INF/views/everyUsing/navBar.jsp"%>



	<!-- blog-content-container -->
	<div class="blog-content-container">
		<!-- <div class="blog-content-left">
			<div class="blog-categories-container">
				<div class="title">
					<a href="/blog"> Category </a>
				</div>
				<div class="categories">
					<a class="category true blog-All" href="blog"> 전체보기 </a> <a
						class="category " href="resumelist?lab_cat=1"> EveryWork 활용하기 </a> <a
						class="category " href="resumelist?lab_cat=2"> 자소서 잘 쓰는 법 </a> <a
						class="category " href="resumelist?lab_cat=3"> EveryWork 소식 </a>

				</div>
			</div>

		</div> -->
		
	<%@ include file="/WEB-INF/views/everyUsing/menuCategory.jsp"%>
		
		
		<div class="blog-content-right">
			<div class="blog-index-container">

				<div class="category">
					<div class="category-name">
						<a>EveryWork 활용하기</a>
					</div>
					<div class="posts">
						<c:forEach var="bb1" items="${labList1}">
							<a class="post" href="labDetail?lab_id=${bb1.lab_id}">

								<div class="post-thumbnail">
									<img src="${bb1.lab_img}">
								</div>
								<div class="post-info">
									<div class="title">${bb1.lab_title}</div>

									<div class="date-and-count">${bb1.lab_date} |
										조회수${bb1.lab_count}</div>
									<div class="description">${bb1.lab_content}</div>
								</div>
							</a>
						</c:forEach>

					</div>
					>
				</div>
				<!--END EveryWork 활용하기 -->

				<div class="category">
					<div class="category-name">
						<a>자소서 잘 쓰는 법</a>
					</div>
					<div class="posts">
						<c:forEach var="bb2" items="${labList2}">
							<a class="post" href="labDetail?lab_id=${bb2.lab_id}">
								<div class="post-thumbnail">
									<img src="${bb2.lab_img}">
								</div>
								<div class="post-info">
									<div class="title">${bb2.lab_title}</div>

									<div class="date-and-count">${bb2.lab_date} |
										조회수${bb2.lab_count}</div>
									<div class="description">${bb2.lab_content}</div>
								</div>
							</a>
						</c:forEach>
					</div>
				</div>
				<!-- END 자소서 잘 쓰는 법 -->

				<div class="category">
					<div class="category-name">
						<a>EveryWork 소식</a>
					</div>
					<div class="posts">
						<c:forEach var="bb3" items="${labList3}">
							<a class="post" href="labDetail?lab_id=${bb3.lab_id}">
								<div class="post-thumbnail">
									<img src="${bb3.lab_img}">
								</div>
								<div class="post-info">
									<div class="title">${bb3.lab_title}</div>

									<div class="date-and-count">${bb3.lab_date} |
										조회수${bb3.lab_count}</div>
									<div class="description">${bb3.lab_content}</div>
								</div>
							</a>
						</c:forEach>
					</div>
				</div>
				<!-- END EveryWork 소식 -->
			</div>

		</div>
	</div>















</body>
</html>
