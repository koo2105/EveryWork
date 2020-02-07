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

</body>
</html>