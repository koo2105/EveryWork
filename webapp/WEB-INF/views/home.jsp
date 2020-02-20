<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
   <title>EveryWork</title>
	<link rel="stylesheet" type="text/css" href="resources/jsLib/homeStyle.css">
	<link rel="stylesheet" type="text/css" href="resources/jsLib/jobStyle.css">
	
	<script src="resources/jsLib/namchulAjax.js"></script>
</head>
<body>

<%@ include file="/WEB-INF/views/everyUsing/navBar.jsp" %>


<!-- banner -->
<div class="main-banner">
 <a href="http://www.naver.com"><img src="./resources/img/test.jpg"/></a>
 
</div> <!-- end main-banner -->
<%-- 	
	<div class="wrap-container">
		<div class="wrap">
			<div class="wrap-title">
			<c:if test="${loginID !=null}">
			<span class="main-title"><strong>${loginID}</strong></span><span class="title">님 맞춤 공고</span> 
			</c:if>
			<span class="sub-title">EveryWork의 이용 패턴을 분석해 연관성 높은 공고를 추천합니다.</span></div>
			<div class="employments-sets">
				<c:forEach var="jh" items="${JobList}">
				<div class="wrap-item-top">
					 <div class="logo"> 
					<a href="#"><img width="190px" height="190px" src="${jh.jobopen_pimg}"></a>
					</div>
						<div class="company-name">${jh.jobopen_company}</div>
						</div> 
				</c:forEach>
				</div>
				
		</div>
	</div>
	 --%>
	
	
	
	
	 <div class="recommended-employments-container">
		<div class="inner-wrapper">
			<div class="title-container">
				<!-- ngIf: !userSignedIn -->
				<c:if test="${loginID ==null}">
				<span class="main-title ng-scope" >로그인하고
					<strong>나의 맞춤 공고</strong>를 받아보세요!
				</span>
				</c:if>
				<c:if test="${loginID !=null}">
				<span class="main-title ng-scope" ><strong>${loginID}</strong>
				님 맞춤 공고
				</span>
				</c:if>
				<!-- end ngIf: !userSignedIn -->
				<!-- ngIf: userSignedIn -->
				<span class="sub-title">EveryWork의 이용 패턴을 분석해 연관성 높은 공고를 추천합니다.</span>
			</div>
			
			<div class="employments-container">
				<div class="employments">
					<div class="employments-sets">
						<div class="employments-set ">
						<c:forEach var="jh" items="${JobList}">
							<div class="employment ng-scope" onclick="jDetailOpen('${jh.jobopen_id}')">
								<!-- <div class="cover"></div> -->
								<div class="logo">
									<a href="#"><img src="${jh.jobopen_pimg}"></a>
								</div>
								<div class="company-name dotdotdot ng-binding
								">${jh.jobopen_company}</div>
							</div>
							</c:forEach>
						</div>
						<!-- end employments-set set-0 -->
					</div>
					<!--  end employments-sets -->
				</div>
				<!-- end employments -->
			</div>
			<!-- end employments-container -->
		</div>
		<!-- end inner-wrapper -->
	</div>
	<!-- end recommended-employments-container -->
	
	
	<div class="jobDetail-div"></div>
	
	
	
	
	
	
	
	
	
	
	
	
	
	

<!-- employments -->


<div class="top-employments-container">

	<div class="in-24-hours">
		<div class="title">
                  최근 게시된 인기공고
		</div>
		<div class="top-employments">
			<div class="items">
				<c:forEach var="pl" items="${PopularList}" varStatus="pvs">
				<div class="item" onclick="location.href='jobopenDetail?jobopen_id=${pl.jobopen_id}'" > 
				<%-- <a href="jobopenDetail?jobopen_id=${pl.jobopen_id}"> --%>
					<div class="item-number">${pvs.count}</div>
						<div class="item-detail">
							<div class="item-name-container">
								<div class="item-name">${pl.jobopen_company}</div>
									<div class="item-name"></div>
									<span> ${pl.endDday}일 남음 | </span> 
										<span>${pl.jobopen_count}</span>
										명 작성
									</div>
							</div>
							<!-- </a> -->
				</div>
			</c:forEach>
			
		
		
			
			</div> <!-- end items -->
		</div>
	</div>


 	<div class="in-this-week">
		<div class="title">
          7일 내에 마감하는 인기공고
		</div>
		<div class="top-employments">
			<div class="items">
			<c:forEach var="twl" items="${thisWeekList}" varStatus="tvs" >
				<div class="item" onclick="location.href='jobopenDetail?jobopen_id=${twl.jobopen_id}'">
					<div class="item-number">${tvs.count}</div>
						<div class="item-detail">
							<div class="item-name-container">
								<div class="item-name">${twl.jobopen_company}</div>
									<div class="item-name"></div>
										<span> ${twl.endDday}일 남음 | </span>
										<span>${twl.jobopen_count}</span>
										명 작성
									</div>
							</div>
				</div>
				</c:forEach>
			</div><!-- end items -->
		</div>
	</div> <!-- end in-this-week --> 
	

	
	
</div><!-- top-employments-container -->
<div class="question-link">
	<div>
		<a href="#"><img src="./resources/img/question.png"/></a> 
		<div class="sub-title"><a href='#' onclick='answerOpen()'>문의하기</a></div>
	</div>

</div>


<div class="footer-area">
      <div class="footer-content">
  <div class="social-media">
    <a href="https://ko-kr.facebook.com/jasoseol" target="_blank"><img src="https://jasoseol.com/assets/index/footer-facebook-icon-f2c8575d54456f8dd70b33808bc67f4bdfaac09e35cf852fcbed6ae8fa390409.png"></a>
  </div>
  <div class="about">
    <a href='#' onclick='answerOpen()'>문의하기</a> |
    <a href="privacy">개인정보취급방침</a> |
    <a href='#' onclick='adverOpen()'>제휴/광고</a>
  </div>
  <div class="info-list">
    <div>
      <span>(주)냄춀닷컴(대표: 김남쵸리)</span> |
      <span>개인정보보호관리자: 디제이쿠(a.k.a.구준엽)</span>
    </div>
    <div>
      <span>그린컴퓨터 아카데미(금곡동 지영빌딩 505호)</span> |
      <span>대표번호: 010-1234-4567 광고문의: 010-2222-3333</span>
    </div>
    <div>
      <span>사업자등록: 111-11-00000</span> |
      <span>직업정보제공사업: J1200020160017</span> |
      <span>통신판매업: 2020-서울청담-00000</span>
    </div>
    <div>
      <span>Copyright Anchoreer Co., Inc. All rights reserved.</span>
    </div>
  </div>
</div>
    </div>
    
<div class="admin-container">
    <div class="admin-title"><a href="adminloginf">관리자페이지</a>
    </div>
</div>

<div class="answer-div">
<jsp:include page="/WEB-INF/views/member/answerForm.jsp"></jsp:include>
</div>

<div class="adver-div">
<jsp:include page="/WEB-INF/views/member/advertiseForm.jsp"></jsp:include>
</div>

<%-- <c:if test="${HisGo=='H'}">
 <script type="text/javascript">
 
 history.go(-1);
 
 </script>
</c:if> --%>

<c:if test="${Error=='L'}">
<script>
	alert('아이디 또는 비밀번호가 틀렸습니다.')
</script>
</c:if>
</body>
</html>