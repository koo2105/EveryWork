<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<html>
<head>
   <title>EveryWork</title>
	<link rel="stylesheet" type="text/css" href="resources/jsLib/homeStyle.css">
	<script src="resources/jsLib/namchulAjax.js"></script>
	

</head>
<body>

<%@ include file="/WEB-INF/views/everyUsing/navBar.jsp" %>


<!-- banner -->
<div class="main-banner">
 <a href="http://www.naver.com"><img src="./resources/img/test.jpg"/></a>
 
	<div class="wrap-container">
		<div class="wrap">
			<div class="wrap-title">
			<span class="main-title"><strong>${id}차근차근 쇠황금방울새</strong></span><span class="title">님 맞춤 공고</span> 
			<span class="sub-title">자소설닷컴 이용 패턴을 분석해 연관성 높은 공고를 추천합니다.</span></div>
				<div class="wrap-item-top"><a href="#"></a>1</div>
				<div class="wrap-item-top"><a href="#"></a>2</div>
				<div class="wrap-item-top"><a href="#"></a>3</div>
				<div class="wrap-item-top"><a href="#"></a>4</div>
				<div class="wrap-item-top"><a href="#"></a>5</div>
				<div class="wrap-item-bottom"><a href="#"></a>6</div>
				<div class="wrap-item-bottom"><a href="#"></a>7</div>
				<div class="wrap-item-bottom"><a href="#"></a>8</div>
				<div class="wrap-item-bottom"><a href="#"></a>9</div>
				<div class="wrap-item-bottom"><a href="#"></a>10</div>
		</div>
	</div>
</div> 

<!-- employments -->
<div class="top-employments-container">

	<div class="in-24-hours">
		<div class="title">
                  최근 게시된 인기공고
		</div>
		<div class="top-employments">
			<div class="items">
				<div class="item">
					<div class="item-number">1</div>
						<div class="item-detail">
							<div class="item-name-container">
								<div class="item-name">GS파워</div>
									<div class="item-name"></div>
										<span> 5일 남음 | </span>
										<span>1527</span>
										명 작성
									</div>
							</div>
				</div>
				<div class="item">
					<div class="item-number">2</div>
						<div class="item-detail">
							<div class="item-name-container">
								<div class="item-name">GS파워</div>
									<div class="item-name"></div>
										<span> 5일 남음 | </span>
										<span>1527</span>
										명 작성
									</div>
							</div>
				</div>
				<div class="item">
					<div class="item-number">3</div>
						<div class="item-detail">
							<div class="item-name-container">
								<div class="item-name">GS파워</div>
									<div class="item-name"></div>
										<span> 5일 남음 | </span>
										<span>1527</span>
										명 작성
									</div>
							</div>
				</div>
		
				<div class="item">
					<div class="item-number">4</div>
						<div class="item-detail">
							<div class="item-name-container">
								<div class="item-name">GS파워</div>
									<div class="item-name"></div>
										<span> 5일 남음 | </span>
										<span>1527</span>
										명 작성
									</div>
							</div>
				</div>
				<div class="item">
					<div class="item-number">5</div>
						<div class="item-detail">
							<div class="item-name-container">
								<div class="item-name">GS파워</div>
									<div class="item-name"></div>
										<span> 5일 남음 | </span>
										<span>1527</span>
										명 작성
									</div>
							</div>
				</div>
			</div>
		</div>
	</div>


	<div class="in-this-week">
		<div class="title">
          7일 내에 마감하는 인기공고
		</div>
		<div class="top-employments">
			<div class="items">
				<div class="item">
					<div class="item-number">1</div>
						<div class="item-detail">
							<div class="item-name-container">
								<div class="item-name">GS파워</div>
									<div class="item-name"></div>
										<span> 5일 남음 | </span>
										<span>1527</span>
										명 작성
									</div>
							</div>
				</div>
				<div class="item">
					<div class="item-number">2</div>
						<div class="item-detail">
							<div class="item-name-container">
								<div class="item-name">GS파워</div>
									<div class="item-name"></div>
										<span> 5일 남음 | </span>
										<span>1527</span>
										명 작성
									</div>
							</div>
				</div>
				<div class="item">
					<div class="item-number">3</div>
						<div class="item-detail">
							<div class="item-name-container">
								<div class="item-name">GS파워</div>
									<div class="item-name"></div>
										<span> 5일 남음 | </span>
										<span>1527</span>
										명 작성
									</div>
							</div>
				</div>
		
				<div class="item">
					<div class="item-number">4</div>
						<div class="item-detail">
							<div class="item-name-container">
								<div class="item-name">GS파워</div>
									<div class="item-name"></div>
										<span> 5일 남음 | </span>
										<span>1527</span>
										명 작성
									</div>
							</div>
				</div>
				<div class="item">
					<div class="item-number">5</div>
						<div class="item-detail">
							<div class="item-name-container">
								<div class="item-name">GS파워</div>
									<div class="item-name"></div>
										<span> 5일 남음 | </span>
										<span>1527</span>
										명 작성
									</div>
							</div>
				</div>
			</div>
		</div>
	</div>
	

	
	
</div><!-- top-employments-container -->
<div class="question-link">
	<div>
		<a href="#"><img src="./resources/img/question.png"/></a> 
		<div class="sub-title"><a href="#">문의하기</a></div>
	</div>

</div>


<div class="footer-area">
      <div class="footer-content">
  <div class="social-media">
    <a href="https://ko-kr.facebook.com/jasoseol" target="_blank"><img src="https://jasoseol.com/assets/index/footer-facebook-icon-f2c8575d54456f8dd70b33808bc67f4bdfaac09e35cf852fcbed6ae8fa390409.png"></a>
  </div>
  <div class="about">
    <a href="" ng-click="inquiry()">문의하기</a> |
    <a href="/privacy">개인정보취급방침</a> |
    <a href="" ng-click="partnership()">제휴/광고</a>
  </div>
  <div class="info-list">
    <div>
      <span>(주)앵커리어(대표: 윤상호)</span> |
      <span>개인정보보호관리자: 윤상호</span>
    </div>
    <div>
      <span>서울시 강남구 선릉로76길 20, 301호(대치동 유영빌딩)</span> |
      <span>대표번호: 02-6264-7582 광고문의: 02-6264-7581</span>
    </div>
    <div>
      <span>사업자등록: 138-87-00058</span> |
      <span>직업정보제공사업: J1200020160017</span> |
      <span>통신판매업: 2016-서울강남-00784</span>
    </div>
    <div>
      <span>Copyright Anchoreer Co., Inc. All rights reserved.</span>
    </div>
  </div>
</div>
    </div>
    
<div class="admin-container">
    <div class="admin-title"><a href="adminf">관리자페이지</a>
    </div>
</div>

</body>
</html>