<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@page import="java.util.Date"%>
<html>
<head>
<title>채용공고</title>
<link rel="stylesheet" type="text/css" href="resources/jsLib/jobStyle.css">
<link rel="stylesheet" type="text/css" href="resources/jsLib/homeStyle.css">
<script src="resources/jsLib/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.9.0/jquery.js"></script>
<script src="resources/jsLib/namchulAjax.js"></script>
<style>
</style>
</head>
<body>


	<%@ include file="/WEB-INF/views/everyUsing/navBar.jsp"%>



	<%-- 

	<header class="header-container">
	<div class="job-menu"><a href="jobMain">채용 공고</a></div>
	<div class="job-menu"><a href="#">내 채용 공고</a></div>
	<div class="job-menu"><a href="#" onclick="filtering()">공고 필터링</a></div>
	
	</header>
	<div class="mb-container">
		<div class="menu-container"> <!-- 메뉴 div -->
		
		<jsp:include page="/WEB-INF/views/jobOpening/miniCalendar.jsp"/>
		<%@include file="/WEB-INF/views/miniCalendar.jsp" %>
		</div>
		<div class="body-container" id=calendar-div><!-- 본문 div -->
		<jsp:include page="/WEB-INF/views/calendar.jsp"/> 
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
 --%>


	<!-- <div class="main-tab"> -->
	<div class="calendar-container ng-scope">
		<div class="recruit-top">
			<div class="calendar-switch">
				<div class="calendar piwik-recruit-calendar active">채용 공고</div>
				<div class="favorite-calendar piwik-my-calendar">내 채용 공고</div>
			</div>

			<div class="calendar-filter">
				<div class="calendar-filter-title">
					공고 필터링
					<!-- <span class="calendar-filter-on-off ng-binding" >OFF</span> -->
				</div>
				<!-- ngRepeat: option in options track by $index -->
				<div class="toggle-calendar-option-buttons ng-scope"
					onclick="caloptionOpen()">
					<span class="ng-binding">채용 형태</span> (<span class="ng-binding">4</span>)

				</div>
				<!-- end ngRepeat: option in options track by $index -->
				<div class="toggle-calendar-option-buttons ng-scope"
					onclick="caloptionOpen()">
					<span class="ng-binding">기간 설정</span> (<span class="ng-binding">3</span>)
				</div>
				<!-- end ngRepeat: option in options track by $index -->
				<div class="toggle-calendar-option-buttons ng-scope"
					onclick="caloptionOpen()">
					<span class="ng-binding">직무 선택</span> (<span class="ng-binding">11</span>)
				</div>
				<!-- end ngRepeat: option in options track by $index -->
				<div class="calendar-option hide">
					<div class="calendar-option-header">
						<img class="description"
							src="resources/img/calendar_option_description.png"> <img
							class="close-button " src="resources/img/x_btn.png"
							onclick="caloptionClose()">
					</div>
					<div class="calendar-option-body">
						<!-- ngRepeat: option in options -->
						<div class="calendar-option-category ng-scope">
							<div>
								<div class="filter-header">
									<label> <input type="checkbox"
										class="filter-header-left ng-pristine ng-untouched ng-valid"
										id="checkall1" checked="checked">
										<div class="filter-head-right">
											<span class="ng-binding">채용 형태</span>
										</div>
									</label>
								</div>
								<div class="body">
									<!-- ngRepeat: index in option.index_arr -->
									<label class="checkbox-container ng-scope"> <input
										type="checkbox" name="chk1" checked="checked"
										class="option-checkbox ng-pristine ng-untouched ng-valid">
										<span class="ng-binding">신입</span>
									</label>
									<!-- end ngRepeat: index in option.index_arr -->
									<label class="checkbox-container ng-scope"> <input
										type="checkbox" name="chk1" checked="checked"
										class="option-checkbox ng-pristine ng-untouched ng-valid">
										<span class="ng-binding">경력</span>
									</label>
									<!-- end ngRepeat: index in option.index_arr -->
									<label class="checkbox-container ng-scope"> <input
										type="checkbox" name="chk1" checked="checked"
										class="option-checkbox ng-pristine ng-untouched ng-valid">
										<span class="ng-binding">인턴</span>
									</label>
									<!-- end ngRepeat: index in option.index_arr -->
									<label class="checkbox-container ng-scope"> <input
										type="checkbox" name="chk1" checked="checked"
										class="option-checkbox ng-pristine ng-untouched ng-valid">
										<span class="ng-binding">계약직</span>
									</label>
									<!-- end ngRepeat: index in option.index_arr -->
								</div>
								<div style="clear: both"></div>
							</div>
						</div>
						<!-- end ngRepeat: option in options -->
						<div class="calendar-option-category ng-scope">
							<div>
								<div class="filter-header">
									<label> <input type="checkbox"
										class="filter-header-left ng-pristine ng-untouched ng-valid"
										id="checkall2" checked="checked">
										<div class="filter-head-right">
											<span class="ng-binding">기간 설정</span>
										</div>
									</label>
								</div>
								<div class="body">
									<!-- ngRepeat: index in option.index_arr -->
									<label class="checkbox-container ng-scope"> <input
										type="checkbox" name="chk2" checked="checked"
										class="option-checkbox ng-pristine ng-untouched ng-valid">
										<span class="ng-binding">시작</span>
									</label>
									<!-- end ngRepeat: index in option.index_arr -->
									<label class="checkbox-container ng-scope"> <input
										type="checkbox" name="chk2" checked="checked"
										class="option-checkbox ng-pristine ng-untouched ng-valid">
										<span class="ng-binding">종료</span>
									</label>
									<!-- end ngRepeat: index in option.index_arr -->
								
								</div>
								<div style="clear: both"></div>
							</div>
						</div>
						<!-- end ngRepeat: option in options -->
						<div class="calendar-option-category ng-scope">
							<div>
								<div class="filter-header">
									<label> <input type="checkbox"
										class="filter-header-left ng-pristine ng-untouched ng-valid "
										id="checkall3" checked="checked">
										<div class="filter-head-right">
											<span class="ng-binding">직무 선택</span>
										</div>
									</label>
								</div>
								<div class="body">
									<!-- ngRepeat: index in option.index_arr -->
									<label class="checkbox-container ng-scope"> <input
										type="checkbox" name="chk3" checked="checked"
										class="option-checkbox ng-pristine ng-untouched ng-valid">
										<span class="ng-binding">경영∙사무</span>
									</label>
									<!-- end ngRepeat: index in option.index_arr -->
									<label class="checkbox-container ng-scope"> <input
										type="checkbox" name="chk3" checked="checked"
										class="option-checkbox ng-pristine ng-untouched ng-valid">
										<span class="ng-binding">마케팅∙무역∙유통</span>
									</label>
									<!-- end ngRepeat: index in option.index_arr -->
									<label class="checkbox-container ng-scope"> <input
										type="checkbox" name="chk3" checked="checked"
										class="option-checkbox ng-pristine ng-untouched ng-valid">
										<span class="ng-binding">영업∙고객상담</span>
									</label>
									<!-- end ngRepeat: index in option.index_arr -->
									<label class="checkbox-container ng-scope"> <input
										type="checkbox" name="chk3" checked="checked"
										class="option-checkbox ng-pristine ng-untouched ng-valid">
										<span class="ng-binding">IT∙인터넷</span>
									</label>
									<!-- end ngRepeat: index in option.index_arr -->
									<label class="checkbox-container ng-scope"> <input
										type="checkbox" name="chk3" checked="checked"
										class="option-checkbox ng-pristine ng-untouched ng-valid">
										<span class="ng-binding">연구개발∙설계</span>
									</label>
									<!-- end ngRepeat: index in option.index_arr -->
									<label class="checkbox-container ng-scope"> <input
										type="checkbox" name="chk3" checked="checked"
										class="option-checkbox ng-pristine ng-untouched ng-valid">
										<span class="ng-binding">생산∙제조</span>
									</label>
									<!-- end ngRepeat: index in option.index_arr -->
									<label class="checkbox-container ng-scope"> <input
										type="checkbox" name="chk3" checked="checked"
										class="option-checkbox ng-pristine ng-untouched ng-valid">
										<span class="ng-binding">전문∙특수직</span>
									</label>
									<!-- end ngRepeat: index in option.index_arr -->
									<label class="checkbox-container ng-scope"> <input
										type="checkbox" name="chk3" checked="checked"
										class="option-checkbox ng-pristine ng-untouched ng-valid">
										<span class="ng-binding">디자인</span>
									</label>
									<!-- end ngRepeat: index in option.index_arr -->
									<label class="checkbox-container ng-scope"> <input
										type="checkbox" name="chk3" checked="checked"
										class="option-checkbox ng-pristine ng-untouched ng-valid">
										<span class="ng-binding">미디어</span>
									</label>
									<!-- end ngRepeat: index in option.index_arr -->
									<label class="checkbox-container ng-scope"> <input
										type="checkbox" name="chk3" checked="checked"
										class="option-checkbox ng-pristine ng-untouched ng-valid">
										<span class="ng-binding">서비스</span>
									</label>
									<!-- end ngRepeat: index in option.index_arr -->
									<label class="checkbox-container ng-scope"> <input
										type="checkbox" name="chk3" checked="checked"
										class="option-checkbox ng-pristine ng-untouched ng-valid">
										<span class="ng-binding">건설</span>
									</label>
									<!-- end ngRepeat: index in option.index_arr -->
								</div>
								<div style="clear: both"></div>
							</div>
						</div>
						<!-- end ngRepeat: option in options -->
					</div>
				</div>
			</div>
		</div>

		<div class="recruit-bottom">

			<div class="calendar-right-head"
				style="width: calc(( 100% - 180px)- 17px);">
				<div class="nav-search-bar">


	
					<div class="calendar-nav">
						<a href="jobMain?month=${jc.month-1}&year=${jc.year}">&lt;</a><span
							class="prev">&nbsp;</span> <span class="current ng-binding">${jc.year}.${jc.month}</span>
						<span class="next">&nbsp;</span><a
							href="jobMain?month=${jc.month+1}&year=${jc.year}">&gt;</a>
					</div>

					<div class="search">

						<img src="resources/img/search-01.png"> <input type="text"
							id="employment_search_word" placeholder="기업명을 검색하세요.">
					</div>


					

				</div>
				<div class="dayname-container">
					<!-- ngRepeat: dayname in daynames -->
					<div class="calendar-cell ng-scope">
						<div class="day-label name-of-days ng-binding">SUN</div>
					</div>
					<!-- end ngRepeat: dayname in daynames -->
					<!-- ngRepeat: dayname in daynames -->
					<div class="calendar-cell ng-scope">
						<div class="day-label name-of-days ng-binding">MON</div>
					</div>
					<!-- end ngRepeat: dayname in daynames -->
					<!-- ngRepeat: dayname in daynames -->
					<div class="calendar-cell ng-scope">
						<div class="day-label name-of-days ng-binding">TUE</div>
					</div>
					<!-- end ngRepeat: dayname in daynames -->
					<!-- ngRepeat: dayname in daynames -->
					<div class="calendar-cell ng-scope">
						<div class="day-label name-of-days ng-binding">WED</div>
					</div>
					<!-- end ngRepeat: dayname in daynames -->
					<!-- ngRepeat: dayname in daynames -->
					<div class="calendar-cell ng-scope">
						<div class="day-label name-of-days ng-binding">THR</div>
					</div>
					<!-- end ngRepeat: dayname in daynames -->
					<!-- ngRepeat: dayname in daynames -->
					<div class="calendar-cell ng-scope">
						<div class="day-label name-of-days ng-binding">FRI</div>
					</div>
					<!-- end ngRepeat: dayname in daynames -->
					<!-- ngRepeat: dayname in daynames -->
					<div class="calendar-cell ng-scope">
						<div class="day-label name-of-days ng-binding">SAT</div>
					</div>
					<!-- end ngRepeat: dayname in daynames -->

				</div>

				<!-- 					<div class="top-calendar-week">
						ngRepeat: i in week_arr
						<div class="calendar-cell ng-scope" >
							<div class="day-label day-0" >날짜</div>
						</div>
						end ngRepeat: i in week_arr
					</div> -->
			</div>
			<div class="calendar-right">
				<div class="calendar body employment-mode">

					<!-- ngRepeat: week in weeks -->
					<div class="calendar-week ng-scope ng-isolate-scope week-0">

						<!-- 여기부터 -->
						<!-- ngRepeat: day in weekDays($index) -->
						<c:set var="newLine" value="0" />
						<c:set var="startCheck" value="1" />
						<div>
							<c:forEach var="j" begin="1" end="${jc.start-1}">
								<c:if test="${newLine==7}">
									<div></div>
									<c:set var="newLine" value="0" />
								</c:if>
								<div class="calendar-cell ng-scope">
									<div class="day-label ng-binding">-</div>
									<div class="day-content" day="20200126">
										<div day="20200126" index="0" employment_id="35758"
											class="calendar-item employment divi-1 divi-2 end duty-2 duty-0 duty-1 duty-6 duty-4 duty-5 no-favorite">
											<div class="company">


												<div class="company-name">
													<span></span>
												</div>
											</div>

											<div class="favorite"></div>
										</div>
									</div>
								</div>
								<c:set var="newLine" value="${newLine+1}" />
								<c:set var="startCheck" value="${startCheck+1}" />
							</c:forEach>
							<c:forEach var="i" begin="1" end="${jc.endDay}">
								<c:if test="${newLine==7}">
										<div></div>
									<c:set var="newLine" value="0" />
								</c:if>
								<div class="calendar-cell ng-scope">
									<div class="day-label ng-binding">${i}</div>
									<div class="day-content" day="20200126">
										<div day="20200126" index="0" employment_id="35758"
											class="calendar-item employment divi-1 divi-2 end duty-2 duty-0 duty-1 duty-6 duty-4 duty-5 no-favorite">


											<c:forEach var="jl" items="${joblist}" varStatus="jlvs">

													<c:if test="${(fn:substring(jl.jobopen_sdate,8,10))==i || (fn:substring(jl.jobopen_edate,8,10))==i}">
													<div class="company">
														<c:if test="${(fn:substring(jl.jobopen_sdate,8,10))==i}">
															<div class="calendar-label start">시</div>
														</c:if>
														<c:if test="${(fn:substring(jl.jobopen_edate,8,10))==i}">
															<div class="calendar-label end">끝</div>
														</c:if>
														<div class="company-name">
															<span onclick="jDetailOpen('${jl.jobopen_id}')">${jl.jobopen_company}</span>
														</div>
													</div>

													<div class="favorite">
														<img class="item-favorite"
															src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
														<img class="item-no-favorite"
															src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
													</div>
												</c:if>

											</c:forEach>


										</div>
									</div>
								</div>
								<c:set var="newLine" value="${newLine+1}" />
							</c:forEach>

							<c:forEach var="j" begin="${newLine}" end="6">

								<div class="calendar-cell ng-scope">
									<div class="day-label ng-binding">-</div>
									<div class="day-content" day="20200126">
										<div day="20200126" index="0" employment_id="35758"
											class="calendar-item employment divi-1 divi-2 end duty-2 duty-0 duty-1 duty-6 duty-4 duty-5 no-favorite">
											<div class="company">


												<div class="company-name">
													<span></span>
												</div>
											</div>

											<div class="favorite"></div>
										</div>
									</div>
								</div>
								<c:set var="newLine" value="${newLine+1}" />
							</c:forEach>
						</div>
						<!-- end ngRepeat: day in weekDays($index) -->
					</div>
					<!-- end ngRepeat: week in weeks -->

					<div class="request-recruit">
						<img
							src="/assets/recruit/request_recruit-c3a4aebaf7777803190981cacf943eeaebbb7d2b7d1737893f66811243fa086a.png">
					</div>
				</div>
			</div>


			<!-- ngIf: showLeftCalendar -->
			<!-- 여기잠깐 없애봄 <div class="calendar-left ng-scope" >
					<div class="small-calendar">
						<div class="small-calendar-title">
							<i class="prev material-icons">chevron_left</i> <span
								class="current ng-binding">2020.02</span> 
								<i class="next material-icons">chevron_right</i>
						</div>

						<div class="dayname-container">
							ngRepeat: dayname in ::kor_daynames
							<div class="day-label name-of-days ng-binding ng-scope"
								ng-bind="::dayname" ng-repeat="dayname in ::kor_daynames">일</div>
							end ngRepeat: dayname in ::kor_daynames
							<div class="day-label name-of-days ng-binding ng-scope"
								ng-bind="::dayname" ng-repeat="dayname in ::kor_daynames">월</div>
							end ngRepeat: dayname in ::kor_daynames
							<div class="day-label name-of-days ng-binding ng-scope"
								ng-bind="::dayname" ng-repeat="dayname in ::kor_daynames">화</div>
							end ngRepeat: dayname in ::kor_daynames
							<div class="day-label name-of-days ng-binding ng-scope"
								ng-bind="::dayname" ng-repeat="dayname in ::kor_daynames">수</div>
							end ngRepeat: dayname in ::kor_daynames
							<div class="day-label name-of-days ng-binding ng-scope"
								ng-bind="::dayname" ng-repeat="dayname in ::kor_daynames">목</div>
							end ngRepeat: dayname in ::kor_daynames
							<div class="day-label name-of-days ng-binding ng-scope"
								ng-bind="::dayname" ng-repeat="dayname in ::kor_daynames">금</div>
							end ngRepeat: dayname in ::kor_daynames
							<div class="day-label name-of-days ng-binding ng-scope"
								ng-bind="::dayname" ng-repeat="dayname in ::kor_daynames">토</div>
							end ngRepeat: dayname in ::kor_daynames
							ngRepeat: day in miniCalendar.days
							<div class="day-label days ng-binding ng-scope">26</div>
							end ngRepeat: day in miniCalendar.days
							<div class="day-label days ng-binding ng-scope">27</div>
							end ngRepeat: day in miniCalendar.days
							<div class="day-label days ng-binding ng-scope">28</div>
							end ngRepeat: day in miniCalendar.days
							<div class="day-label days ng-binding ng-scope">29</div>
							end ngRepeat: day in miniCalendar.days
							<div class="day-label days ng-binding ng-scope">30</div>
							end ngRepeat: day in miniCalendar.days
							<div class="day-label days ng-binding ng-scope">31</div>
							end ngRepeat: day in miniCalendar.days
							
						</div>
					</div>

					<div class="gg-items">
						ngRepeat: gg in ggs
					</div>


				</div> -->
			<!-- end ngIf: showLeftCalendar -->
		</div>
		<!-- ngIf: recruitSlide.isShow -->
	</div>
	<!-- 	</div>
 -->
	<div class="jobDetail-div"></div>

</body>
</html>

