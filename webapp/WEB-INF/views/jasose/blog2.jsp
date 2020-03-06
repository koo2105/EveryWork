<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<html>
<head>
<title>자소서연구소</title>
<link rel="stylesheet" type="text/css"	href="resources/jsLib/blogStyle.css">
<link rel="stylesheet" type="text/css" href="resources/jsLib/homeStyle.css">

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
						<c:forEach var="bb1" items="${labList1}"><a class="post"  href="labDetail?lab_id=${bb1.lab_id}">
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
						<c:forEach var="bb2" items="${labList2}">
						<a class="post"  href="labDetail?lab_id=${bb2.lab_id}">
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
							<c:forEach var="bb3" items="${labList3}">
							<a class="post"  href="labDetail?lab_id=${bb3.lab_id}">
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



<div class="blog-content-right">
			<div class="blog-category-container">

				<div class="category-name">
					<c:if test="${param.lab_cat=='1'}">EveryWork활용하기</c:if>
					<c:if test="${param.lab_cat=='2'}">자소서 잘 쓰는 법</c:if>
					<c:if test="${param.lab_cat=='3'}">EveryWork 소식</c:if>
				</div>
				<div class="posts">
					<c:forEach var="rr" items="${resumeList}">
						<a class="post" href="labDetail?lab_id=${rr.lab_id}">
							<div class="post-thumbnail">
								<img src="${rr.lab_img}" width="150" height="150">
							</div>
							<div class="post-info">
								<div class="title">${rr.lab_title}</div>

								<div class="date-and-count">${rr.lab_date}|
									조회수${rr.lab_count}</div>

								<div class="description">${rr.lab_content}</div>


							</div>
						</a>
					</c:forEach>
				</div>
				<div class="text-center"></div>
			</div>

		</div>








		<%-- <div class="blog-content-right">
			<div class="blog-category-container">

				<div class="category-name">
					<c:if test="${param.lab_cat=='1'}">EveryWork활용하기</c:if>
					<c:if test="${param.lab_cat=='2'}">자소서 잘 쓰는 법</c:if>
					<c:if test="${param.lab_cat=='3'}">EveryWork 소식</c:if>
				</div>
				<div class="posts">
					<c:forEach var="rr" items="${resumeList}">
						<a class="post" href="labDetail?lab_id=${rr.lab_id}">
							<div class="post-thumbnail">
								<img src="${rr.lab_img}" width="150" height="150">
							</div>
							<div class="post-info">
								<div class="title">${rr.lab_title}</div>

								<div class="date-and-count">${rr.lab_date}|
									조회수${rr.lab_count}</div>

								<div class="description">${rr.lab_content}</div>


							</div>
						</a>
					</c:forEach>
				</div>
				<div class="text-center"></div>
			</div>

		</div>
	</div> --%>



   <div class="mb-container">
	
	<%@ include file="/WEB-INF/views/everyUsing/menuCategory.jsp"%>
      
      <div class="blog-content-right">
    	<div class="blog-post-container">
  	<div class="category-name">
  	<c:if test="${sl.lab_cat=='1'}">
  	EveryWork활용하기
  	</c:if>
  	<c:if test="${sl.lab_cat=='2'}">
	자소서 잘 쓰는 법
  	</c:if>
  	<c:if test="${sl.lab_cat=='3'}">
  	EveryWork 소식
  	</c:if>
 	</div>
  	<div class="post">
    <div class="title">
     ${sl.lab_title}
    </div>
    <div class="info">
      <div class="date">
      ${sl.lab_date}

      </div>
      <div class="count">
      	조회수 :   ${sl.lab_count}

      </div>
    </div>
	
	<div class="content">
    ${sl.lab_content}
    </div>
    </div>
    </div>
    
   
	<script type="text/javascript" charset="utf-8">
  	var category_id = 2 -0;
	</script>

  </div>
  </div>
 	






</body>
</html>
