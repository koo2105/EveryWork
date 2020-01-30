<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>EveryWork</title>
<link rel="stylesheet" type="text/css" href="resources/jsLib/jobStyle.css">
<script src="resources/jsLib/jquery-3.2.1.min.js"></script>
<script src="resources/jsLib/namchulAjax.js"></script>
<style>

</style>
</head>
<body>


<%@ include file="/WEB-INF/views/everyUsing/navBar.jsp" %>





	<header class="header-container">
	<div class="job-menu"><a href="jobMain">채용 공고</a></div>
	<div class="job-menu"><a href="#">내 채용 공고</a></div>
	<div class="job-menu"><a href="#" onclick="filtering()">공고 필터링</a></div>
	
	</header>
	<div class="mb-container">
		<div class="menu-container"> <!-- 메뉴 div -->
		
		<jsp:include page="/WEB-INF/views/jobOpening/miniCalendar.jsp"/>
<%-- 		<%@include file="/WEB-INF/views/miniCalendar.jsp" %> --%>
		</div>
		<div class="body-container" id=calendar-div><!-- 본문 div -->
<%-- 		<jsp:include page="/WEB-INF/views/calendar.jsp"/>  --%>
		<%@include file="/WEB-INF/views/jobOpening/calendar.jsp" %>
		</div>
	</div>
<div id="filtering-container"> <!-- 필터링의 큰 틀 -->
	<div class="filtering-smallcon"><!-- 필터링의 작은 틀 -->
		<div class=filter-name>채용 형태</div> <!-- 필터링의 제목 -->
		<div> <!-- 필터링의 항목들 -->
			<div class="checkbox-div">
			<input type="checkbox">
			<span>항목1</span>
			</div>
			<div class="checkbox-div">
			<input type="checkbox">
			<span>항목2</span>
			</div>
			<div class="checkbox-div">
			<input type="checkbox">
			<span>항목3</span>
			</div>
		</div>
	</div>
	<div class="filtering-smallcon"><!-- 필터링의 작은 틀 -->
		<div class=filter-name>기간 설정</div> <!-- 필터링의 제목 -->
		<div> <!-- 필터링의 항목들 -->
			<div class="checkbox-div">
			<input type="checkbox">
			<span>항목1</span>
			</div>
			<div class="checkbox-div">
			<input type="checkbox">
			<span>항목2</span>
			</div>
			<div class="checkbox-div">
			<input type="checkbox">
			<span>항목3</span>
			</div>
		</div>
	</div>
	<div class="filtering-smallcon"><!-- 필터링의 작은 틀 -->
		<div class=filter-name>직무 선택</div> <!-- 필터링의 제목 -->
		<div> <!-- 필터링의 항목들 -->
			<div class="checkbox-div">
			<input type="checkbox">
			<span>항목1</span>
			</div>
			<div class="checkbox-div">
			<input type="checkbox">
			<span>항목2</span>
			</div>
			<div class="checkbox-div">
			<input type="checkbox">
			<span>항목3</span>
			</div>
		</div>
	</div>
</div>
<div class="jobDetail-div">
<%@include file="/WEB-INF/views/jobOpening/jobDetail.jsp" %>
</div>

</body>
</html>

