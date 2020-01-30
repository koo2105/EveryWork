<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>EveryWork</title>
<link rel="stylesheet" type="text/css" href="resources/jsLib/navBar.css">
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
			<div class="blog-category-container">

				<div class="category-name">EveryWork활용하기</div>
				<div class="posts">
					<a class="post"  href="labDetail">
						<div class="post-thumbnail">
							<img src="resources/img/aaaa.jpg" width="150" height="150">
						</div>
						<div class="post-info">
							<div class="title">[자소서 잘 쓰는 법 #8. 글 잘 쓰는 방법] 평소에 글쓰기 실력을
								향상시킬 수 있는 5가지 방법을 알려드립니다!</div>

							<div class="date-and-count">2017-03-23 | 조회수 43,309</div>

							<div class="description">‘회사 생활을 하면서 보고서든 기획서든 글 쓸 일이 많다던데,
								그래서 자기소개서도 일종의 글쓰기 능력 테스트라는 말도 있던데… 나에겐 너무 어려워!ㅠ.ㅠ’ 좌절하지 말고
								자소설닷컴이 알려드리는 &lt;글쓰기 실력을 향상할 수 있는 5가지 방법&gt;을 따라 해보세요! 자기소개서를 쓸
								때 도움이 될 것입니다!</div>


						</div>
					</a> 
					<a class="post"  href="labDetail">
						<div class="post-thumbnail">
							<img src="resources/img/bbbb.jpg" width="150" height="150">
						</div>
						<div class="post-info">
							<div class="title">[자소서 잘 쓰는 법 #7. 특별한 경험 편] 내 인생은 평범하지만,
								최대한 특별하게 써봅시다!</div>

							<div class="date-and-count">2017-03-06 | 조회수 79,312</div>

							<div class="description">‘특별한’이라는 말 때문에 겁먹지 않아도 괜찮아요! 특별한 게
								특이한 건 아니니까요! 실패한 경험, 성취한 경험, 리더십 경험, 창의적 문제 해결 경험, 직무 관련 경험까지! 총
								5개의 특별한 경험을 잘 쓰는 법! 함께 알아보아요~</div>


						</div>
					</a> 
					<a class="post"  href="labDetail">
						<div class="post-thumbnail">
							<img src="resources/img/cccc.jpg" width="150" height="150">
						</div>
						<div class="post-info">
							<div class="title">[자소서 잘 쓰는 법 #6. 성격의 장단점 편] 정말 성격의 단점을
								솔직하게 써도 될까요? 고민된다면 확인해보세요!</div>

							<div class="date-and-count">2017-03-06 | 조회수 156,625</div>

							<div class="description">착한 사람을 뽑고 싶어서 이런 질문을 하는 게 아니라, 회사와
								잘 맞는 사람을 찾기 위해서 묻는 거랍니다! &lt;성격의 장단점&gt;은 어떻게 작성해야 좋을까요? 성격의 장점을
								쓸 때 알아야 할 내용 3가지와 단점을 쓸 때 주의할 사항 2가지로 정리해보았습니다!</div>


						</div>
					</a>

				</div>
				<div class="text-center"></div>
			</div>

		</div>
	</div>



</body>
</html>