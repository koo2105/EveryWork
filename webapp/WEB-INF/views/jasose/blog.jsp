<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Blog</title>
<link rel="stylesheet" type="text/css"
	href="resources/jsLib/blogStyle.css">

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
						<a>뉴스 클리핑</a>
					</div>
					<div class="posts">
						<a class="post">
							<div class="post-thumbnail">
								<img src="resources/img/simson7.gif" width="200" height="200">
							</div>
							<div class="post-info">
								<div class="title">[뉴스 클리핑 #15] 은행 취업 /공기업 체험형 인턴/희망 연봉 등
								</div>
								<div class="date-and-count">2020-01-21 | 조회수 191</div>
								<div class="description">[뉴스 클리핑 미리보기] 페이스펙이 뭔지 아시나요?
									카드업계, 신규채용 줄이고 OO경력자 뽑았다. 은행 취업 전략 잘 짜기! 취준생 5명 중 1명 최종합격 후
									입사포기하는 이유. GS파워, 셀트리온, KT&amp;G 등 인기 채용 기업 소식까지 지금 바로 확인하세요!</div>
							</div>
						</a> <a class="post">
							<div class="post-thumbnail">
								<img src="resources/img/hhh.jpg" width="200" height="200">
							</div>
							<div class="post-info">
								<div class="title">[뉴스 클리핑 #14] 공공기관 채용/ 공무원 시험/ 한국사 등</div>
								<div class="date-and-count">2020-01-13 | 조회수 1,164</div>
								<div class="description">[뉴스클리핑 미리보기] 취준생들이 반드시 알아야 할
									'2020 취업 전략' 올해 공공기관 2만 5천여 명 신규 채용 예정! 2030세대 얼마나 많이 공무원 시험
									볼까? GSEPS, 위메프, NS홈쇼핑 등 인기 채용 기업 소식까지 지금 바로 확인하세요!</div>
							</div>
						</a>
					</div>
				</div>

				<div class="category">
					<div class="category-name">
						<a>EveryWork 활용하기</a>
					</div>
					<div class="posts">
						<a class="post">
							<div class="post-thumbnail">
								<img src="resources/img/jyp3.jpg" width="200" height="200">
							</div>
							<div class="post-info">
								<div class="title">[데이터랩 #11] 자소서 잘 쓰는 법을 한 곳에서 확인하세요.</div>
								<div class="date-and-count">2019-01-28 | 조회수 5017</div>
								<div class="description">지원자 분석과 합격자 분석이 '데이터랩'으로 새롭게
									론칭되었어요!</div>
							</div>
						</a> <a class="post">
							<div class="post-thumbnail">
								<img src="resources/img/ccc.gif" width="200" height="200">
							</div>
							<div class="post-info">
								<div class="title">[데이터랩 #11] 내 인생은 평범하지만, 최대한 특별하게 써봅시다!
								</div>
								<div class="date-and-count">2017-03-06 | 조회수 80000</div>
								<div class="description">‘내 인생 너무나도 평범한데… 어떻게 특별한 경험을
									써요?!’ 많은 지원자를 당혹스럽게 만드는 문항! 오늘은 ‘특별한 경험’ 문항 분석과 잘 쓰는 법을
									알아보겠습니다.</div>
							</div>
						</a>
					</div>
				</div>


				<div class="category">
					<div class="category-name">
						<a>자소서 잘 쓰는 법</a>
					</div>
					<div class="posts">
						<a class="post">
							<div class="post-thumbnail">
								<img src="resources/img/jyp2.jpg" width="200" height="200">
							</div>
							<div class="post-info">
								<div class="title">[#10 합격자분석] 최종 합격 후기 기능 추가</div>
								<div class="date-and-count">2018-11-19 | 조회수 5208</div>
								<div class="description">1. 합격자 분석을 통해 기업의 채용 성향을 파악하여 지원
									여부를 결정하는 등의 취업 전략을 세우거나 2. 합격자의 스펙을 확인하여 본인의 장단점을 파악하고 직무에 필요한
									요건을 준비하는데 참고한다는 의견이 많았습니다.</div>
							</div>
						</a> <a class="post">
							<div class="post-thumbnail">
								<img src="resources/img/hot.gif" width="200" height="200">
							</div>
							<div class="post-info">
								<div class="title">[#6 자기소개서 작성하기] 신규 사용자를 위한 자기소개서 작성 기능
									안내</div>
								<div class="date-and-count">2018-02-14 | 조회수 7347</div>
								<div class="description">먼저, 자소설닷컴은 채용 중인 공고를 쉽게 확인하고 바로
									자기소개서를 작성, 저장, 관리할 수 있도록 돕는 사이트입니다.</div>
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
