<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>EveryWork</title>
<link rel="stylesheet" type="text/css"
	href="resources/jsLib/jobStyle.css">
<script src="resources/jsLib/jquery-3.2.1.min.js"></script>
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


	<div class="main-tab">
		<div class="calendar-container ng-scope">
			<div class="fullpage-loading ng-hide" >
				<img
					src="/assets/icon/loading-da938915a6cd0327b3a21a8488c54c975aa77c658751b807d6600b1c9af53cde.gif"
					alt="로딩 중">
			</div>

			<div class="recruit-top">
				<div class="calendar-switch">
					<div class="calendar piwik-recruit-calendar active" >채용 공고</div>
					<div class="favorite-calendar piwik-my-calendar" >내 채용 공고</div>
				</div>

				<div class="calendar-filter">
					<div class="calendar-filter-title" >
						공고 필터링 <span class="calendar-filter-on-off ng-binding" >OFF</span>
					</div>
					<!-- ngRepeat: option in options track by $index -->
					<div class="toggle-calendar-option-buttons ng-scope" >
						<span  class="ng-binding">채용 형태</span> (<span
							 class="ng-binding">4</span>) <span
							class="caret"></span>
					</div>
					<!-- end ngRepeat: option in options track by $index -->
					<div class="toggle-calendar-option-buttons ng-scope" >
						<span  class="ng-binding">기간 설정</span> (<span
							 class="ng-binding">3</span>) <span
							class="caret"></span>
					</div>
					<!-- end ngRepeat: option in options track by $index -->
					<div class="toggle-calendar-option-buttons ng-scope" >
						<span  class="ng-binding">직무 선택</span> (<span
							  class="ng-binding">11</span>) <span
							class="caret"></span>
					</div>
					<!-- end ngRepeat: option in options track by $index -->
					<div class="calendar-option hide">
						<div class="calendar-option-header">
							<img class="description"
								src="/assets/recruit/calendar_option_description-49a7e15f569d7b8bfff8c6171b266167b7a831f1f3633ef60d5b83d5856bc710.png">
							<img class="close-button"
								src="/assets/icon/ic_close_24px-6d4ccf520d400755057a1739a66c0feda3c98bbc34e8e7f79afa630b2e43f87e.svg"
								 >
						</div>
						<div class="calendar-option-body">
							<!-- ngRepeat: option in options -->
							<div class="calendar-option-category ng-scope" >
								<div>
									<div class="filter-header">
										<label> <input type="checkbox"
											class="filter-header-left ng-pristine ng-untouched ng-valid" >
											<div class="filter-head-right">
												<span class="ng-binding">채용 형태</span>
											</div>
										</label>
									</div>
									<div class="body">
										<!-- ngRepeat: index in option.index_arr -->
										<label class="checkbox-container ng-scope" > <input
											type="checkbox"
											class="option-checkbox ng-pristine ng-untouched ng-valid" >
											<span  class="ng-binding">신입</span>
										</label>
										<!-- end ngRepeat: index in option.index_arr -->
										<label class="checkbox-container ng-scope" > <input
											type="checkbox"
											class="option-checkbox ng-pristine ng-untouched ng-valid" >
											<span class="ng-binding">경력</span>
										</label>
										<!-- end ngRepeat: index in option.index_arr -->
										<label class="checkbox-container ng-scope" > <input
											type="checkbox"
											class="option-checkbox ng-pristine ng-untouched ng-valid" >
											<span class="ng-binding">인턴</span>
										</label>
										<!-- end ngRepeat: index in option.index_arr -->
										<label class="checkbox-container ng-scope" > <input
											type="checkbox"
											class="option-checkbox ng-pristine ng-untouched ng-valid" >
											<span class="ng-binding">계약직</span>
										</label>
										<!-- end ngRepeat: index in option.index_arr -->
									</div>
									<div style="clear: both"></div>
								</div>
							</div>
							<!-- end ngRepeat: option in options -->
							<div class="calendar-option-category ng-scope" >
								<div>
									<div class="filter-header">
										<label> <input type="checkbox"
											class="filter-header-left ng-pristine ng-untouched ng-valid"  >
											<div class="filter-head-right">
												<span class="ng-binding">기간 설정</span>
											</div>
										</label>
									</div>
									<div class="body">
										<!-- ngRepeat: index in option.index_arr -->
										<label class="checkbox-container ng-scope" > <input
											type="checkbox"
											class="option-checkbox ng-pristine ng-untouched ng-valid" >
											<span  class="ng-binding">시작</span>
										</label>
										<!-- end ngRepeat: index in option.index_arr -->
										<label class="checkbox-container ng-scope" > <input
											type="checkbox"
											class="option-checkbox ng-pristine ng-untouched ng-valid" >
											<span class="ng-binding">종료</span>
										</label>
										<!-- end ngRepeat: index in option.index_arr -->
										<label class="checkbox-container ng-scope" > <input
											type="checkbox"
											class="option-checkbox ng-pristine ng-untouched ng-valid" >
											<span  class="ng-binding">수시채용</span>
										</label>
										<!-- end ngRepeat: index in option.index_arr -->
									</div>
									<div style="clear: both"></div>
								</div>
							</div>
							<!-- end ngRepeat: option in options -->
							<div class="calendar-option-category ng-scope" >
								<div>
									<div class="filter-header">
										<label> <input type="checkbox"
											class="filter-header-left ng-pristine ng-untouched ng-valid" >
											<div class="filter-head-right">
												<span class="ng-binding">직무 선택</span>
											</div>
										</label>
									</div>
									<div  class="body">
										<!-- ngRepeat: index in option.index_arr -->
										<label class="checkbox-container ng-scope" > <input
											type="checkbox"
											class="option-checkbox ng-pristine ng-untouched ng-valid" >
											<span class="ng-binding">경영∙사무</span>
										</label>
										<!-- end ngRepeat: index in option.index_arr -->
										<label class="checkbox-container ng-scope" > <input
											type="checkbox"
											class="option-checkbox ng-pristine ng-untouched ng-valid" >
											<span  class="ng-binding">마케팅∙무역∙유통</span>
										</label>
										<!-- end ngRepeat: index in option.index_arr -->
										<label class="checkbox-container ng-scope" > <input
											type="checkbox"
											class="option-checkbox ng-pristine ng-untouched ng-valid" >
											<span  class="ng-binding">영업∙고객상담</span>
										</label>
										<!-- end ngRepeat: index in option.index_arr -->
										<label class="checkbox-container ng-scope"> <input
											type="checkbox"
											class="option-checkbox ng-pristine ng-untouched ng-valid" >
											<span  class="ng-binding">IT∙인터넷</span>
										</label>
										<!-- end ngRepeat: index in option.index_arr -->
										<label class="checkbox-container ng-scope" > <input
											type="checkbox"
											class="option-checkbox ng-pristine ng-untouched ng-valid" >
											<span  class="ng-binding">연구개발∙설계</span>
										</label>
										<!-- end ngRepeat: index in option.index_arr -->
										<label class="checkbox-container ng-scope" > <input
											type="checkbox"
											class="option-checkbox ng-pristine ng-untouched ng-valid" >
											<span class="ng-binding">생산∙제조</span>
										</label>
										<!-- end ngRepeat: index in option.index_arr -->
										<label class="checkbox-container ng-scope" > <input
											type="checkbox"
											class="option-checkbox ng-pristine ng-untouched ng-valid" >
											<span class="ng-binding">전문∙특수직</span>
										</label>
										<!-- end ngRepeat: index in option.index_arr -->
										<label class="checkbox-container ng-scope" > <input
											type="checkbox"
											class="option-checkbox ng-pristine ng-untouched ng-valid" >
											<span class="ng-binding">디자인</span>
										</label>
										<!-- end ngRepeat: index in option.index_arr -->
										<label class="checkbox-container ng-scope" > <input
											type="checkbox"
											class="option-checkbox ng-pristine ng-untouched ng-valid" >
											<span class="ng-binding">미디어</span>
										</label>
										<!-- end ngRepeat: index in option.index_arr -->
										<label class="checkbox-container ng-scope" > <input
											type="checkbox"
											class="option-checkbox ng-pristine ng-untouched ng-valid" >
											<span  class="ng-binding">서비스</span>
										</label>
										<!-- end ngRepeat: index in option.index_arr -->
										<label class="checkbox-container ng-scope" > <input
											type="checkbox"
											class="option-checkbox ng-pristine ng-untouched ng-valid" >
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


						<div class="calendar-left-toggle"  >
							<!-- ngIf: !showLeftCalendar -->
							<!-- ngIf: showLeftCalendar -->
							<img
								src="/assets/main/calendar/calendar_left_close-6a77507cd9a7d1e704c042d095055bfd61273f15de9b486e74b5c72c4940cc01.png"
								 class="ng-scope">
							<!-- end ngIf: showLeftCalendar -->
						</div>
						<div class="calendar-nav">
							<span class="prev" >&lt;</span> <span
								class="current ng-binding"  >2020.02</span>
							<span class="next" >&gt;</span>
						</div>

						<div class="search">

							<img
								src="/assets/main/search-6aea8d862a2a56f5f12a18e38ff1e4e6f03bb846c1b3b1474506eede338652ce.svg">
							<input type="text" id="employment_search_word"
								placeholder="기업명을 검색하세요.">
						</div>


						<div class="add-schedule ng-hide" >
							일정 추가</div>

					</div>
					<div class="dayname-container">
						<!-- ngRepeat: dayname in daynames -->
						<div class="calendar-cell ng-scope">
							<div class="day-label name-of-days ng-binding" >SUN요일 넣는 장소 foreach</div>
						</div>
						<!-- end ngRepeat: dayname in daynames -->
					
					</div>
					<div class="top-calendar-week" ng-hide="calendar_count() === 0">

						<!-- ngRepeat: i in week_arr -->
						<div class="calendar-cell ng-scope" ng-repeat="i in week_arr">
							<div class="day-label day-0" ng-class="'day-'+$index">날짜  foreach</div>
						</div>
						<!-- end ngRepeat: i in week_arr -->
					</div>
				</div>
				<div class="calendar-right">
					<div class="calendar body employment-mode"  >

						<!-- ngRepeat: week in weeks -->
						<div class="calendar-week ng-scope ng-isolate-scope week-0" 
							watch-height="" on-height-change="changeHeight($index, height)">
							<!-- ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope" >
								<div class="day-label ng-binding" >26</div>
								<div class="day-content" day="20200126">
									<div day="20200126" index="0" employment_id="35758"
										class="calendar-item employment divi-1 divi-2 end duty-2 duty-0 duty-1 duty-6 duty-4 duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>메디포스트</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200126" index="1" employment_id="35657"
										class="calendar-item employment divi-1 divi-2 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>시프티</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200126" index="2" employment_id="35646"
										class="calendar-item employment divi-2 divi-1 end duty-3 duty-6 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>캐럿글로벌</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">27</div>
								<div class="day-content" day="20200127"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200127" index="0" employment_id="35837"
										class="calendar-item employment divi-1 divi-2 start duty-3 duty-0 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>다우기술</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200127" index="1" employment_id="35785"
										class="calendar-item employment divi-3 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>Deloitte 안진회계법인</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200127" index="2" employment_id="35602"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-1 duty-6 duty-4 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>GS파워</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200127" index="3" employment_id="35795"
										class="calendar-item employment divi-4 end duty- no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>LS전선</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200127" index="4" employment_id="35655"
										class="calendar-item employment divi-1 end duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>SK E&amp;S</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200127" index="5" employment_id="35637"
										class="calendar-item employment divi-1 end duty-0 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>경방</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200127" index="6" employment_id="35738"
										class="calendar-item employment divi-2 divi-1 end duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>대한산업안전협회</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200127" index="7" employment_id="35681"
										class="calendar-item employment divi-2 end duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>동국대학교 자율기술연구센터</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200127" index="8" employment_id="35581"
										class="calendar-item employment divi-1 end duty-4 duty-2 duty-0 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>비전바이오켐</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200127" index="9" employment_id="35704"
										class="calendar-item employment divi-1 divi-2 end duty-4 duty-6 duty-1 duty-5 duty-10 duty-0 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>셀트리온</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200127" index="10" employment_id="35757"
										class="calendar-item employment divi-2 end duty-1 duty-2 duty-3 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>엠포스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200127" index="11" employment_id="35694"
										class="calendar-item employment divi-4 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>연세대학교의료원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200127" index="12" employment_id="35678"
										class="calendar-item employment divi-1 divi-2 end duty-9 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>이케아 코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200127" index="13" employment_id="35435"
										class="calendar-item employment divi-2 end duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>크리스앤파트너스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200127" index="14" employment_id="35436"
										class="calendar-item employment divi-3 end duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>크리스앤파트너스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200127" index="15" employment_id="35684"
										class="calendar-item employment divi-1 divi-3 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>포스코엠텍</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200127" index="16" employment_id="35707"
										class="calendar-item employment divi-2 divi-1 end duty-8 duty-0 duty-7 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국방송통신대학교출판문화원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200127" index="17" employment_id="35651"
										class="calendar-item employment divi-1 divi-2 divi-4 end duty-4 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국보건의료연구원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200127" index="18" employment_id="35668"
										class="calendar-item employment divi-1 end duty-4 duty-0 duty-5 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한솔테크닉스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200127" index="19" employment_id="35723"
										class="calendar-item employment divi-2 end duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한스바이오메드</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200127" index="20" employment_id="35676"
										class="calendar-item employment divi-1 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>현대자동차</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">28</div>
								<div class="day-content" day="20200128"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200128" index="0" employment_id="35838"
										class="calendar-item employment divi-1 occa duty-0 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label occa">수</div>

											<div class="company-name">
												<span>NHN Service</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="1" employment_id="35853"
										class="calendar-item employment divi-1 divi-2 occa duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label occa">수</div>

											<div class="company-name">
												<span>게임베리</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="2" employment_id="35855"
										class="calendar-item employment divi-1 divi-2 occa duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label occa">수</div>

											<div class="company-name">
												<span>게임베리</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="3" employment_id="35848"
										class="calendar-item employment divi-1 occa duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label occa">수</div>

											<div class="company-name">
												<span>인지소프트</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="4" employment_id="35847"
										class="calendar-item employment divi-1 start duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>DB하이텍</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="5" employment_id="35844"
										class="calendar-item employment divi-3 start duty-8 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>JTBC</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="6" employment_id="35843"
										class="calendar-item employment divi-1 start duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>KB데이타시스템</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="7" employment_id="35857"
										class="calendar-item employment divi-1 divi-2 start duty-0 duty-6 duty-3 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>NICE평가정보</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="8" employment_id="35834"
										class="calendar-item employment divi-1 divi-2 start duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>강원대학교병원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="9" employment_id="35858"
										class="calendar-item employment divi-1 divi-3 divi-2 start duty-0 duty-1 duty-6 duty-3 duty-2 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>대신금융그룹</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="10" employment_id="35852"
										class="calendar-item employment divi-1 divi-2 start duty-0 duty-6 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>덕성여자대학교</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="11" employment_id="35835"
										class="calendar-item employment divi-1 start duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>라이온코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="12" employment_id="35850"
										class="calendar-item employment divi-4 start duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>서울과학기술대학교</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="13" employment_id="35854"
										class="calendar-item employment divi-1 divi-2 start duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>스타베타</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="14" employment_id="35839"
										class="calendar-item employment divi-2 start duty-1 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>엠포스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="15" employment_id="35840"
										class="calendar-item employment divi-2 start duty-1 duty-7 duty-8 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>엠포스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="16" employment_id="35842"
										class="calendar-item employment divi-2 divi-1 start duty-0 duty-10 duty-5 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>코레일로지스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="17" employment_id="35845"
										class="calendar-item employment divi-1 start duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>키움투자자산운용</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="18" employment_id="35846"
										class="calendar-item employment divi-2 start duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>키움투자자산운용</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="19" employment_id="35841"
										class="calendar-item employment divi-1 divi-2 start duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국개발연구원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="20" employment_id="35856"
										class="calendar-item employment divi-2 divi-4 divi-3 start duty-3 duty-0 duty-1 duty-2 duty-8 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국문화정보원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="21" employment_id="35851"
										class="calendar-item employment divi-1 divi-2 start duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국오츠카제약</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="22" employment_id="35686"
										class="calendar-item employment divi-1 end duty-1 duty-2 duty-0 duty-5 duty-7 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>KT&amp;G</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="23" employment_id="35653"
										class="calendar-item employment divi-2 divi-1 end duty-5 duty-4 duty-1 duty-3 duty-0 duty-6 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>LS엠트론</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="24" employment_id="35737"
										class="calendar-item employment divi-1 divi-2 end duty-5 duty-10 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>동화약품</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="25" employment_id="35611"
										class="calendar-item employment divi-3 end duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>수협중앙회</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="26" employment_id="35685"
										class="calendar-item employment divi-1 divi-3 end duty-0 duty-1 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>시청자미디어재단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="27" employment_id="35672"
										class="calendar-item employment divi-1 divi-2 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>아이마켓코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="28" employment_id="35732"
										class="calendar-item employment divi-2 divi-1 end duty-10 duty-6 duty-0 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>여수시도시관리공단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="29" employment_id="35729"
										class="calendar-item employment divi-1 divi-2 end duty-3 duty-6 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>영진약품</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="30" employment_id="35534"
										class="calendar-item employment divi-1 divi-2 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>이랜드월드</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="31" employment_id="35669"
										class="calendar-item employment divi-1 divi-2 end duty-10 duty-4 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>평화엔지니어링</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="32" employment_id="35698"
										class="calendar-item employment divi-1 divi-2 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국콜마</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="33" employment_id="35626"
										class="calendar-item employment divi-4 divi-3 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국특허전략개발원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="34" employment_id="35670"
										class="calendar-item employment divi-1 divi-2 end duty-3 duty-6 duty-7 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국특허정보원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="35" employment_id="35690"
										class="calendar-item employment divi-1 divi-2 end duty-3 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한미헬스케어</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200128" index="36" employment_id="35531"
										class="calendar-item employment divi-1 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한샘</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">29</div>
								<div class="day-content" day="20200129"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200129" index="0" employment_id="35864"
										class="calendar-item employment divi-1 divi-2 start duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>AXA손해보험</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200129" index="1" employment_id="35869"
										class="calendar-item employment divi-2 start duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>DHL Global Forwarding Korea</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200129" index="2" employment_id="35865"
										class="calendar-item employment divi-4 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>국토연구원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200129" index="3" employment_id="35870"
										class="calendar-item employment divi-1 divi-2 start duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>서주</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200129" index="4" employment_id="35876"
										class="calendar-item employment divi-1 start duty-0 duty-4 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>수협</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200129" index="5" employment_id="35866"
										class="calendar-item employment divi-1 start duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>아주대학교의료원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200129" index="6" employment_id="35873"
										class="calendar-item employment divi-1 divi-2 start duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>온라인팜</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200129" index="7" employment_id="35868"
										class="calendar-item employment divi-3 start duty-0 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>웍스모바일</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200129" index="8" employment_id="35862"
										class="calendar-item employment divi-4 divi-1 divi-2 start duty-0 duty-4 duty-2 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>캐논쎄미콘덕터엔지니어링코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200129" index="9" employment_id="35872"
										class="calendar-item employment divi-1 start duty-3 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>펑타이코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200129" index="10" employment_id="35867"
										class="calendar-item employment divi-1 divi-3 start duty-5 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>하이트진로</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200129" index="11" employment_id="35871"
										class="calendar-item employment divi-1 divi-2 start duty-3 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국신용정보원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200129" index="12" employment_id="35923"
										class="calendar-item employment divi-1 divi-2 start duty-0 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국여성벤처협회</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200129" index="13" employment_id="35861"
										class="calendar-item employment divi-3 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국저작권위원회</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200129" index="14" employment_id="35875"
										class="calendar-item employment divi-1 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>현대그린푸드</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200129" index="15" employment_id="35633"
										class="calendar-item employment divi-4 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>DHL KOREA</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200129" index="16" employment_id="35716"
										class="calendar-item employment divi-4 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>DHL KOREA</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200129" index="17" employment_id="35774"
										class="calendar-item employment divi-3 end duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>메이븐클라우드서비스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200129" index="18" employment_id="35808"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>신한BNP파리바자산운용</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200129" index="19" employment_id="35767"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-10 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>아이에스동서</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200129" index="20" employment_id="35787"
										class="calendar-item employment divi-1 end duty-4 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>조선내화</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200129" index="21" employment_id="35780"
										class="calendar-item employment divi-1 end duty-1 duty-8 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>춘천MBC</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200129" index="22" employment_id="35634"
										class="calendar-item employment divi-1 divi-2 end duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>티센크루프엘리베이터코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200129" index="23" employment_id="35664"
										class="calendar-item employment divi-1 divi-2 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>티센크루프엘리베이터코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200129" index="24" employment_id="35656"
										class="calendar-item employment divi-1 divi-2 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한경디스코</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200129" index="25" employment_id="35649"
										class="calendar-item employment divi-2 end duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국기업평가</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200129" index="26" employment_id="35735"
										class="calendar-item employment divi-1 divi-3 end duty-0 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국원자력산업회의</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200129" index="27" employment_id="35725"
										class="calendar-item employment divi-1 end duty-3 duty-1 duty-0 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>현대오토에버</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">30</div>
								<div class="day-content" day="20200130"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200130" index="0" employment_id="35890"
										class="calendar-item employment divi-3 occa duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label occa">수</div>

											<div class="company-name">
												<span>Deloitte 안진회계법인</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200130" index="1" employment_id="35891"
										class="calendar-item employment divi-3 occa duty-0 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label occa">수</div>

											<div class="company-name">
												<span>Deloitte 안진회계법인</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200130" index="2" employment_id="35881"
										class="calendar-item employment divi-2 start duty-0 duty-5 duty-2 duty-4 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>HSD엔진</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200130" index="3" employment_id="35885"
										class="calendar-item employment divi-3 start duty-8 duty-1 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>JTBC콘텐트허브</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200130" index="4" employment_id="35880"
										class="calendar-item employment divi-3 start duty-2 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>SK가스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200130" index="5" employment_id="35878"
										class="calendar-item employment divi-4 start duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>경신홀딩스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200130" index="6" employment_id="35879"
										class="calendar-item employment divi-1 divi-2 start duty-4 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>대웅제약</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200130" index="7" employment_id="36102"
										class="calendar-item employment divi-3 start duty-0 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>신한아이타스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200130" index="8" employment_id="35908"
										class="calendar-item employment divi-2 start duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>아주약품</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200130" index="9" employment_id="35909"
										class="calendar-item employment divi-1 start duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>아주약품</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200130" index="10" employment_id="35892"
										class="calendar-item employment divi-1 start duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>어플라이드머티어리얼즈코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200130" index="11" employment_id="35886"
										class="calendar-item employment divi-3 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>에코마케팅</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200130" index="12" employment_id="35889"
										class="calendar-item employment divi-1 divi-2 start duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>오이솔루션</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200130" index="13" employment_id="35884"
										class="calendar-item employment divi-1 divi-2 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>유화증권</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200130" index="14" employment_id="35894"
										class="calendar-item employment divi-2 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>이케아 코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200130" index="15" employment_id="35893"
										class="calendar-item employment divi-1 divi-2 start duty-0 duty-4 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>전북개발공사</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200130" index="16" employment_id="35882"
										class="calendar-item employment divi-2 start duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>키움투자자산운용</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200130" index="17" employment_id="35877"
										class="calendar-item employment divi-4 start duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>티센크루프엘리베이터코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200130" index="18" employment_id="35800"
										class="calendar-item employment divi-1 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>HDC아이파크몰</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200130" index="19" employment_id="35742"
										class="calendar-item employment divi-1 divi-2 end duty-2 duty-4 duty-5 duty-7 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>금호타이어</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200130" index="20" employment_id="35749"
										class="calendar-item employment divi-4 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>서울관광재단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200130" index="21" employment_id="35714"
										class="calendar-item employment divi-1 divi-2 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>스프링캠프</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200130" index="22" employment_id="35793"
										class="calendar-item employment divi-1 divi-3 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>에이피알</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200130" index="23" employment_id="35842"
										class="calendar-item employment divi-2 divi-1 end duty-0 duty-10 duty-5 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>코레일로지스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200130" index="24" employment_id="35781"
										class="calendar-item employment divi-1 end duty-8 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>포항MBC</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200130" index="25" employment_id="35722"
										class="calendar-item employment divi-2 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>하이네켄코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200130" index="26" employment_id="35856"
										class="calendar-item employment divi-2 divi-4 divi-3 end duty-3 duty-0 duty-1 duty-2 duty-8 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국문화정보원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200130" index="27" employment_id="35755"
										class="calendar-item employment divi-1 divi-2 end duty-2 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국정보통신</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200130" index="28" employment_id="35744"
										class="calendar-item employment divi-1 end duty-0 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>현대해상</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">31</div>
								<div class="day-content" day="20200131"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200131" index="0" employment_id="35906"
										class="calendar-item employment divi-4 occa duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label occa">수</div>

											<div class="company-name">
												<span>아이유노글로벌</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="1" employment_id="35899"
										class="calendar-item employment divi-1 divi-2 start duty-8 duty-0 duty-1 duty-3 duty-7 duty-9 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>JYP엔터테인먼트</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="2" employment_id="35896"
										class="calendar-item employment divi-1 divi-2 start duty-1 duty-8 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>MBC플러스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="3" employment_id="35913"
										class="calendar-item employment divi-2 start duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>NE능률</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="4" employment_id="35914"
										class="calendar-item employment divi-2 start duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>NE능률</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="5" employment_id="35907"
										class="calendar-item employment divi-1 divi-2 start duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>TAGby</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="6" employment_id="35903"
										class="calendar-item employment divi-1 start duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>기아자동차</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="7" employment_id="35905"
										class="calendar-item employment divi-1 start duty-3 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>기아자동차</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="8" employment_id="35901"
										class="calendar-item employment divi-1 divi-2 divi-4 start duty-0 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>대중소기업농어업협력재단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="9" employment_id="35726"
										class="calendar-item employment divi-1 divi-2 start duty-0 duty-10 duty-4 duty-3 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>부산교통공사</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="10" employment_id="35895"
										class="calendar-item employment divi-1 divi-3 start duty-10 duty-5 duty-0 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>삼호</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="11" employment_id="35932"
										class="calendar-item employment divi-1 start duty-1 duty-2 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>서브원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="12" employment_id="35911"
										class="calendar-item employment divi-1 divi-2 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>시흥산업진흥원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="13" employment_id="35897"
										class="calendar-item employment divi-3 start duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>신용보증기금</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="14" employment_id="35910"
										class="calendar-item employment divi-4 start duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>애경산업</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="15" employment_id="35898"
										class="calendar-item employment divi-1 start duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>위메프</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="16" employment_id="35950"
										class="calendar-item employment divi-1 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>푸르덴셜생명보험</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="17" employment_id="35912"
										class="calendar-item employment divi-3 start duty-8 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국일보사</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="18" employment_id="35902"
										class="calendar-item employment divi-1 start duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>현대자동차</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="19" employment_id="35797"
										class="calendar-item employment divi-1 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>HDC신라면세점</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="20" employment_id="35761"
										class="calendar-item employment divi-1 end duty-0 duty-2 duty-10 duty-3 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>KDB생명보험</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="21" employment_id="35736"
										class="calendar-item employment divi-1 divi-2 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>국립암센터</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="22" employment_id="35768"
										class="calendar-item employment divi-2 divi-1 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>노원문화재단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="23" employment_id="35852"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-6 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>덕성여자대학교</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="24" employment_id="35644"
										class="calendar-item employment divi-3 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>딜로이트 안진회계법인</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="25" employment_id="35541"
										class="calendar-item employment divi-3 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>매드업</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="26" employment_id="35542"
										class="calendar-item employment divi-3 end duty-0 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>매드업</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="27" employment_id="35718"
										class="calendar-item employment divi-3 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>스포카</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="28" employment_id="35763"
										class="calendar-item employment divi-1 divi-2 end duty-4 duty-5 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>영신정공</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="29" employment_id="35719"
										class="calendar-item employment divi-1 divi-2 end duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>이투스교육</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="30" employment_id="35819"
										class="calendar-item employment divi-4 end duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>지반토스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="31" employment_id="35632"
										class="calendar-item employment divi-3 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>카카오엔터프라이즈</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="32" employment_id="35745"
										class="calendar-item employment divi-3 end duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>카카오엔터프라이즈</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="33" employment_id="35746"
										class="calendar-item employment divi-3 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>카카오엔터프라이즈</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="34" employment_id="35550"
										class="calendar-item employment divi-4 end duty-7 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>패스트캠퍼스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="35" employment_id="35551"
										class="calendar-item employment divi-1 divi-2 end duty-1 duty-8 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>패스트캠퍼스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="36" employment_id="35552"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-3 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>패스트캠퍼스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="37" employment_id="35705"
										class="calendar-item employment divi-1 divi-2 end duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>패스트캠퍼스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="38" employment_id="35706"
										class="calendar-item employment divi-1 divi-2 end duty-1 duty-8 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>패스트캠퍼스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="39" employment_id="35788"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-1 duty-3 duty-4 duty-6 duty-8 duty-7 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>패스트캠퍼스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="40" employment_id="35867"
										class="calendar-item employment divi-1 divi-3 end duty-5 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>하이트진로</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="41" employment_id="35734"
										class="calendar-item employment divi-1 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국공정거래조정원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="42" employment_id="35775"
										class="calendar-item employment divi-3 end duty-1 duty-0 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국문학번역원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="43" employment_id="35741"
										class="calendar-item employment divi-1 divi-2 end duty-3 duty-1 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>현대엠엔소프트</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200131" index="44" employment_id="35674"
										class="calendar-item employment divi-1 divi-2 end duty-5 duty-4 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>후성정공</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">1</div>
								<div class="day-content" day="20200201"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''"></div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
						</div>
						<!-- end ngRepeat: week in weeks -->
						<div class="calendar-week ng-scope ng-isolate-scope week-1"
							ng-class="'week-' + $index" ng-repeat="week in weeks"
							watch-height="" on-height-change="changeHeight($index, height)">
							<!-- ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">2</div>
								<div class="day-content" day="20200202"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200202" index="0" employment_id="35606"
										class="calendar-item employment divi-1 end duty-0 duty-1 duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>BAT Korea</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200202" index="1" employment_id="35844"
										class="calendar-item employment divi-3 end duty-8 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>JTBC</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200202" index="2" employment_id="35885"
										class="calendar-item employment divi-3 end duty-8 duty-1 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>JTBC콘텐트허브</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200202" index="3" employment_id="35804"
										class="calendar-item employment divi-1 divi-2 end duty-4 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>SKC하이테크앤마케팅</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200202" index="4" employment_id="35878"
										class="calendar-item employment divi-4 end duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>경신홀딩스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200202" index="5" employment_id="35730"
										class="calendar-item employment divi-2 divi-1 end duty-0 duty-1 duty-2 duty-7 duty-5 duty-4 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>동아제약</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200202" index="6" employment_id="35823"
										class="calendar-item employment divi-1 divi-2 end duty-3 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>씨젠</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200202" index="7" employment_id="35803"
										class="calendar-item employment divi-1 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>온라인팜</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200202" index="8" employment_id="35750"
										class="calendar-item employment divi-1 divi-2 end duty-1 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>인터파크</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200202" index="9" employment_id="35798"
										class="calendar-item employment divi-1 divi-2 end duty-4 duty-5 duty-0 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>제우스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200202" index="10" employment_id="35764"
										class="calendar-item employment divi-1 divi-2 end duty-2 duty-1 duty-4 duty-6 duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>제일약품</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200202" index="11" employment_id="35830"
										class="calendar-item employment divi-1 divi-2 divi-3 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>크레비스파트너스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200202" index="12" employment_id="35845"
										class="calendar-item employment divi-1 end duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>키움투자자산운용</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200202" index="13" employment_id="35731"
										class="calendar-item employment divi-1 end duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>플레이디</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200202" index="14" employment_id="35784"
										class="calendar-item employment divi-2 divi-1 divi-3 divi-4 end duty-0 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국능률협회컨설팅</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200202" index="15" employment_id="35851"
										class="calendar-item employment divi-1 divi-2 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국오츠카제약</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200202" index="16" employment_id="35771"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-6 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국품질재단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200202" index="17" employment_id="35754"
										class="calendar-item employment divi-1 end duty-4 duty-5 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>현대자동차</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">3</div>
								<div class="day-content" day="20200203"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200203" index="0" employment_id="35937"
										class="calendar-item employment divi-3 occa duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label occa">수</div>

											<div class="company-name">
												<span>Deloitte 안진회계법인</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="1" employment_id="35921"
										class="calendar-item employment divi-2 start duty-4 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>LS전선</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="2" employment_id="35936"
										class="calendar-item employment divi-1 divi-2 start duty-0 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>NICE신용평가</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="3" employment_id="35916"
										class="calendar-item employment divi-1 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>김포상공회의소</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="4" employment_id="35934"
										class="calendar-item employment divi-1 start duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>대한변호사협회</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="5" employment_id="35836"
										class="calendar-item employment divi-1 start duty-3 duty-1 duty-7 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>데상트코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="6" employment_id="35859"
										class="calendar-item employment divi-2 divi-1 divi-4 start duty-6 duty-8 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>명지대학교</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="7" employment_id="35860"
										class="calendar-item employment divi-1 divi-2 start duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>명지전문대학</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="8" employment_id="35927"
										class="calendar-item employment divi-1 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>법무법인 율촌</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="9" employment_id="35928"
										class="calendar-item employment divi-1 divi-2 divi-4 start duty-3 duty-7 duty-8 duty-0 duty-6 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>비상교육</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="10" employment_id="35919"
										class="calendar-item employment divi-1 divi-2 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>삼익물류</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="11" employment_id="35931"
										class="calendar-item employment divi-3 start duty-0 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>스마트스터디</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="12" employment_id="35917"
										class="calendar-item employment divi-2 start duty-1 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>엠포스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="13" employment_id="35918"
										class="calendar-item employment divi-2 start duty-1 duty-3 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>엠포스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="14" employment_id="35938"
										class="calendar-item employment divi-1 start duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>이월드 쥬얼리사업부</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="15" employment_id="35939"
										class="calendar-item employment divi-1 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>인제대학교 상계백병원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="16" employment_id="35922"
										class="calendar-item employment divi-1 divi-2 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>케이씨엔에이</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="17" employment_id="35920"
										class="calendar-item employment divi-1 divi-2 start duty-0 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>크레비스파트너스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="18" employment_id="35900"
										class="calendar-item employment divi-2 start duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>키움투자자산운용</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="19" employment_id="35874"
										class="calendar-item employment divi-4 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>포항공과대학교</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="20" employment_id="35924"
										class="calendar-item employment divi-1 divi-2 start duty-5 duty-3 duty-6 duty-2 duty-4 duty-1 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>피에스케이</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="21" employment_id="35915"
										class="calendar-item employment divi-4 start duty-0 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한경디스코</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="22" employment_id="35984"
										class="calendar-item employment divi-1 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국계량측정협회</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="23" employment_id="35930"
										class="calendar-item employment divi-4 start duty-7 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국리서치</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="24" employment_id="35888"
										class="calendar-item employment divi-1 start duty-6 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국신용평가</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="25" employment_id="35926"
										class="calendar-item employment divi-1 start duty-1 duty-0 duty-7 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한세실업</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="26" employment_id="35935"
										class="calendar-item employment divi-1 divi-2 start duty-2 duty-4 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한화제약</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="27" employment_id="35933"
										class="calendar-item employment divi-4 start duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한화투자증권</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="28" employment_id="35925"
										class="calendar-item employment divi-1 divi-2 start duty-4 duty-5 duty-10 duty-0 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>현대스틸산업</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="29" employment_id="35929"
										class="calendar-item employment divi-1 start duty-3 duty-4 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>현대중공업그룹</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="30" employment_id="35843"
										class="calendar-item employment divi-1 end duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>KB데이타시스템</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="31" employment_id="35640"
										class="calendar-item employment divi-3 end duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>LG전자</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="32" employment_id="35880"
										class="calendar-item employment divi-3 end duty-2 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>SK가스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="33" employment_id="35769"
										class="calendar-item employment divi-1 end duty-4 duty-5 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>기아자동차</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="34" employment_id="35850"
										class="calendar-item employment divi-4 end duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>서울과학기술대학교</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="35" employment_id="35817"
										class="calendar-item employment divi-3 end duty-7 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>스노우</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="36" employment_id="35772"
										class="calendar-item employment divi-1 divi-2 end duty-1 duty-2 duty-7 duty-8 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>엠포스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="37" employment_id="35812"
										class="calendar-item employment divi-2 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>엠포스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="38" employment_id="35839"
										class="calendar-item employment divi-2 end duty-1 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>엠포스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="39" employment_id="35840"
										class="calendar-item employment divi-2 end duty-1 duty-7 duty-8 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>엠포스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="40" employment_id="35760"
										class="calendar-item employment divi-4 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>이케아 코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="41" employment_id="35673"
										class="calendar-item employment divi-2 divi-1 end duty-0 duty-1 duty-4 duty-8 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>평택시문화재단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="42" employment_id="35709"
										class="calendar-item employment divi-1 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국산업기술진흥원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="43" employment_id="35820"
										class="calendar-item employment divi-4 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국산업기술진흥원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="44" employment_id="35912"
										class="calendar-item employment divi-3 end duty-8 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국일보사</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="45" employment_id="35807"
										class="calendar-item employment divi-1 divi-2 end duty-4 duty-5 duty-6 duty-1 duty-0 duty-2 duty-7 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국콜마</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="46" employment_id="35789"
										class="calendar-item employment divi-1 end duty- no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>해성디에스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200203" index="47" employment_id="35777"
										class="calendar-item employment divi-1 end duty-3 duty-4 duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>현대자동차</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">4</div>
								<div class="day-content" day="20200204"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200204" index="0" employment_id="35953"
										class="calendar-item employment divi-2 occa duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label occa">수</div>

											<div class="company-name">
												<span>뮈젤</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200204" index="1" employment_id="35952"
										class="calendar-item employment divi-3 occa duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label occa">수</div>

											<div class="company-name">
												<span>프레시지</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200204" index="2" employment_id="35949"
										class="calendar-item employment divi-3 start duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>DHL KOREA</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200204" index="3" employment_id="35954"
										class="calendar-item employment divi-1 divi-2 start duty-3 duty-10 duty-2 duty-0 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>GS네오텍</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200204" index="4" employment_id="35941"
										class="calendar-item employment divi-1 divi-2 start duty-0 duty-6 duty-2 duty-4 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>KAC공항서비스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200204" index="5" employment_id="35943"
										class="calendar-item employment divi-4 start duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>SK하이스텍</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200204" index="6" employment_id="35942"
										class="calendar-item employment divi-1 divi-3 start duty-2 duty-5 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>매일유업</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200204" index="7" employment_id="35945"
										class="calendar-item employment divi-2 start duty-1 duty-2 duty-6 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>수협은행</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200204" index="8" employment_id="35955"
										class="calendar-item employment divi-1 divi-2 start duty-2 duty-1 duty-0 duty-4 duty-6 duty-3 duty-9 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>신흥</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200204" index="9" employment_id="35947"
										class="calendar-item employment divi-1 divi-2 start duty-2 duty-1 duty-7 duty-0 duty-6 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>아름다운가게</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200204" index="10" employment_id="35957"
										class="calendar-item employment divi-1 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>에어서울</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200204" index="11" employment_id="35956"
										class="calendar-item employment divi-2 divi-1 start duty-5 duty-4 duty-10 duty-1 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>인팩</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200204" index="12" employment_id="35951"
										class="calendar-item employment divi-1 start duty-3 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>크로니아이티</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200204" index="13" employment_id="35958"
										class="calendar-item employment divi-3 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>푸르덴셜생명보험</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200204" index="14" employment_id="35863"
										class="calendar-item employment divi-1 divi-3 divi-2 start duty-0 duty-4 duty-10 duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국가스안전공사</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200204" index="15" employment_id="35940"
										class="calendar-item employment divi-2 divi-1 divi-4 start duty-3 duty-4 duty-0 duty-6 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국화학융합시험연구원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200204" index="16" employment_id="35946"
										class="calendar-item employment divi-1 start duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한양대학교병원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200204" index="17" employment_id="35948"
										class="calendar-item employment divi-1 start duty-4 duty-5 duty-0 duty-6 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>현대자동차</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200204" index="18" employment_id="35834"
										class="calendar-item employment divi-1 divi-2 end duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>강원대학교병원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200204" index="19" employment_id="35643"
										class="calendar-item employment divi-1 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>금화저축은행</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200204" index="20" employment_id="35806"
										class="calendar-item employment divi-1 end duty-1 duty-2 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>현대상선</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">5</div>
								<div class="day-content" day="20200205"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200205" index="0" employment_id="35974"
										class="calendar-item employment divi-1 divi-2 occa duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label occa">수</div>

											<div class="company-name">
												<span>Deloitte 안진회계법인</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="1" employment_id="35982"
										class="calendar-item employment divi-3 occa duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label occa">수</div>

											<div class="company-name">
												<span>Deloitte 안진회계법인</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="2" employment_id="35960"
										class="calendar-item employment divi-4 occa duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label occa">수</div>

											<div class="company-name">
												<span>케이프투자증권</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="3" employment_id="35969"
										class="calendar-item employment divi-2 occa duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label occa">수</div>

											<div class="company-name">
												<span>티몬</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="4" employment_id="35964"
										class="calendar-item employment divi-1 divi-2 start duty-2 duty-9 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>Booking.com</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="5" employment_id="35968"
										class="calendar-item employment divi-3 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>EY한영</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="6" employment_id="35981"
										class="calendar-item employment divi-3 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>EY한영</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="7" employment_id="35975"
										class="calendar-item employment divi-1 divi-2 start duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>동국대학교</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="8" employment_id="35966"
										class="calendar-item employment divi-4 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>동성코퍼레이션</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="9" employment_id="35983"
										class="calendar-item employment divi-1 divi-2 start duty-3 duty-6 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>마이쿤</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="10" employment_id="35972"
										class="calendar-item employment divi-1 start duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>만도</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="11" employment_id="35970"
										class="calendar-item employment divi-1 start duty-4 duty-5 duty-1 duty-2 duty-0 duty-7 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>삼양식품</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="12" employment_id="35980"
										class="calendar-item employment divi-2 start duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>엠포스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="13" employment_id="35978"
										class="calendar-item employment divi-1 start duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>코리아세븐</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="14" employment_id="35961"
										class="calendar-item employment divi-1 divi-2 start duty-8 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>코리아타임스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="15" employment_id="35971"
										class="calendar-item employment divi-2 divi-1 start duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>키스채권평가</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="16" employment_id="35967"
										class="calendar-item employment divi-1 divi-2 start duty-0 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>키움투자자산운용</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="17" employment_id="35963"
										class="calendar-item employment divi-4 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>티센크루프엘리베이터코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="18" employment_id="35979"
										class="calendar-item employment divi-1 start duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>푸르덴셜생명보험</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="19" employment_id="35973"
										class="calendar-item employment divi-2 divi-1 start duty-10 duty-0 duty-2 duty-1 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>하남도시공사</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="20" employment_id="35962"
										class="calendar-item employment divi-4 start duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국기계연구원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="21" employment_id="35965"
										class="calendar-item employment divi-3 start duty-0 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국예술인복지재단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="22" employment_id="35796"
										class="calendar-item employment divi-1 divi-4 start duty-0 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국전기안전공사</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="23" employment_id="35959"
										class="calendar-item employment divi-2 divi-4 start duty-0 duty-3 duty-5 duty-2 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>홍익대학교</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="24" employment_id="35831"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-10 duty-4 duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>LG이노텍</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="25" employment_id="35809"
										class="calendar-item employment divi-2 end duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>경찰공제회</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="26" employment_id="35810"
										class="calendar-item employment divi-1 divi-2 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>경희대학교</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="27" employment_id="35811"
										class="calendar-item employment divi-1 divi-2 end duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>나노종합기술원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="28" employment_id="35837"
										class="calendar-item employment divi-1 divi-2 end duty-3 duty-0 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>다우기술</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="29" employment_id="35875"
										class="calendar-item employment divi-1 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>현대그린푸드</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="30" employment_id="35765"
										class="calendar-item employment divi-1 end duty-4 duty-10 duty-5 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>현대삼호중공업</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200205" index="31" employment_id="35821"
										class="calendar-item employment divi-1 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>현대자동차</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">6</div>
								<div class="day-content" day="20200206"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200206" index="0" employment_id="35996"
										class="calendar-item employment divi-3 start duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>DHL Global Forwarding Korea</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200206" index="1" employment_id="36003"
										class="calendar-item employment divi-1 start duty-0 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>NH투자증권</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200206" index="2" employment_id="35988"
										class="calendar-item employment divi-2 divi-1 start duty-0 duty-3 duty-4 duty-2 duty-5 duty-10 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>SFA반도체</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200206" index="3" employment_id="36002"
										class="calendar-item employment divi-3 start duty-3 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>SK증권</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200206" index="4" employment_id="35997"
										class="calendar-item employment divi-4 start duty-0 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>관악구청</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200206" index="5" employment_id="35989"
										class="calendar-item employment divi-1 divi-2 start duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>녹십자의료재단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200206" index="6" employment_id="35987"
										class="calendar-item employment divi-4 start duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>동국대학교 자율기술연구센터</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200206" index="7" employment_id="35993"
										class="calendar-item employment divi-1 divi-2 start duty-0 duty-10 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>라인건설</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200206" index="8" employment_id="35991"
										class="calendar-item employment divi-2 divi-1 start duty-4 duty-2 duty-5 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>보령바이오파마</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200206" index="9" employment_id="36004"
										class="calendar-item employment divi-1 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>생명보험협회</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200206" index="10" employment_id="35985"
										class="calendar-item employment divi-2 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>아주약품</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200206" index="11" employment_id="35986"
										class="calendar-item employment divi-1 start duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>아주약품</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200206" index="12" employment_id="35999"
										class="calendar-item employment divi-2 divi-4 start duty-1 duty-0 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>영등포문화재단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200206" index="13" employment_id="35990"
										class="calendar-item employment divi-3 start duty-8 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>중앙일보</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200206" index="14" employment_id="36000"
										class="calendar-item employment divi-3 start duty-0 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>파인아시아자산운용</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200206" index="15" employment_id="35995"
										class="calendar-item employment divi-2 divi-1 divi-4 start duty-1 duty-4 duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>팜스코</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200206" index="16" employment_id="35998"
										class="calendar-item employment divi-1 divi-2 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국문화관광연구원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200206" index="17" employment_id="35994"
										class="calendar-item employment divi-1 start duty-0 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국물기술인증원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200206" index="18" employment_id="35992"
										class="calendar-item employment divi-1 divi-2 start duty-0 duty-1 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한화호텔앤드리조트</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200206" index="19" employment_id="35913"
										class="calendar-item employment divi-2 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>NE능률</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200206" index="20" employment_id="35914"
										class="calendar-item employment divi-2 end duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>NE능률</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200206" index="21" employment_id="35726"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-10 duty-4 duty-3 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>부산교통공사</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200206" index="22" employment_id="35727"
										class="calendar-item employment divi-2 divi-1 divi-4 end duty-0 duty-3 duty-4 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>서울디지털재단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200206" index="23" employment_id="35911"
										class="calendar-item employment divi-1 divi-2 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>시흥산업진흥원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200206" index="24" employment_id="35889"
										class="calendar-item employment divi-1 divi-2 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>오이솔루션</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200206" index="25" employment_id="35938"
										class="calendar-item employment divi-1 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>이월드 쥬얼리사업부</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200206" index="26" employment_id="35893"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-4 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>전북개발공사</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200206" index="27" employment_id="35841"
										class="calendar-item employment divi-1 divi-2 end duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국개발연구원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200206" index="28" employment_id="35816"
										class="calendar-item employment divi-3 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국전력기술</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">7</div>
								<div class="day-content" day="20200207"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200207" index="0" employment_id="36013"
										class="calendar-item employment divi-1 divi-2 occa duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label occa">수</div>

											<div class="company-name">
												<span>비티엘첨단소재</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="1" employment_id="36006"
										class="calendar-item employment divi-1 start duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>DHL Global Forwarding Korea</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="2" employment_id="36011"
										class="calendar-item employment divi-2 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>LS산전</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="3" employment_id="36005"
										class="calendar-item employment divi-1 divi-2 start duty-4 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>TES</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="4" employment_id="36015"
										class="calendar-item employment divi-1 start duty-0 duty-1 duty-2 duty-5 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>경신</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="5" employment_id="36014"
										class="calendar-item employment divi-1 start duty-4 duty-5 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>디엠바이오</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="6" employment_id="36009"
										class="calendar-item employment divi-1 divi-2 start duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>모나미</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="7" employment_id="36001"
										class="calendar-item employment divi-1 start duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>모바일리더/인지소프트</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="8" employment_id="36021"
										class="calendar-item employment divi-1 divi-2 start duty-4 duty-7 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>삼천리자전거</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="9" employment_id="36023"
										class="calendar-item employment divi-1 start duty-0 duty-4 duty-5 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>성신양회</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="10" employment_id="36016"
										class="calendar-item employment divi-1 divi-2 start duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>스타럭스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="11" employment_id="36018"
										class="calendar-item employment divi-1 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>엠디엠플러스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="12" employment_id="36008"
										class="calendar-item employment divi-4 start duty-6 duty-3 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>영남대학교의료원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="13" employment_id="36012"
										class="calendar-item employment divi-1 divi-2 start duty-4 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>종근당</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="14" employment_id="36007"
										class="calendar-item employment divi-1 divi-2 start duty-5 duty-4 duty-2 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>케이씨텍</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="15" employment_id="35827"
										class="calendar-item employment divi-1 start duty-0 duty-1 duty-3 duty-4 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>코레일(한국철도공사)</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="16" employment_id="36017"
										class="calendar-item employment divi-2 start duty-7 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>튼튼영어</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="17" employment_id="36010"
										class="calendar-item employment divi-1 divi-2 divi-4 start duty-3 duty-4 duty-0 duty-1 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국해양과학기술원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="18" employment_id="36020"
										class="calendar-item employment divi-3 start duty-0 duty-2 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한화생명</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="19" employment_id="36022"
										class="calendar-item employment divi-1 start duty-3 duty-4 duty-10 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>현대비에스앤씨</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="20" employment_id="35695"
										class="calendar-item employment divi-3 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>동아일보사</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="21" employment_id="35859"
										class="calendar-item employment divi-2 divi-1 divi-4 end duty-6 duty-8 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>명지대학교</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="22" employment_id="35860"
										class="calendar-item employment divi-1 divi-2 end duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>명지전문대학</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="23" employment_id="35786"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>서울신용평가</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="24" employment_id="35866"
										class="calendar-item employment divi-1 end duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>아주대학교의료원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="25" employment_id="35868"
										class="calendar-item employment divi-3 end duty-0 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>웍스모바일</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="26" employment_id="35776"
										class="calendar-item employment divi-1 end duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>유코카캐리어스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="27" employment_id="35884"
										class="calendar-item employment divi-1 divi-2 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>유화증권</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="28" employment_id="35849"
										class="calendar-item employment divi-3 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>청소년금융교육협의회</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="29" employment_id="35689"
										class="calendar-item employment divi-1 divi-2 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국스트라이커</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="30" employment_id="35693"
										class="calendar-item employment divi-1 divi-2 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국스트라이커</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="31" employment_id="35790"
										class="calendar-item employment divi-1 end duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국알테어</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="32" employment_id="35791"
										class="calendar-item employment divi-1 end duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국알테어</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="33" employment_id="35861"
										class="calendar-item employment divi-3 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국저작권위원회</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200207" index="34" employment_id="35794"
										class="calendar-item employment divi-4 end duty-8 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>해외문화홍보원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">8</div>
								<div class="day-content" day="20200208"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200208" index="0" employment_id="36019"
										class="calendar-item employment divi-1 start duty-2 duty-7 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한샘</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200208" index="1" employment_id="36060"
										class="calendar-item employment divi-2 divi-1 start duty-0 duty-6 duty-3 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>현대엔지비</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
						</div>
						<!-- end ngRepeat: week in weeks -->
						<div class="calendar-week ng-scope ng-isolate-scope week-2"
							ng-class="'week-' + $index" ng-repeat="week in weeks"
							watch-height="" on-height-change="changeHeight($index, height)">
							<!-- ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">9</div>
								<div class="day-content" day="20200209"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200209" index="0" employment_id="36024"
										class="calendar-item employment divi-2 divi-1 start duty-8 duty-1 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>KBS미디어</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="1" employment_id="36025"
										class="calendar-item employment divi-1 divi-2 start duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>스포카</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="2" employment_id="35864"
										class="calendar-item employment divi-1 divi-2 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>AXA손해보험</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="3" employment_id="35828"
										class="calendar-item employment divi-2 end duty-0 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>BGF</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="4" employment_id="35829"
										class="calendar-item employment divi-2 end duty-2 duty-1 duty-3 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>BGF리테일</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="5" employment_id="35847"
										class="calendar-item employment divi-1 end duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>DB하이텍</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="6" employment_id="35881"
										class="calendar-item employment divi-2 end duty-0 duty-5 duty-2 duty-4 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>HSD엔진</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="7" employment_id="35899"
										class="calendar-item employment divi-1 divi-2 end duty-8 duty-0 duty-1 duty-3 duty-7 duty-9 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>JYP엔터테인먼트</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="8" employment_id="35857"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-6 duty-3 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>NICE평가정보</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="9" employment_id="35988"
										class="calendar-item employment divi-2 divi-1 end duty-0 duty-3 duty-4 duty-2 duty-5 duty-10 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>SFA반도체</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="10" employment_id="35733"
										class="calendar-item employment divi-1 end duty-0 duty-3 duty-4 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>SK이노베이션</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="11" employment_id="36002"
										class="calendar-item employment divi-3 end duty-3 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>SK증권</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="12" employment_id="35943"
										class="calendar-item employment divi-4 end duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>SK하이스텍</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="13" employment_id="35858"
										class="calendar-item employment divi-1 divi-3 divi-2 end duty-0 duty-1 duty-6 duty-3 duty-2 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>대신금융그룹</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="14" employment_id="35879"
										class="calendar-item employment divi-1 divi-2 end duty-4 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>대웅제약</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="15" employment_id="35835"
										class="calendar-item employment divi-1 end duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>라이온코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="16" employment_id="35942"
										class="calendar-item employment divi-1 divi-3 end duty-2 duty-5 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>매일유업</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="17" employment_id="35815"
										class="calendar-item employment divi-3 end duty-7 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>본그룹</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="18" employment_id="35919"
										class="calendar-item employment divi-1 divi-2 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>삼익물류</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="19" employment_id="35895"
										class="calendar-item employment divi-1 divi-3 end duty-10 duty-5 duty-0 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>삼호</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="20" employment_id="35770"
										class="calendar-item employment divi-3 divi-2 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>에이피알</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="21" employment_id="35822"
										class="calendar-item employment divi-1 divi-2 end duty-2 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>원익아이피에스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="22" employment_id="35922"
										class="calendar-item employment divi-1 divi-2 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>케이씨엔에이</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="23" employment_id="35846"
										class="calendar-item employment divi-2 end duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>키움투자자산운용</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="24" employment_id="35877"
										class="calendar-item employment divi-4 end duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>티센크루프엘리베이터코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="25" employment_id="35979"
										class="calendar-item employment divi-1 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>푸르덴셜생명보험</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="26" employment_id="35924"
										class="calendar-item employment divi-1 divi-2 end duty-5 duty-3 duty-6 duty-2 duty-4 duty-1 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>피에스케이</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="27" employment_id="35930"
										class="calendar-item employment divi-4 end duty-7 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국리서치</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="28" employment_id="35923"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국여성벤처협회</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="29" employment_id="35940"
										class="calendar-item employment divi-2 divi-1 divi-4 end duty-3 duty-4 duty-0 duty-6 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국화학융합시험연구원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="30" employment_id="35946"
										class="calendar-item employment divi-1 end duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한양대학교병원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200209" index="31" employment_id="35929"
										class="calendar-item employment divi-1 end duty-3 duty-4 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>현대중공업그룹</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">10</div>
								<div class="day-content" day="20200210"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200210" index="0" employment_id="36053"
										class="calendar-item employment divi-4 occa duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label occa">수</div>

											<div class="company-name">
												<span>하이네켄코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="1" employment_id="36040"
										class="calendar-item employment divi-3 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>11번가</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="2" employment_id="36119"
										class="calendar-item employment divi-1 divi-2 start duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>KDI국제정책대학원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="3" employment_id="36035"
										class="calendar-item employment divi-1 start duty-0 duty-1 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>경남신용보증재단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="4" employment_id="36044"
										class="calendar-item employment divi-1 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>교원그룹</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="5" employment_id="36079"
										class="calendar-item employment divi-3 start duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>노벨리스코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="6" employment_id="36188"
										class="calendar-item employment divi-4 start duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>사단법인 점프</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="7" employment_id="36032"
										class="calendar-item employment divi-1 start duty-0 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>세아제강</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="8" employment_id="36038"
										class="calendar-item employment divi-1 divi-2 start duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>시프티</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="9" employment_id="36039"
										class="calendar-item employment divi-2 start duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>시프티</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="10" employment_id="36042"
										class="calendar-item employment divi-1 divi-2 start duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>시프티</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="11" employment_id="36036"
										class="calendar-item employment divi-1 start duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>신성통상</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="12" employment_id="36048"
										class="calendar-item employment divi-1 divi-2 start duty-0 duty-1 duty-7 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>에셋플러스자산운용</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="13" employment_id="36027"
										class="calendar-item employment divi-2 start duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>엠포스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="14" employment_id="36029"
										class="calendar-item employment divi-2 start duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>엠포스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="15" employment_id="36045"
										class="calendar-item employment divi-1 divi-2 start duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>연세대학교 의료원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="16" employment_id="36033"
										class="calendar-item employment divi-2 divi-1 start duty-0 duty-6 duty-4 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>울주군시설관리공단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="17" employment_id="36031"
										class="calendar-item employment divi-1 divi-2 start duty-0 duty-3 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>중앙치매센터</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="18" employment_id="36037"
										class="calendar-item employment divi-2 divi-1 start duty-3 duty-4 duty-7 duty-0 duty-1 duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>창신INC</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="19" employment_id="36046"
										class="calendar-item employment divi-2 divi-1 start duty-10 duty-4 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>캠코시설관리</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="20" employment_id="36043"
										class="calendar-item employment divi-1 divi-2 start duty-0 duty-2 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>태준제약</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="21" employment_id="36026"
										class="calendar-item employment divi-1 divi-2 start duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>티센크루프엘리베이터코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="22" employment_id="36054"
										class="calendar-item employment divi-1 start duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>하이네켄코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="23" employment_id="36030"
										class="calendar-item employment divi-1 divi-3 start duty-0 duty-4 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국연구재단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="24" employment_id="36041"
										class="calendar-item employment divi-1 divi-2 start duty-0 duty-6 duty-4 duty-3 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국원자력안전재단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="25" employment_id="36047"
										class="calendar-item employment divi-1 divi-2 start duty-4 duty-5 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국프랜지공업</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="26" employment_id="36034"
										class="calendar-item employment divi-1 start duty-0 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>현대글로벌서비스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="27" employment_id="35766"
										class="calendar-item employment divi-1 divi-3 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>DB자동차보험손해사정</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="28" employment_id="35968"
										class="calendar-item employment divi-3 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>EY한영</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="29" employment_id="35941"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-6 duty-2 duty-4 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>KAC공항서비스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="30" employment_id="35865"
										class="calendar-item employment divi-4 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>국토연구원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="31" employment_id="35991"
										class="calendar-item employment divi-2 divi-1 end duty-4 duty-2 duty-5 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>보령바이오파마</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="32" employment_id="35928"
										class="calendar-item employment divi-1 divi-2 divi-4 end duty-3 duty-7 duty-8 duty-0 duty-6 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>비상교육</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="33" employment_id="35955"
										class="calendar-item employment divi-1 divi-2 end duty-2 duty-1 duty-0 duty-4 duty-6 duty-3 duty-9 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>신흥</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="34" employment_id="35957"
										class="calendar-item employment divi-1 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>에어서울</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="35" employment_id="35917"
										class="calendar-item employment divi-2 end duty-1 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>엠포스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="36" employment_id="35918"
										class="calendar-item employment divi-2 end duty-1 duty-3 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>엠포스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="37" employment_id="35956"
										class="calendar-item employment divi-2 divi-1 end duty-5 duty-4 duty-10 duty-1 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>인팩</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="38" employment_id="36012"
										class="calendar-item employment divi-1 divi-2 end duty-4 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>종근당</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="39" employment_id="35862"
										class="calendar-item employment divi-4 divi-1 divi-2 end duty-0 duty-4 duty-2 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>캐논쎄미콘덕터엔지니어링코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="40" employment_id="35827"
										class="calendar-item employment divi-1 end duty-0 duty-1 duty-3 duty-4 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>코레일(한국철도공사)</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="41" employment_id="35824"
										class="calendar-item employment divi-1 divi-2 end duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>크레비스파트너스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="42" employment_id="35872"
										class="calendar-item employment divi-1 end duty-3 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>펑타이코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="43" employment_id="35871"
										class="calendar-item employment divi-1 divi-2 end duty-3 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국신용정보원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="44" employment_id="35965"
										class="calendar-item employment divi-3 end duty-0 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국예술인복지재단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200210" index="45" employment_id="35752"
										class="calendar-item employment divi-1 divi-2 end duty-4 duty-3 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국원자력통제기술원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">11</div>
								<div class="day-content" day="20200211"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200211" index="0" employment_id="36076"
										class="calendar-item employment divi-1 divi-2 occa duty-0 duty-1 duty-2 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label occa">수</div>

											<div class="company-name">
												<span>가인지캠퍼스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="1" employment_id="36072"
										class="calendar-item employment divi-1 occa duty-2 duty-8 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label occa">수</div>

											<div class="company-name">
												<span>리디</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="2" employment_id="36063"
										class="calendar-item employment divi-3 occa duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label occa">수</div>

											<div class="company-name">
												<span>밸런스히어로</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="3" employment_id="36052"
										class="calendar-item employment divi-1 divi-3 start duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>DB하이텍</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="4" employment_id="36056"
										class="calendar-item employment divi-3 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>EY한영</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="5" employment_id="36050"
										class="calendar-item employment divi-4 start duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>UPS 코리아 </span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="6" employment_id="36064"
										class="calendar-item employment divi-1 start duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>WDB공학</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="7" employment_id="36049"
										class="calendar-item employment divi-1 divi-3 divi-4 start duty-0 duty-2 duty-9 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>공항철도</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="8" employment_id="36058"
										class="calendar-item employment divi-3 start duty-0 duty-3 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>국민연금공단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="9" employment_id="36075"
										class="calendar-item employment divi-1 start duty-0 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>라모스테크놀러지</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="10" employment_id="36067"
										class="calendar-item employment divi-1 divi-2 start duty-4 duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>메디톡스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="11" employment_id="36077"
										class="calendar-item employment divi-4 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>빅히트엔터테인먼트</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="12" employment_id="36074"
										class="calendar-item employment divi-1 divi-2 start duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>스키아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="13" employment_id="36059"
										class="calendar-item employment divi-2 divi-1 start duty-0 duty-3 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>쎄트렉아이</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="14" employment_id="36068"
										class="calendar-item employment divi-1 divi-2 start duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>오케이몰</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="15" employment_id="36065"
										class="calendar-item employment divi-2 divi-1 start duty-6 duty-1 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>전국재해구호협회</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="16" employment_id="36055"
										class="calendar-item employment divi-1 start duty-0 duty-6 duty-3 duty-4 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>충남대학교병원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="17" employment_id="36073"
										class="calendar-item employment divi-1 divi-3 start duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>코오롱베니트</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="18" employment_id="36070"
										class="calendar-item employment divi-1 divi-2 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>키움투자자산운용</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="19" employment_id="36071"
										class="calendar-item employment divi-1 divi-2 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>키움투자자산운용</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="20" employment_id="36051"
										class="calendar-item employment divi-2 start duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>트레이</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="21" employment_id="36069"
										class="calendar-item employment divi-2 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>티센크루프엘리베이터코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="22" employment_id="36057"
										class="calendar-item employment divi-2 start duty-7 duty-8 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>틱톡(TikTok)</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="23" employment_id="36061"
										class="calendar-item employment divi-2 start duty-8 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>틱톡(TikTok)</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="24" employment_id="36062"
										class="calendar-item employment divi-2 start duty-3 duty-7 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>틱톡(TikTok)</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="25" employment_id="36133"
										class="calendar-item employment divi-1 start duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한샘</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="26" employment_id="36066"
										class="calendar-item employment divi-1 start duty-0 duty-1 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한양여자대학교</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="27" employment_id="35869"
										class="calendar-item employment divi-2 end duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>DHL Global Forwarding Korea</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="28" employment_id="35949"
										class="calendar-item employment divi-3 end duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>DHL KOREA</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="29" employment_id="36015"
										class="calendar-item employment divi-1 end duty-0 duty-1 duty-2 duty-5 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>경신</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="30" employment_id="35916"
										class="calendar-item employment divi-1 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>김포상공회의소</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="31" employment_id="36023"
										class="calendar-item employment divi-1 end duty-0 duty-4 duty-5 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>성신양회</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="32" employment_id="35854"
										class="calendar-item employment divi-1 divi-2 end duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>스타베타</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="33" employment_id="35886"
										class="calendar-item employment divi-3 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>에코마케팅</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="34" employment_id="35990"
										class="calendar-item employment divi-3 end duty-8 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>중앙일보</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="35" employment_id="35961"
										class="calendar-item employment divi-1 divi-2 end duty-8 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>코리아타임스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200211" index="36" employment_id="35796"
										class="calendar-item employment divi-1 divi-4 end duty-0 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국전기안전공사</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">12</div>
								<div class="day-content" day="20200212"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200212" index="0" employment_id="36103"
										class="calendar-item employment divi-3 occa duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label occa">수</div>

											<div class="company-name">
												<span>컬리</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="1" employment_id="36080"
										class="calendar-item employment divi-1 occa duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label occa">수</div>

											<div class="company-name">
												<span>특허법인 프렌즈</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="2" employment_id="36095"
										class="calendar-item employment divi-2 divi-1 start duty-2 duty-1 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>JTBC미디어컴</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="3" employment_id="36097"
										class="calendar-item employment divi-2 start duty-0 duty-2 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>SK텔레시스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="4" employment_id="36098"
										class="calendar-item employment divi-1 start duty-0 duty-1 duty-10 duty-6 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>건설공제조합</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="5" employment_id="35976"
										class="calendar-item employment divi-1 divi-3 start duty-4 duty-0 duty-6 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>국가정보원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="6" employment_id="36082"
										class="calendar-item employment divi-1 divi-2 start duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>글링크미디어</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="7" employment_id="36089"
										class="calendar-item employment divi-1 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>기아자동차</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="8" employment_id="36090"
										class="calendar-item employment divi-1 start duty-1 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>기아자동차</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="9" employment_id="36093"
										class="calendar-item employment divi-3 start duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>메이븐클라우드서비스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="10" employment_id="36101"
										class="calendar-item employment divi-3 start duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>모비데이즈</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="11" employment_id="36084"
										class="calendar-item employment divi-1 divi-2 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>법무법인 율촌</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="12" employment_id="36081"
										class="calendar-item employment divi-2 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>법무법인태평양</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="13" employment_id="36083"
										class="calendar-item employment divi-3 start duty-7 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>스마트스터디</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="14" employment_id="36085"
										class="calendar-item employment divi-1 divi-2 start duty-0 duty-10 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>신영그룹</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="15" employment_id="36088"
										class="calendar-item employment divi-4 start duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>아마존웹서비스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="16" employment_id="36094"
										class="calendar-item employment divi-1 divi-2 start duty-2 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>이베스트투자증권</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="17" employment_id="36100"
										class="calendar-item employment divi-4 start duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>재단법인 청년재단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="18" employment_id="36096"
										class="calendar-item employment divi-1 divi-2 start duty-4 duty-0 duty-1 duty-2 duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>파마리서치프로덕트</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="19" employment_id="36099"
										class="calendar-item employment divi-4 start duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>푸르덴셜생명보험</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="20" employment_id="36086"
										class="calendar-item employment divi-1 start duty-4 duty-6 duty-1 duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한미약품</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="21" employment_id="36092"
										class="calendar-item employment divi-1 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>현대자동차</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="22" employment_id="35989"
										class="calendar-item employment divi-1 divi-2 end duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>녹십자의료재단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="23" employment_id="35901"
										class="calendar-item employment divi-1 divi-2 divi-4 end duty-0 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>대중소기업농어업협력재단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="24" employment_id="35836"
										class="calendar-item employment divi-1 end duty-3 duty-1 duty-7 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>데상트코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="25" employment_id="36009"
										class="calendar-item employment divi-1 divi-2 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>모나미</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="26" employment_id="36021"
										class="calendar-item employment divi-1 divi-2 end duty-4 duty-7 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>삼천리자전거</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="27" employment_id="35876"
										class="calendar-item employment divi-1 end duty-0 duty-4 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>수협</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="28" employment_id="35910"
										class="calendar-item employment divi-4 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>애경산업</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="29" employment_id="36008"
										class="calendar-item employment divi-4 end duty-6 duty-3 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>영남대학교의료원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="30" employment_id="35802"
										class="calendar-item employment divi-3 end duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>카카오엔터프라이즈</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="31" employment_id="35863"
										class="calendar-item employment divi-1 divi-3 divi-2 end duty-0 duty-4 duty-10 duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국가스안전공사</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200212" index="32" employment_id="35926"
										class="calendar-item employment divi-1 end duty-1 duty-0 duty-7 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한세실업</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">13</div>
								<div class="day-content" day="20200213"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200213" index="0" employment_id="36105"
										class="calendar-item employment divi-1 divi-2 occa duty-6 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label occa">수</div>

											<div class="company-name">
												<span>네오위즈</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="1" employment_id="36108"
										class="calendar-item employment divi-1 start duty-2 duty-0 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>GS엠비즈</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="2" employment_id="36124"
										class="calendar-item employment divi-1 start duty-2 duty-0 duty-5 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>KSM</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="3" employment_id="36106"
										class="calendar-item employment divi-1 divi-2 start duty-0 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>KT엠모바일</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="4" employment_id="36111"
										class="calendar-item employment divi-1 divi-2 start duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>녹십자이엠</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="5" employment_id="36109"
										class="calendar-item employment divi-3 start duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>대림문화재단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="6" employment_id="36117"
										class="calendar-item employment divi-2 divi-1 start duty-1 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>로지스올</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="7" employment_id="36121"
										class="calendar-item employment divi-4 start duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>메리츠화재해상보험</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="8" employment_id="36107"
										class="calendar-item employment divi-1 divi-2 start duty-0 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>선경이엔씨</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="9" employment_id="36113"
										class="calendar-item employment divi-1 divi-2 start duty-3 duty-4 duty-0 duty-1 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>선박해양플랜트연구소</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="10" employment_id="36104"
										class="calendar-item employment divi-1 divi-2 start duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>스타럭스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="11" employment_id="36115"
										class="calendar-item employment divi-1 divi-2 divi-3 start duty-2 duty-5 duty-1 duty-0 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>자이스코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="12" employment_id="36114"
										class="calendar-item employment divi-1 divi-4 start duty-0 duty-3 duty-4 duty-6 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>전략물자관리원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="13" employment_id="36112"
										class="calendar-item employment divi-3 start duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>존슨앤드존슨 서지컬비젼</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="14" employment_id="36116"
										class="calendar-item employment divi-1 divi-2 start duty-7 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>틱톡(TikTok)</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="15" employment_id="36120"
										class="calendar-item employment divi-1 start duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>푸르덴셜생명보험</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="16" employment_id="36087"
										class="calendar-item employment divi-3 start duty-0 duty-1 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국가스안전공사</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="17" employment_id="36110"
										class="calendar-item employment divi-1 divi-2 start duty-0 duty-5 duty-1 duty-2 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>휴비스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="18" employment_id="36040"
										class="calendar-item employment divi-3 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>11번가</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="19" employment_id="35996"
										class="calendar-item employment divi-3 end duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>DHL Global Forwarding Korea</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="20" employment_id="35936"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>NICE신용평가</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="21" employment_id="36035"
										class="calendar-item employment divi-1 end duty-0 duty-1 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>경남신용보증재단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="22" employment_id="35903"
										class="calendar-item employment divi-1 end duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>기아자동차</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="23" employment_id="35972"
										class="calendar-item employment divi-1 end duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>만도</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="24" employment_id="36045"
										class="calendar-item employment divi-1 divi-2 end duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>연세대학교 의료원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="25" employment_id="35999"
										class="calendar-item employment divi-2 divi-4 end duty-1 duty-0 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>영등포문화재단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="26" employment_id="36033"
										class="calendar-item employment divi-2 divi-1 end duty-0 duty-6 duty-4 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>울주군시설관리공단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="27" employment_id="35894"
										class="calendar-item employment divi-2 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>이케아 코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="28" employment_id="35882"
										class="calendar-item employment divi-2 end duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>키움투자자산운용</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="29" employment_id="35915"
										class="calendar-item employment divi-4 end duty-0 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한경디스코</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="30" employment_id="36034"
										class="calendar-item employment divi-1 end duty-0 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>현대글로벌서비스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200213" index="31" employment_id="35902"
										class="calendar-item employment divi-1 end duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>현대자동차</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">14</div>
								<div class="day-content" day="20200214"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200214" index="0" employment_id="36137"
										class="calendar-item employment divi-1 divi-2 occa duty-3 duty-4 duty-0 duty-2 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label occa">수</div>

											<div class="company-name">
												<span>인피니트헬스케어</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="1" employment_id="36130"
										class="calendar-item employment divi-1 divi-2 start duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>AXA손해보험</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="2" employment_id="36134"
										class="calendar-item employment divi-3 start duty-0 duty-8 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>AXA손해보험</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="3" employment_id="36139"
										class="calendar-item employment divi-2 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>EY한영</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="4" employment_id="36143"
										class="calendar-item employment divi-3 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>EY한영</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="5" employment_id="36128"
										class="calendar-item employment divi-1 divi-2 start duty-1 duty-4 duty-5 duty-2 duty-6 duty-8 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>JW중외제약</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="6" employment_id="36127"
										class="calendar-item employment divi-4 start duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>NE능률</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="7" employment_id="36126"
										class="calendar-item employment divi-1 start duty-8 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>SBS미디어넷</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="8" employment_id="36144"
										class="calendar-item employment divi-1 divi-3 start duty-0 duty-7 duty-1 duty-2 duty-4 duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>SPC삼립</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="9" employment_id="36132"
										class="calendar-item employment divi-1 divi-2 start duty-0 duty-4 duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>STX중공업</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="10" employment_id="36199"
										class="calendar-item employment divi-4 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>기아자동차</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="11" employment_id="36131"
										class="calendar-item employment divi-1 start duty-0 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>농협자산관리회사</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="12" employment_id="36123"
										class="calendar-item employment divi-1 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>동아일보</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="13" employment_id="36122"
										class="calendar-item employment divi-2 divi-1 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>모던하우스 / 버터</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="14" employment_id="36129"
										class="calendar-item employment divi-1 start duty-0 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>삼영무역</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="15" employment_id="36141"
										class="calendar-item employment divi-3 start duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>소니코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="16" employment_id="36142"
										class="calendar-item employment divi-2 divi-1 start duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>소니코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="17" employment_id="36135"
										class="calendar-item employment divi-1 start duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>씨젠</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="18" employment_id="36138"
										class="calendar-item employment divi-1 start duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>이크레더블</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="19" employment_id="36145"
										class="calendar-item employment divi-3 start duty-0 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국수출입은행</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="20" employment_id="36003"
										class="calendar-item employment divi-1 end duty-0 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>NH투자증권</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="21" employment_id="35997"
										class="calendar-item employment divi-4 end duty-0 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>관악구청</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="22" employment_id="35934"
										class="calendar-item employment divi-1 end duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>대한변호사협회</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="23" employment_id="35966"
										class="calendar-item employment divi-4 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>동성코퍼레이션</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="24" employment_id="36093"
										class="calendar-item employment divi-3 end duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>메이븐클라우드서비스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="25" employment_id="35945"
										class="calendar-item employment divi-2 end duty-1 duty-2 duty-6 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>수협은행</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="26" employment_id="35931"
										class="calendar-item employment divi-3 end duty-0 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>스마트스터디</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="27" employment_id="36039"
										class="calendar-item employment divi-2 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>시프티</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="28" employment_id="35897"
										class="calendar-item employment divi-3 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>신용보증기금</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="29" employment_id="36059"
										class="calendar-item employment divi-2 divi-1 end duty-0 duty-3 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>쎄트렉아이</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="30" employment_id="35892"
										class="calendar-item employment divi-1 end duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>어플라이드머티어리얼즈코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="31" employment_id="36065"
										class="calendar-item employment divi-2 divi-1 end duty-6 duty-1 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>전국재해구호협회</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="32" employment_id="35874"
										class="calendar-item employment divi-4 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>포항공과대학교</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="33" employment_id="35984"
										class="calendar-item employment divi-1 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국계량측정협회</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="34" employment_id="35962"
										class="calendar-item employment divi-4 end duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국기계연구원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="35" employment_id="35998"
										class="calendar-item employment divi-1 divi-2 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국문화관광연구원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="36" employment_id="36066"
										class="calendar-item employment divi-1 end duty-0 duty-1 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한양여자대학교</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200214" index="37" employment_id="35933"
										class="calendar-item employment divi-4 end duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한화투자증권</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">15</div>
								<div class="day-content" day="20200215"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200215" index="0" employment_id="36146"
										class="calendar-item employment divi-3 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>에이피알</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200215" index="1" employment_id="36136"
										class="calendar-item employment divi-4 start duty-3 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국정보통신기술협회</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200215" index="2" employment_id="36125"
										class="calendar-item employment divi-4 start duty-1 duty-2 duty-4 duty-0 duty-5 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>효성굿스프링스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200215" index="3" employment_id="35925"
										class="calendar-item employment divi-1 divi-2 end duty-4 duty-5 duty-10 duty-0 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>현대스틸산업</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
						</div>
						<!-- end ngRepeat: week in weeks -->
						<div class="calendar-week ng-scope ng-isolate-scope week-3"
							ng-class="'week-' + $index" ng-repeat="week in weeks"
							watch-height="" on-height-change="changeHeight($index, height)">
							<!-- ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">16</div>
								<div class="day-content" day="20200216"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200216" index="0" employment_id="36147"
										class="calendar-item employment divi-1 divi-2 occa duty-7 duty-1 duty-3 duty-8 no-favorite">
										<div class="company">

											<div class="calendar-label occa">수</div>

											<div class="company-name">
												<span>에이플로우</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="1" employment_id="36143"
										class="calendar-item employment divi-3 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>EY한영</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="2" employment_id="36011"
										class="calendar-item employment divi-2 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>LS산전</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="3" employment_id="35921"
										class="calendar-item employment divi-2 end duty-4 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>LS전선</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="4" employment_id="36005"
										class="calendar-item employment divi-1 divi-2 end duty-4 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>TES</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="5" employment_id="36079"
										class="calendar-item employment divi-3 end duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>노벨리스코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="6" employment_id="36014"
										class="calendar-item employment divi-1 end duty-4 duty-5 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>디엠바이오</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="7" employment_id="35721"
										class="calendar-item employment divi-2 end duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>딜로이트 안진회계법인</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="8" employment_id="35993"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-10 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>라인건설</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="9" employment_id="36067"
										class="calendar-item employment divi-1 divi-2 end duty-4 duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>메디톡스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="10" employment_id="36121"
										class="calendar-item employment divi-4 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>메리츠화재해상보험</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="11" employment_id="36032"
										class="calendar-item employment divi-1 end duty-0 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>세아제강</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="12" employment_id="36016"
										class="calendar-item employment divi-1 divi-2 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>스타럭스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="13" employment_id="36085"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-10 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>신영그룹</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="14" employment_id="35825"
										class="calendar-item employment divi-2 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>아주약품</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="15" employment_id="35826"
										class="calendar-item employment divi-1 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>아주약품</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="16" employment_id="35908"
										class="calendar-item employment divi-2 end duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>아주약품</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="17" employment_id="35909"
										class="calendar-item employment divi-1 end duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>아주약품</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="18" employment_id="36048"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-1 duty-7 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>에셋플러스자산운용</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="19" employment_id="35939"
										class="calendar-item employment divi-1 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>인제대학교 상계백병원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="20" employment_id="36046"
										class="calendar-item employment divi-2 divi-1 end duty-10 duty-4 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>캠코시설관리</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="21" employment_id="36007"
										class="calendar-item employment divi-1 divi-2 end duty-5 duty-4 duty-2 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>케이씨텍</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="22" employment_id="35920"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>크레비스파트너스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="23" employment_id="35971"
										class="calendar-item employment divi-2 divi-1 end duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>키스채권평가</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="24" employment_id="35900"
										class="calendar-item employment divi-2 end duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>키움투자자산운용</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="25" employment_id="36043"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-2 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>태준제약</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="26" employment_id="36096"
										class="calendar-item employment divi-1 divi-2 end duty-4 duty-0 duty-1 duty-2 duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>파마리서치프로덕트</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="27" employment_id="36000"
										class="calendar-item employment divi-3 end duty-0 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>파인아시아자산운용</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="28" employment_id="35950"
										class="calendar-item employment divi-1 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>푸르덴셜생명보험</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="29" employment_id="35958"
										class="calendar-item employment divi-3 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>푸르덴셜생명보험</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="30" employment_id="35778"
										class="calendar-item employment divi-1 end duty-2 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국멘토그래픽스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="31" employment_id="36047"
										class="calendar-item employment divi-1 divi-2 end duty-4 duty-5 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국프랜지공업</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="32" employment_id="35935"
										class="calendar-item employment divi-1 divi-2 end duty-2 duty-4 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한화제약</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="33" employment_id="35992"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-1 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한화호텔앤드리조트</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="34" employment_id="36022"
										class="calendar-item employment divi-1 end duty-3 duty-4 duty-10 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>현대비에스앤씨</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200216" index="35" employment_id="35948"
										class="calendar-item employment divi-1 end duty-4 duty-5 duty-0 duty-6 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>현대자동차</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">17</div>
								<div class="day-content" day="20200217"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200217" index="0" employment_id="36159"
										class="calendar-item employment divi-3 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>EY한영</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="1" employment_id="36173"
										class="calendar-item employment divi-2 start duty-0 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>EY한영</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="2" employment_id="36153"
										class="calendar-item employment divi-1 start duty-2 duty-3 duty-6 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>LG전자</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="3" employment_id="36154"
										class="calendar-item employment divi-1 start duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>경희의료원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="4" employment_id="36163"
										class="calendar-item employment divi-1 start duty-4 duty-1 duty-2 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>기아자동차</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="5" employment_id="36171"
										class="calendar-item employment divi-1 start duty-2 duty-0 duty-5 duty-6 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>깨끗한나라</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="6" employment_id="36170"
										class="calendar-item employment divi-3 start duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>노벨리스코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="7" employment_id="36140"
										class="calendar-item employment divi-1 divi-2 start duty-0 duty-1 duty-2 duty-3 duty-7 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>누리미디어(DBpia)</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="8" employment_id="36152"
										class="calendar-item employment divi-2 divi-1 start duty-0 duty-7 duty-4 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>동국제약</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="9" employment_id="36148"
										class="calendar-item employment divi-3 start duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>메이븐클라우드서비스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="10" employment_id="36155"
										class="calendar-item employment divi-1 divi-2 start duty-2 duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>선진뷰티사이언스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="11" employment_id="36156"
										class="calendar-item employment divi-2 divi-1 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>세종문화회관</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="12" employment_id="36157"
										class="calendar-item employment divi-4 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>스마일게이트 엔터테인먼트</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="13" employment_id="36164"
										class="calendar-item employment divi-1 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>아이마켓코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="14" employment_id="36151"
										class="calendar-item employment divi-1 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>아주대학교의료원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="15" employment_id="36149"
										class="calendar-item employment divi-2 start duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>엠포스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="16" employment_id="36150"
										class="calendar-item employment divi-2 start duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>엠포스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="17" employment_id="36172"
										class="calendar-item employment divi-2 divi-1 divi-4 divi-3 start duty-2 duty-0 duty-3 duty-4 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>우체국금융개발원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="18" employment_id="36160"
										class="calendar-item employment divi-4 start duty-0 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>유안타증권</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="19" employment_id="36167"
										class="calendar-item employment divi-2 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>이엔에프테크놀로지</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="20" employment_id="36162"
										class="calendar-item employment divi-2 divi-1 start duty-0 duty-4 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>이지바이오</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="21" employment_id="36184"
										class="calendar-item employment divi-1 divi-3 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>중소기업중앙회</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="22" employment_id="36168"
										class="calendar-item employment divi-1 divi-2 start duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>태양3C</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="23" employment_id="36165"
										class="calendar-item employment divi-3 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국산업인력공단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="24" employment_id="35954"
										class="calendar-item employment divi-1 divi-2 end duty-3 duty-10 duty-2 duty-0 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>GS네오텍</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="25" employment_id="36024"
										class="calendar-item employment divi-2 divi-1 end duty-8 duty-1 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>KBS미디어</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="26" employment_id="36106"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>KT엠모바일</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="27" employment_id="35896"
										class="calendar-item employment divi-1 divi-2 end duty-1 duty-8 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>MBC플러스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="28" employment_id="36058"
										class="calendar-item employment divi-3 end duty-0 duty-3 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>국민연금공단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="29" employment_id="36082"
										class="calendar-item employment divi-1 divi-2 end duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>글링크미디어</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="30" employment_id="35905"
										class="calendar-item employment divi-1 end duty-3 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>기아자동차</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="31" employment_id="36101"
										class="calendar-item employment divi-3 end duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>모비데이즈</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="32" employment_id="35970"
										class="calendar-item employment divi-1 end duty-4 duty-5 duty-1 duty-2 duty-0 duty-7 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>삼양식품</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="33" employment_id="35980"
										class="calendar-item employment divi-2 end duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>엠포스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="34" employment_id="36027"
										class="calendar-item employment divi-2 end duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>엠포스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="35" employment_id="36029"
										class="calendar-item employment divi-2 end duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>엠포스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="36" employment_id="36094"
										class="calendar-item employment divi-1 divi-2 end duty-2 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>이베스트투자증권</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="37" employment_id="36115"
										class="calendar-item employment divi-1 divi-2 divi-3 end duty-2 duty-5 duty-1 duty-0 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>자이스코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="38" employment_id="36031"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-3 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>중앙치매센터</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="39" employment_id="36055"
										class="calendar-item employment divi-1 end duty-0 duty-6 duty-3 duty-4 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>충남대학교병원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="40" employment_id="35801"
										class="calendar-item employment divi-3 end duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>카카오엔터프라이즈</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="41" employment_id="35978"
										class="calendar-item employment divi-1 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>코리아세븐</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="42" employment_id="36073"
										class="calendar-item employment divi-1 divi-3 end duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>코오롱베니트</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="43" employment_id="35951"
										class="calendar-item employment divi-1 end duty-3 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>크로니아이티</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="44" employment_id="36069"
										class="calendar-item employment divi-2 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>티센크루프엘리베이터코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="45" employment_id="35995"
										class="calendar-item employment divi-2 divi-1 divi-4 end duty-1 duty-4 duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>팜스코</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="46" employment_id="36041"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-6 duty-4 duty-3 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국원자력안전재단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="47" employment_id="36019"
										class="calendar-item employment divi-1 end duty-2 duty-7 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한샘</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200217" index="48" employment_id="36133"
										class="calendar-item employment divi-1 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한샘</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">18</div>
								<div class="day-content" day="20200218"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200218" index="0" employment_id="36189"
										class="calendar-item employment divi-3 occa duty-1 duty-7 no-favorite">
										<div class="company">

											<div class="calendar-label occa">수</div>

											<div class="company-name">
												<span>에잇퍼센트</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200218" index="1" employment_id="36118"
										class="calendar-item employment divi-1 divi-2 start duty-0 duty-4 duty-6 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>KOTITI시험연구원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200218" index="2" employment_id="36176"
										class="calendar-item employment divi-2 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>글링크미디어</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200218" index="3" employment_id="36206"
										class="calendar-item employment divi-1 divi-2 start duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>녹십자지놈</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200218" index="4" employment_id="36178"
										class="calendar-item employment divi-1 divi-2 start duty-4 duty-6 duty-5 duty-2 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>두원공조</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200218" index="5" employment_id="36177"
										class="calendar-item employment divi-1 divi-4 start duty-3 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>서울지방변호사회</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200218" index="6" employment_id="36187"
										class="calendar-item employment divi-2 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>서주</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200218" index="7" employment_id="36175"
										class="calendar-item employment divi-2 start duty-0 duty-4 duty-3 duty-1 duty-2 duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>세방그룹</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200218" index="8" employment_id="36182"
										class="calendar-item employment divi-2 start duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>제너시스BBQ 그룹</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200218" index="9" employment_id="36186"
										class="calendar-item employment divi-1 divi-2 start duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>중앙치매센터</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200218" index="10" employment_id="36185"
										class="calendar-item employment divi-1 divi-2 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>크레비스파트너스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200218" index="11" employment_id="36179"
										class="calendar-item employment divi-4 start duty-0 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국문화예술교육진흥원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200218" index="12" employment_id="36181"
										class="calendar-item employment divi-1 divi-2 start duty-2 duty-4 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국야스카와전기</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200218" index="13" employment_id="36180"
										class="calendar-item employment divi-1 divi-4 divi-2 start duty-2 duty-7 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국유나이티드제약</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200218" index="14" employment_id="36183"
										class="calendar-item employment divi-4 divi-2 divi-1 start duty-6 duty-4 duty-10 duty-0 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국콘텐츠진흥원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200218" index="15" employment_id="36174"
										class="calendar-item employment divi-1 divi-3 start duty-2 duty-1 duty-4 duty-5 duty-10 duty-0 duty-7 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>현대엘앤씨</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200218" index="16" employment_id="36049"
										class="calendar-item employment divi-1 divi-3 divi-4 end duty-0 duty-2 duty-9 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>공항철도</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200218" index="17" employment_id="36129"
										class="calendar-item employment divi-1 end duty-0 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>삼영무역</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200218" index="18" employment_id="36099"
										class="calendar-item employment divi-4 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>푸르덴셜생명보험</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200218" index="19" employment_id="35973"
										class="calendar-item employment divi-2 divi-1 end duty-10 duty-0 duty-2 duty-1 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>하남도시공사</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200218" index="20" employment_id="35994"
										class="calendar-item employment divi-1 end duty-0 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국물기술인증원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200218" index="21" employment_id="36086"
										class="calendar-item employment divi-1 end duty-4 duty-6 duty-1 duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한미약품</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding today"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">19</div>
								<div class="day-content" day="20200219"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200219" index="0" employment_id="36200"
										class="calendar-item employment divi-1 divi-2 occa duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label occa">수</div>

											<div class="company-name">
												<span>Deloitte 안진회계법인</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="1" employment_id="36193"
										class="calendar-item employment divi-1 occa duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label occa">수</div>

											<div class="company-name">
												<span>네오위즈</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="2" employment_id="36204"
										class="calendar-item employment divi-1 occa duty-0 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label occa">수</div>

											<div class="company-name">
												<span>펠릭스랩</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="3" employment_id="36196"
										class="calendar-item employment divi-4 start duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>AXA손해보험</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="4" employment_id="36195"
										class="calendar-item employment divi-2 start duty-1 duty-2 duty-4 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>SKC인프라서비스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="5" employment_id="36169"
										class="calendar-item employment divi-1 start duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>경신홀딩스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="6" employment_id="36205"
										class="calendar-item employment divi-1 divi-2 start duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>링크제니시스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="7" employment_id="36158"
										class="calendar-item employment divi-1 divi-2 start duty-0 duty-4 duty-5 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>세아베스틸·세아창원특수강</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="8" employment_id="36190"
										class="calendar-item employment divi-1 divi-2 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>스타럭스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="9" employment_id="36203"
										class="calendar-item employment divi-3 start duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>아데코코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="10" employment_id="36191"
										class="calendar-item employment divi-2 start duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>엠포스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="11" employment_id="36192"
										class="calendar-item employment divi-1 start duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>유영제약</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="12" employment_id="36198"
										class="calendar-item employment divi-3 start duty-0 duty-3 duty-4 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>패스트캠퍼스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="13" employment_id="36197"
										class="calendar-item employment divi-1 start duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국미니스톱</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="14" employment_id="36194"
										class="calendar-item employment divi-1 divi-2 start duty-3 duty-0 duty-4 duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국화학연구원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="15" employment_id="36201"
										class="calendar-item employment divi-1 start duty-3 duty-4 duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>현대자동차</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="16" employment_id="36202"
										class="calendar-item employment divi-1 start duty-3 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>현대자동차</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="17" employment_id="36159"
										class="calendar-item employment divi-3 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>EY한영</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="18" employment_id="36095"
										class="calendar-item employment divi-2 divi-1 end duty-2 duty-1 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>JTBC미디어컴</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="19" employment_id="36132"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-4 duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>STX중공업</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="20" employment_id="36131"
										class="calendar-item employment divi-1 end duty-0 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>농협자산관리회사</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="21" employment_id="36122"
										class="calendar-item employment divi-2 divi-1 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>모던하우스 / 버터</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="22" employment_id="36004"
										class="calendar-item employment divi-1 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>생명보험협회</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="23" employment_id="36088"
										class="calendar-item employment divi-4 end duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>아마존웹서비스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="24" employment_id="35873"
										class="calendar-item employment divi-1 divi-2 end duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>온라인팜</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="25" employment_id="36138"
										class="calendar-item employment divi-1 end duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>이크레더블</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="26" employment_id="36037"
										class="calendar-item employment divi-2 divi-1 end duty-3 duty-4 duty-7 duty-0 duty-1 duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>창신INC</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="27" employment_id="35967"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>키움투자자산운용</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="28" employment_id="35963"
										class="calendar-item employment divi-4 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>티센크루프엘리베이터코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="29" employment_id="35888"
										class="calendar-item employment divi-1 end duty-6 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국신용평가</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200219" index="30" employment_id="35959"
										class="calendar-item employment divi-2 divi-4 end duty-0 duty-3 duty-5 duty-2 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>홍익대학교</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">20</div>
								<div class="day-content" day="20200220"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200220" index="0" employment_id="36166"
										class="calendar-item employment divi-1 divi-2 start duty-0 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>차세대융합기술연구원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200220" index="1" employment_id="36161"
										class="calendar-item employment divi-1 divi-2 divi-4 start duty-0 duty-10 duty-6 duty-2 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label start">시</div>

											<div class="company-name">
												<span>한국정보화진흥원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200220" index="2" employment_id="36052"
										class="calendar-item employment divi-1 divi-3 end duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>DB하이텍</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200220" index="3" employment_id="36006"
										class="calendar-item employment divi-1 end duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>DHL Global Forwarding Korea</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200220" index="4" employment_id="36108"
										class="calendar-item employment divi-1 end duty-2 duty-0 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>GS엠비즈</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200220" index="5" employment_id="36126"
										class="calendar-item employment divi-1 end duty-8 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>SBS미디어넷</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200220" index="6" employment_id="36154"
										class="calendar-item employment divi-1 end duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>경희의료원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200220" index="7" employment_id="36044"
										class="calendar-item employment divi-1 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>교원그룹</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200220" index="8" employment_id="36152"
										class="calendar-item employment divi-2 divi-1 end duty-0 duty-7 duty-4 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>동국제약</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200220" index="9" employment_id="36081"
										class="calendar-item employment divi-2 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>법무법인태평양</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200220" index="10" employment_id="36018"
										class="calendar-item employment divi-1 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>엠디엠플러스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200220" index="11" employment_id="35883"
										class="calendar-item employment divi-1 divi-3 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>연구개발특구진흥재단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">21</div>
								<div class="day-content" day="20200221"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200221" index="0" employment_id="36064"
										class="calendar-item employment divi-1 end duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>WDB공학</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200221" index="1" employment_id="36098"
										class="calendar-item employment divi-1 end duty-0 duty-1 duty-10 duty-6 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>건설공제조합</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200221" index="2" employment_id="36089"
										class="calendar-item employment divi-1 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>기아자동차</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200221" index="3" employment_id="35987"
										class="calendar-item employment divi-4 end duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>동국대학교 자율기술연구센터</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200221" index="4" employment_id="36123"
										class="calendar-item employment divi-1 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>동아일보</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200221" index="5" employment_id="35927"
										class="calendar-item employment divi-1 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>법무법인 율촌</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200221" index="6" employment_id="36113"
										class="calendar-item employment divi-1 divi-2 end duty-3 duty-4 duty-0 duty-1 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>선박해양플랜트연구소</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200221" index="7" employment_id="36038"
										class="calendar-item employment divi-1 divi-2 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>시프티</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200221" index="8" employment_id="36181"
										class="calendar-item employment divi-1 divi-2 end duty-2 duty-4 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국야스카와전기</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200221" index="9" employment_id="36030"
										class="calendar-item employment divi-1 divi-3 end duty-0 duty-4 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국연구재단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200221" index="10" employment_id="36010"
										class="calendar-item employment divi-1 divi-2 divi-4 end duty-3 duty-4 duty-0 duty-1 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국해양과학기술원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200221" index="11" employment_id="36110"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-5 duty-1 duty-2 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>휴비스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">22</div>
								<div class="day-content" day="20200222"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''"></div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
						</div>
						<!-- end ngRepeat: week in weeks -->
						<div class="calendar-week ng-scope ng-isolate-scope week-4"
							ng-class="'week-' + $index" ng-repeat="week in weeks"
							watch-height="" on-height-change="changeHeight($index, height)">
							<!-- ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">23</div>
								<div class="day-content" day="20200223"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200223" index="0" employment_id="36130"
										class="calendar-item employment divi-1 divi-2 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>AXA손해보험</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="1" employment_id="36128"
										class="calendar-item employment divi-1 divi-2 end duty-1 duty-4 duty-5 duty-2 duty-6 duty-8 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>JW중외제약</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="2" employment_id="36124"
										class="calendar-item employment divi-1 end duty-2 duty-0 duty-5 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>KSM</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="3" employment_id="36144"
										class="calendar-item employment divi-1 divi-3 end duty-0 duty-7 duty-1 duty-2 duty-4 duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>SPC삼립</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="4" employment_id="36090"
										class="calendar-item employment divi-1 end duty-1 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>기아자동차</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="5" employment_id="36199"
										class="calendar-item employment divi-4 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>기아자동차</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="6" employment_id="36171"
										class="calendar-item employment divi-1 end duty-2 duty-0 duty-5 duty-6 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>깨끗한나라</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="7" employment_id="36178"
										class="calendar-item employment divi-1 divi-2 end duty-4 duty-6 duty-5 duty-2 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>두원공조</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="8" employment_id="36001"
										class="calendar-item employment divi-1 end duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>모바일리더/인지소프트</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="9" employment_id="36077"
										class="calendar-item employment divi-4 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>빅히트엔터테인먼트</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="10" employment_id="36175"
										class="calendar-item employment divi-2 end duty-0 duty-4 duty-3 duty-1 duty-2 duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>세방그룹</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="11" employment_id="36141"
										class="calendar-item employment divi-3 end duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>소니코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="12" employment_id="36142"
										class="calendar-item employment divi-2 divi-1 end duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>소니코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="13" employment_id="36025"
										class="calendar-item employment divi-1 divi-2 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>스포카</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="14" employment_id="36042"
										class="calendar-item employment divi-1 divi-2 end duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>시프티</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="15" employment_id="36036"
										class="calendar-item employment divi-1 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>신성통상</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="16" employment_id="35947"
										class="calendar-item employment divi-1 divi-2 end duty-2 duty-1 duty-7 duty-0 duty-6 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>아름다운가게</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="17" employment_id="36164"
										class="calendar-item employment divi-1 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>아이마켓코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="18" employment_id="36151"
										class="calendar-item employment divi-1 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>아주대학교의료원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="19" employment_id="35985"
										class="calendar-item employment divi-2 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>아주약품</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="20" employment_id="35986"
										class="calendar-item employment divi-1 end duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>아주약품</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="21" employment_id="36068"
										class="calendar-item employment divi-1 divi-2 end duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>오케이몰</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="22" employment_id="35813"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>온누리아이코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="23" employment_id="36167"
										class="calendar-item employment divi-2 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>이엔에프테크놀로지</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="24" employment_id="36162"
										class="calendar-item employment divi-2 divi-1 end duty-0 duty-4 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>이지바이오</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="25" employment_id="36112"
										class="calendar-item employment divi-3 end duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>존슨앤드존슨 서지컬비젼</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="26" employment_id="36070"
										class="calendar-item employment divi-1 divi-2 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>키움투자자산운용</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="27" employment_id="36071"
										class="calendar-item employment divi-1 divi-2 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>키움투자자산운용</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="28" employment_id="36017"
										class="calendar-item employment divi-2 end duty-7 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>튼튼영어</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="29" employment_id="36120"
										class="calendar-item employment divi-1 end duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>푸르덴셜생명보험</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="30" employment_id="36060"
										class="calendar-item employment divi-2 divi-1 end duty-0 duty-6 duty-3 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>현대엔지비</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="31" employment_id="36092"
										class="calendar-item employment divi-1 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>현대자동차</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="32" employment_id="36201"
										class="calendar-item employment divi-1 end duty-3 duty-4 duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>현대자동차</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200223" index="33" employment_id="36125"
										class="calendar-item employment divi-4 end duty-1 duty-2 duty-4 duty-0 duty-5 duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>효성굿스프링스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">24</div>
								<div class="day-content" day="20200224"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200224" index="0" employment_id="36195"
										class="calendar-item employment divi-2 end duty-1 duty-2 duty-4 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>SKC인프라서비스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200224" index="1" employment_id="36097"
										class="calendar-item employment divi-2 end duty-0 duty-2 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>SK텔레시스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200224" index="2" employment_id="36111"
										class="calendar-item employment divi-1 divi-2 end duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>녹십자이엠</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200224" index="3" employment_id="36155"
										class="calendar-item employment divi-1 divi-2 end duty-2 duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>선진뷰티사이언스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200224" index="4" employment_id="36156"
										class="calendar-item employment divi-2 divi-1 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>세종문화회관</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200224" index="5" employment_id="36102"
										class="calendar-item employment divi-3 end duty-0 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>신한아이타스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200224" index="6" employment_id="36149"
										class="calendar-item employment divi-2 end duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>엠포스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200224" index="7" employment_id="36150"
										class="calendar-item employment divi-2 end duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>엠포스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200224" index="8" employment_id="36191"
										class="calendar-item employment divi-2 end duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>엠포스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200224" index="9" employment_id="36160"
										class="calendar-item employment divi-4 end duty-0 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>유안타증권</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200224" index="10" employment_id="36026"
										class="calendar-item employment divi-1 divi-2 end duty-10 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>티센크루프엘리베이터코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200224" index="11" employment_id="36165"
										class="calendar-item employment divi-3 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국산업인력공단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200224" index="12" employment_id="36145"
										class="calendar-item employment divi-3 end duty-0 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국수출입은행</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">25</div>
								<div class="day-content" day="20200225"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200225" index="0" employment_id="36119"
										class="calendar-item employment divi-1 divi-2 end duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>KDI국제정책대학원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200225" index="1" employment_id="36127"
										class="calendar-item employment divi-4 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>NE능률</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200225" index="2" employment_id="36075"
										class="calendar-item employment divi-1 end duty-0 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>라모스테크놀러지</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200225" index="3" employment_id="36117"
										class="calendar-item employment divi-2 divi-1 end duty-1 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>로지스올</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200225" index="4" employment_id="36190"
										class="calendar-item employment divi-1 divi-2 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>스타럭스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200225" index="5" employment_id="36051"
										class="calendar-item employment divi-2 end duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>트레이</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200225" index="6" employment_id="36087"
										class="calendar-item employment divi-3 end duty-0 duty-1 duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국가스안전공사</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">26</div>
								<div class="day-content" day="20200226"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200226" index="0" employment_id="36118"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-4 duty-6 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>KOTITI시험연구원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200226" index="1" employment_id="36050"
										class="calendar-item employment divi-4 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>UPS 코리아 </span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200226" index="2" employment_id="36163"
										class="calendar-item employment divi-1 end duty-4 duty-1 duty-2 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>기아자동차</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200226" index="3" employment_id="36109"
										class="calendar-item employment divi-3 end duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>대림문화재단</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200226" index="4" employment_id="35932"
										class="calendar-item employment divi-1 end duty-1 duty-2 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>서브원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200226" index="5" employment_id="36182"
										class="calendar-item employment divi-2 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>제너시스BBQ 그룹</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200226" index="6" employment_id="36174"
										class="calendar-item employment divi-1 divi-3 end duty-2 duty-1 duty-4 duty-5 duty-10 duty-0 duty-7 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>현대엘앤씨</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">27</div>
								<div class="day-content" day="20200227"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200227" index="0" employment_id="36170"
										class="calendar-item employment divi-3 end duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>노벨리스코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200227" index="1" employment_id="35870"
										class="calendar-item employment divi-1 divi-2 end duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>서주</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200227" index="2" employment_id="36114"
										class="calendar-item employment divi-1 divi-4 end duty-0 duty-3 duty-4 duty-6 duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>전략물자관리원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200227" index="3" employment_id="36166"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>차세대융합기술연구원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200227" index="4" employment_id="36161"
										class="calendar-item employment divi-1 divi-2 divi-4 end duty-0 duty-10 duty-6 duty-2 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국정보화진흥원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">28</div>
								<div class="day-content" day="20200228"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200228" index="0" employment_id="36134"
										class="calendar-item employment divi-3 end duty-0 duty-8 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>AXA손해보험</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200228" index="1" employment_id="35981"
										class="calendar-item employment divi-3 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>EY한영</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200228" index="2" employment_id="36140"
										class="calendar-item employment divi-1 divi-2 end duty-0 duty-1 duty-2 duty-3 duty-7 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>누리미디어(DBpia)</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200228" index="3" employment_id="35975"
										class="calendar-item employment divi-1 divi-2 end duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>동국대학교</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200228" index="4" employment_id="36148"
										class="calendar-item employment divi-3 end duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>메이븐클라우드서비스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200228" index="5" employment_id="36177"
										class="calendar-item employment divi-1 divi-4 end duty-3 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>서울지방변호사회</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200228" index="6" employment_id="36172"
										class="calendar-item employment divi-2 divi-1 divi-4 divi-3 end duty-2 duty-0 duty-3 duty-4 duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>우체국금융개발원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200228" index="7" employment_id="36186"
										class="calendar-item employment divi-1 divi-2 end duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>중앙치매센터</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200228" index="8" employment_id="36198"
										class="calendar-item employment divi-3 end duty-0 duty-3 duty-4 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>패스트캠퍼스</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200228" index="9" employment_id="36054"
										class="calendar-item employment divi-1 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>하이네켄코리아</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200228" index="10" employment_id="36179"
										class="calendar-item employment divi-4 end duty-0 duty-6 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국문화예술교육진흥원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200228" index="11" employment_id="35792"
										class="calendar-item employment divi-2 end duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국알테어</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200228" index="12" employment_id="36183"
										class="calendar-item employment divi-4 divi-2 divi-1 end duty-6 duty-4 duty-10 duty-0 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국콘텐츠진흥원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200228" index="13" employment_id="36194"
										class="calendar-item employment divi-1 divi-2 end duty-3 duty-0 duty-4 duty-5 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한국화학연구원</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200228" index="14" employment_id="36020"
										class="calendar-item employment divi-3 end duty-0 duty-2 duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>한화생명</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
							<div class="calendar-cell ng-scope"
								ng-repeat="day in weekDays($index) ">
								<div class="day-label ng-binding"
									ng-bind="::day.date | date:'d'"
									ng-class="{today: day.date.equals(today)}">29</div>
								<div class="day-content" day="20200229"
									ng-dblclick="calendar_mode === MODE.SCHEDULE ? open_schedule_modal(undefined, day.date) : ''">
									<div day="20200229" index="0" employment_id="35964"
										class="calendar-item employment divi-1 divi-2 end duty-2 duty-9 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>Booking.com</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200229" index="1" employment_id="36056"
										class="calendar-item employment divi-3 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>EY한영</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200229" index="2" employment_id="36139"
										class="calendar-item employment divi-2 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>EY한영</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200229" index="3" employment_id="36153"
										class="calendar-item employment divi-1 end duty-2 duty-3 duty-6 duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>LG전자</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200229" index="4" employment_id="35907"
										class="calendar-item employment divi-1 divi-2 end duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>TAGby</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200229" index="5" employment_id="36176"
										class="calendar-item employment divi-2 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>글링크미디어</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200229" index="6" employment_id="36157"
										class="calendar-item employment divi-4 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>스마일게이트 엔터테인먼트</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200229" index="7" employment_id="36135"
										class="calendar-item employment divi-1 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>씨젠</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200229" index="8" employment_id="35898"
										class="calendar-item employment divi-1 end duty-1 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>위메프</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200229" index="9" employment_id="35369"
										class="calendar-item employment divi-3 end duty-0 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>카카오엔터프라이즈</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200229" index="10" employment_id="35427"
										class="calendar-item employment divi-3 end duty-3 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>카카오엔터프라이즈</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200229" index="11" employment_id="35489"
										class="calendar-item employment divi-3 end duty-2 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>카카오엔터프라이즈</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>

									<div day="20200229" index="12" employment_id="36168"
										class="calendar-item employment divi-1 divi-2 end duty-4 no-favorite">
										<div class="company">

											<div class="calendar-label end">끝</div>

											<div class="company-name">
												<span>태양3C</span>
											</div>
										</div>

										<div class="favorite">
											<img class="item-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png ">
											<img class="item-no-favorite"
												src="https://jasoseol.com/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
										</div>

									</div>
								</div>
							</div>
							<!-- end ngRepeat: day in weekDays($index) -->
						</div>
						<!-- end ngRepeat: week in weeks -->
						<div class="request-recruit"
							ng-class="{ 'open-chat': show_chat_window }"
							ng-click="openRequestRecruitModal()">
							<img
								src="/assets/recruit/request_recruit-c3a4aebaf7777803190981cacf943eeaebbb7d2b7d1737893f66811243fa086a.png">
						</div>
					</div>
				</div>


				<!-- ngIf: showLeftCalendar -->
				<div class="calendar-left ng-scope" ng-if="showLeftCalendar">
					<div class="small-calendar">
						<div class="small-calendar-title">
							<i class="prev material-icons"
								ng-click="miniCalendar.addMonth(-1)">chevron_left</i> <span
								class="current ng-binding"
								ng-bind="miniCalendar.date | date: 'yyyy.MM'">2020.02</span> <i
								class="next material-icons" ng-click="miniCalendar.addMonth(1)">chevron_right</i>
						</div>

						<div class="dayname-container">
							<!-- ngRepeat: dayname in ::kor_daynames -->
							<div class="day-label name-of-days ng-binding ng-scope"
								ng-bind="::dayname" ng-repeat="dayname in ::kor_daynames">일</div>
							<!-- end ngRepeat: dayname in ::kor_daynames -->
							<div class="day-label name-of-days ng-binding ng-scope"
								ng-bind="::dayname" ng-repeat="dayname in ::kor_daynames">월</div>
							<!-- end ngRepeat: dayname in ::kor_daynames -->
							<div class="day-label name-of-days ng-binding ng-scope"
								ng-bind="::dayname" ng-repeat="dayname in ::kor_daynames">화</div>
							<!-- end ngRepeat: dayname in ::kor_daynames -->
							<div class="day-label name-of-days ng-binding ng-scope"
								ng-bind="::dayname" ng-repeat="dayname in ::kor_daynames">수</div>
							<!-- end ngRepeat: dayname in ::kor_daynames -->
							<div class="day-label name-of-days ng-binding ng-scope"
								ng-bind="::dayname" ng-repeat="dayname in ::kor_daynames">목</div>
							<!-- end ngRepeat: dayname in ::kor_daynames -->
							<div class="day-label name-of-days ng-binding ng-scope"
								ng-bind="::dayname" ng-repeat="dayname in ::kor_daynames">금</div>
							<!-- end ngRepeat: dayname in ::kor_daynames -->
							<div class="day-label name-of-days ng-binding ng-scope"
								ng-bind="::dayname" ng-repeat="dayname in ::kor_daynames">토</div>
							<!-- end ngRepeat: dayname in ::kor_daynames -->
							<!-- ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">26</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">27</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">28</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">29</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">30</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">31</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">1</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">2</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">3</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">4</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">5</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">6</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">7</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">8</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">9</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">10</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">11</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">12</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">13</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">14</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">15</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">16</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">17</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">18</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope today"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">19</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">20</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">21</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">22</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">23</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">24</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">25</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">26</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">27</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">28</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
							<div class="day-label days ng-binding ng-scope"
								ng-repeat="day in miniCalendar.days" ng-bind="day | date: 'd'"
								ng-class="{ 'today': day.isToday() }"
								ng-click="miniCalendar.select(day)">29</div>
							<!-- end ngRepeat: day in miniCalendar.days -->
						</div>
					</div>

					<div class="gg-items">
						<!-- ngRepeat: gg in ggs -->
					</div>


				</div>
				<!-- end ngIf: showLeftCalendar -->
			</div>
			<!-- ngIf: recruitSlide.isShow -->
		</div>
	</div>



</body>
</html>

