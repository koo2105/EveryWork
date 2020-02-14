<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>adminHome</title>

<script src="resources/jsLib/jquery-3.2.1.min.js"></script>
<script src="resources/jsLib/namchulAjax.js"></script>

<c:if test="${Success=='SS'}">
	<script>
		alert('삭제되었습니다.');
	</script>
</c:if>
<c:if test="${Success=='XX'}">
	<script>
		alert('삭제 실패.');
	</script>
</c:if>
<script>
	$(function() {
		$('#amlist').click(function() {
			$.ajax({
				type : 'Get',
				url : 'amlist',
				success : function(result) {
					$('#adminArea').html(result);
				}
			});
		});

		$('#ablist').click(function() {
			$.ajax({
				type : 'Get',
				url : 'ablist',
				success : function(result) {
					$('#adminArea').html(result);
				}
			});
		});

		$('#anlist').click(function() {
			$.ajax({
				type : 'Get',
				url : 'anlist',
				success : function(result) {
					$('#adminArea').html(result);
				}
			});
		});

		$('#ajlist').click(function() {
			$.ajax({
				type : 'Get',
				url : 'ajlist',
				success : function(result) {
					$('#adminArea').html(result);
				}
			});
		});
		$('#aminfoDetail').click(function() {
			$.ajax({
				type : 'Get',
				url : 'minfo',
				success : function(result) {
					$('#adminArea').html(result);
				}
			});
		});
			
			
		

	});// ready

	
</script>
<style>
div {
	display: block;
}

.blog-index-container .category .posts .post .post-info .description {
	font-size: 13px;
	color: #555;
	white-space: pre-wrap;
	overflow: auto;
}

.blog-index-container .category .posts .post .post-info .date-and-count
	{
	font-size: 11px;
	color: #999;
	margin: 5px 0 15px;
}

.blog-index-container .category .posts .post {
	display: flex;
	padding: 25px 0;
	width: 385px;
	height: 200px;
	text-decoration: none;
}

.blog-index-container .category .posts {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	width: 800px;
	border-bottom: 3px solid #ddd;
	margin-bottom: 30px;
	margin-top: 15px;
}

.blog-index-container {
	padding: 65px 35px;
	height: 100%;
	overflow-y: auto;
}

.menu-container {
	background-color: white;
	width: 250px;
	height: 100%;
	float: left;
	text-align: center; /* 디브 속 내용 가운데정렬 */
	box-sizing: border-box;
	cursor: pointer;
}

.blog-content-right {
	background-color: white;
	color: black;
	width: 1670px;
	height: 100%;
	float: left;
}

.mb-container {
	box-sizing: border-box;
}

.menu-container li {
	list-style: none;
	text-align: left;
	line-height: 1.42857143;
	box-sizing: border-box;
}

.blog-index-container .category .posts .post .post-info {
	width: calc(100% - 150px);
	padding-left: 20px;
	max-height: 100%;
	overflow-y: hidden;
}

.title {
	font-size: 15px;
	font-weight: bold;
	border-bottom: 2px solid #ddd;
	padding-bottom: 15px;
	box-sizing: border-box;
}

.category-name {
	font-size: 15px;
	color: #ff6813;
	font-weight: bold;
}
</style>
</head>
<body>
	<%@ include file="/WEB-INF/views/everyUsing/adminNavbar.jsp"%>

	<div class="mb-container">
		<div class="menu-container">
			<!-- 메뉴 div -->
			<div class="title">
				<h3>Category</h3>
			</div>
			<ul>
				<li><span id="amlist">회원 관리</span></li>
				<br>
				<br>
				<li><span id="ablist">채용공고 관리</span></li>
				<br>
				<br>
				<li><span id="anlist">문의 관리</span></li>
				<br>
				<br>
				<li><span id="ajlist">자소서연구소 관리</span></li>
				<br>
				<br>
			</ul>
		</div>
		<div class="blog-content-right">
			<!-- 본문 div -->
			<div class="blog-index-container" id="adminArea">
				<!-- 본문 div -->

			</div>
		</div>
	</div>
</body>
</html>
