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
	<nav>
		<div class="nav-container">
			<div class="nav-item nav-item-left nav-logo">
				<a href="home"><b>EveryWork</b></a>
			</div>
			<div class="nav-item nav-item-left nav-recruit">
				<a href="jobMain">채용공고</a>
			</div>
			<div class="nav-item nav-item-left nav-resume">
				<a href="resumeForm">자기소개서</a>
			</div>
			<div class="nav-item nav-item-left nav-spec">
				<a href="specForm">이력서</a>
			</div>
			<div class="nav-item nav-item-left nav-blog">
				<a href="blog">자소서연구소</a>
			</div>
			<c:if test="${loginID!=null}">
				<div class="nav-item nav-item-right nav-login-icon">
					<a href="#"><img src="./resources/img/login_icon.png"
						height="25px"></a>
				</div>
				<!-- end nav-login-icon -->
			</c:if>
			<c:if test="${loginID==null}">
				<div class="nav-item nav-item-right nav-join">
					<a href="joinForm">회원가입</a>
				</div>
				<div class="nav-item nav-item-right nav-login">
					<a href="#">로그인</a>
				</div>
			</c:if>
		</div>
	</nav>



	<%--  <div class="mb-container">
	
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
 	 --%>



	<div class="blog-content-container">

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
					<div class="title">${sl.lab_title}</div>
					<div class="info">
						<div class="date">${sl.lab_date}</div>
						<div class="count">조회수 ${sl.lab_count}</div>
					</div>
					<div class="content">
					<p><img src="${sl.lab_img}" style="width: 785px;" class="fr-fic fr-dib" data-status="OK"></p>
						${sl.lab_content}
					
					
					<div class="content">
      <p><img src="https://jasoseol.s3-ap-northeast-2.amazonaws.com/spec_images/images/000/215/524/original/%EB%B0%B0%EB%84%88.png?1583113935" style="width: 785px;" class="fr-fic fr-dib" data-status="OK"></p><table style="width: 100%; margin-left: calc(0%);"><tbody><tr><td style="width: 100.0000%;"><h4 style=" font-family: inherit; color: inherit; font-size: 18px;"><strong><span style=" font-family: &quot;Nanum Gothic&quot;, sans-serif; font-size: 18px;">공무원 시험고시 등 줄 연기</span></strong></h4></td></tr><tr><td style=" width: 1208px;"><h4 style=" font-family: inherit; color: inherit; font-size: 18px;"><strong>기업 '식물 상태' 위기</strong></h4></td></tr><tr><td><h4 style=" font-family: inherit; color: inherit; font-size: 18px;"><strong>얼어붙은 취업시장</strong></h4></td></tr><tr><td><h4 style=" font-family: inherit; color: inherit; font-size: 18px;"><strong>은행권 상반기 채용 고민</strong></h4></td></tr><tr><td><h4 style=" font-family: inherit; color: inherit; font-size: 18px;"><strong>KDB산업은행, 현대자동차</strong></h4></td></tr></tbody></table><p><br></p><p dir="ltr" style="line-height:1.38;background-color:#ffffff;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 8pt 0pt;"><span style="font-size:12pt;font-family:'Malgun Gothic';color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">안녕하세요. 자소설닷컴입니다.</span></p><p><br></p><p dir="ltr" style="line-height:1.38;background-color:#ffffff;margin-top:0pt;margin-bottom:8pt;"><span style="font-size:12pt;font-family:'Malgun Gothic';color:#000000;background-color:transparent;font-weight:400;font-style:normal;font-variant:normal;text-decoration:none;vertical-align:baseline;white-space:pre;white-space:pre-wrap;">항상 유용하고 알찬 채용 뉴스를 전달하고 싶었던 뉴스클리핑이 요즘에는 코로나19로 영향을 받는 채용 뉴스가 주를 이뤄 많이 속상하네요(ㅠㅠ) 많은 기업의 채용 일정 연기에 이어 취업준비에 중요한 시험까지 연기 되고 있어 우리의 마음을 더욱 안타깝게 하고 있어요. 하루 빨리 코로나19와 관련된 채용 뉴스 대신 유용하고 반가운 채용 뉴스로 뉴스클리핑이 가득 채워지기를 바라며</span></p><h3 dir="ltr" style="background-color:#ffffff;"><span style="font-size:12pt;font-family:'Malgun Gothic';color:#000000;background-color:transparent;vertical-align:baseline;">여러분들이 자소설닷컴과 이별하는 그 날까지 좋은 정보를 가득 담아 전달하겠습니다.</span></h3><p><br></p><h3 dir="ltr" style="background-color:#ffffff;"><span style="font-size:12pt;font-family:'Malgun Gothic';color:#000000;background-color:transparent;vertical-align:baseline;">- 자소설닷컴 마스코트 취준이 드림 -</span></h3><p style=" font-size: 12px;"><br></p><p style=" font-size: 12px;"><img src="https://jasoseol.s3-ap-northeast-2.amazonaws.com/spec_images/images/000/215/166/original/%EB%B0%B0%EB%84%881.png?1582509650" style="width: 785px;" class="fr-fic fr-dib fr-fil" data-status="OK"></p><p><br></p><p dir="ltr"><span style="color: rgb(255, 255, 255); font-family: &quot;Nanum Gothic&quot;, sans-serif; font-size: 18px; text-align: start; background-color: rgb(243, 121, 52);">이번 주 PICK!</span></p><p dir="ltr"><strong><a href="https://www.hankyung.com/society/article/202002279585i" rel="noopener noreferrer" target="_blank"><span style="font-size:12pt;font-family:Arial;color:#1155cc;background-color:transparent;vertical-align:baseline;">공무원 시험·고시 등 줄연기…코로나에 채용시장 꽁꽁, 취준생 '속앓이'</span></a></strong></p><p dir="ltr"><strong><span style="font-size:9pt;font-family:Arial;color:#000000;background-color:transparent;vertical-align:baseline;">신종 코로나바이러스 감염증(코로나19) 확산으로 공무원 시험은 물론 기업 채용, 각종 자격시험이 줄줄이 미뤄지면서 취업을 준비하던 2030세대의 걱정이 커지고 있다. 27일 업계에 따르면 10대 그룹 계열사 가운데 지금까지 상반기 공채 일정을 명확히 밝힌 곳은 한 군데도 없다.</span><span style="font-size:9pt;font-family:'Malgun Gothic';color:#000000;background-color:transparent;vertical-align:baseline;">&nbsp;</span></strong></p><p dir="ltr"><img src="https://jasoseol.s3-ap-northeast-2.amazonaws.com/spec_images/images/000/215/536/original/2.png?1583120130" style="width: 500px;" class="fr-fic fr-dib fr-fil" data-status="OK"><img src="https://jasoseol.s3-ap-northeast-2.amazonaws.com/spec_images/images/000/215/534/original/1.png?1583120096" style="width: 500px;" class="fr-fic fr-dib fr-fil" data-status="OK"></p><p dir="ltr"><strong><a href="http://www.etoday.co.kr/news/view/1860946" rel="noopener noreferrer" target="_blank"><span style="font-size:12pt;font-family:Arial;color:#1155cc;background-color:transparent;vertical-align:baseline;">코로나19 위기경보 격상…현대차 사옥출입 통제, 수시채용 중단</span></a></strong></p><p dir="ltr"><strong><span style="font-size:9pt;font-family:Arial;color:#3c3e40;background-color:transparent;vertical-align:baseline;">지난해 상반기부터 정기 공채 대신 부문별 수시 채용을 추진해온 현대차는 이번 조치로 인해 채용도 사실상 잠정 중단한 상태다. 현대차에 따르면 유증상자나 밀접접촉자 및 14일 이내 중국 방문자 등은 사전 신고를 통해 면접일정을 조정하도록 했다. 현대차 관계자는 "코로나19 사태 추이를 지켜보면서 신입사원 채용 면접 재개 여부와 일정을 공지할 계획"이라고 말했다.</span></strong></p><p dir="ltr"><br></p><p dir="ltr"><strong><a href="http://www.issueinfact.com/news/articleView.html?idxno=15102" rel="noopener noreferrer" target="_blank"><span style="font-size:12pt;font-family:Arial;color:#1155cc;background-color:transparent;vertical-align:baseline;">[리서치] “구직자 10명 중 9명, 코로나19 여파… 채용시장 위축 체감”</span></a></strong></p><p dir="ltr"><strong><span style="font-size:9pt;font-family:Arial;color:#3c3e40;background-color:transparent;vertical-align:baseline;">코로나19의 확산에 따른 경제 불확실성이 가중되는 가운데 채용시장도 타격을 받고 있는 것으로 나타났다. 구직자 10명 중 9명은 코로나19 사태 발발 후 취업시장 문이 이전보다 좁아졌으며 이런 분위기는 하반기까지 계속 될 것이라고 예측했다.</span></strong></p><p dir="ltr"><br></p><p dir="ltr"><strong><a href="http://www.munhwa.com/news/view.html?no=2020022601030639176001" rel="noopener noreferrer" target="_blank"><span style="font-size:12pt;font-family:Arial;color:#1155cc;background-color:transparent;vertical-align:baseline;">채용·마케팅·투자유치 ‘올스톱’… 기업 ‘식물 상태’ 위기</span></a></strong></p><p dir="ltr"><strong><span style="font-size:9pt;font-family:Arial;color:#000000;background-color:transparent;vertical-align:baseline;">26일 경제계에 따르면, 주요 대기업의 상반기 채용은 ‘올스톱’ 상태다. 삼성전자는 통상 3월에 상반기 채용 공고를 내고 4월에 삼성직무적성검사(GSAT)를 진행해왔으나, 공고를 앞두고 코로나19 확산 상황을 주시하고 있다. 예년 2월 말부터 윤곽이 잡혔던 대학별 채용설명회는 일정조차 잡지 못하고 있다.</span></strong></p><p dir="ltr"><br></p><p dir="ltr"><strong><a href="https://news.mt.co.kr/mtview.php?no=2020022611444497767" rel="noopener noreferrer" target="_blank"><span style="font-size:12pt;font-family:Arial;color:#1155cc;background-color:transparent;vertical-align:baseline;">"취준생은 웁니다, 당장 영어성적 필요한데"...토익·텝스 줄줄이 취소</span></a></strong></p><p dir="ltr"><strong><span style="font-size:9pt;font-family:Arial;color:#000000;background-color:transparent;vertical-align:baseline;">코로나19 위기경보가 최고 수준인 '심각' 단계로 격상되자 오는 29일 예정됐던 토익(TOEIC) 정기시험이 취소됐다. 앞서 서울대 텝스관리위원회도 오는 3월 7일 치러질 예정이던 영어시험 텝스(TEPS)를 코로나19 감염 우려로 취소했다. 이에 따라 당장 영어성적표가 필요한 취업준비생(취준생)들의 불안도 깊어지고 있다.</span><span style="font-size:9pt;font-family:'Malgun Gothic';color:#000000;background-color:transparent;vertical-align:baseline;">&nbsp;</span></strong></p><p dir="ltr"><br></p><p dir="ltr"><a href="https://biz.chosun.com/site/data/html_dir/2020/02/26/2020022603042.html" rel="noopener noreferrer" target="_blank"><strong><span style="font-size:12pt;font-family:Arial;color:#1155cc;background-color:#ffffff;vertical-align:baseline;">'꿈의 직장' 금융권 일자리, 코로나로 날릴까… 애타는 취준생들</span></strong></a></p><p dir="ltr"><strong><span style="font-size:9pt;font-family:Arial;color:#000000;background-color:transparent;vertical-align:baseline;">우한 코로나 확진자 수가 연일 큰 폭으로 증가하면서 금융권의 상반기 신입사원 공개채용 일정이 미뤄지고 있다. 구직자들은 단순 일정 지연이 아니라 채용 규모가 축소되거나 아예 취소될 수도 있다며 불안에 떨고 있다. 우한 코로나 사태가 기업 수익성에 큰 타격을 입힐 경우 기업의 채용 여력이 쪼그라들 수 있기 때문이다. 27일 금융권에 따르면 우리은행은..</span></strong></p><p dir="ltr"><br></p><p dir="ltr"><strong><a href="https://www.hankyung.com/thepen/article/106748" rel="noopener noreferrer" target="_blank"><span style="font-size:12pt;font-family:Arial;color:#1155cc;background-color:transparent;vertical-align:baseline;">[윤영돈의 채용트렌드 2020] 코로나 바이러스에 대비하는 현명한 취업 자세</span></a></strong></p><p dir="ltr"><strong><span style="font-size:9pt;font-family:Arial;color:#000000;background-color:#ffffff;vertical-align:baseline;">코로나19 사태로 인해 전국 대학의 90% 이상이 개강을 2~4주 연기하는 등 학사일정이 지연되고 있어서 불가피하게 4월 이후로 채용 시기를 다소 늦춰서 진행할 계획이다. 실제 삼성전자 채용설명회는 미정이고, LG전자도 신입공채 4월 이후로 연기했으며, SK는 상반기 공채 2주 늦춘다고 보도했다.</span></strong></p><p dir="ltr"><br></p><p dir="ltr"><strong><a href="https://news.mt.co.kr/mtview.php?no=2020022716444253921" rel="noopener noreferrer" target="_blank"><span style="font-size:12pt;font-family:Arial;color:#1155cc;background-color:transparent;vertical-align:baseline;">"마스크 쓰고 공부"…채용일정 연기에 속타는 취준생</span></a></strong></p><p dir="ltr"><strong><span style="font-size:9pt;font-family:Arial;color:#000000;background-color:transparent;vertical-align:baseline;">코로나19(신종코로나바이러스) 확진자가 나날이 늘어나면서 취업 준비생들이 스터디그룹 모임을 미루거나 취소하고 있다. 오랜 시간 같은 공간에 모여 공부하는 것이 불안하다는 이유에서다.</span></strong></p><p dir="ltr"><br></p><p dir="ltr"><strong><a href="https://www.yna.co.kr/view/MYH20200229000500038" rel="noopener noreferrer" target="_blank"><span style="font-size:12pt;font-family:Arial;color:#1155cc;background-color:transparent;vertical-align:baseline;">얼어붙은 취업시장…상반기 채용 줄줄이 연기</span></a></strong></p><p dir="ltr"><strong><span style="font-size:9pt;font-family:Arial;color:#000000;background-color:transparent;vertical-align:baseline;">다른 대기업들은 매년 3월에 진행하던 공개 채용 일정을 아예 미뤘습니다. &lt;최희정 / LG그룹 홍보팀 책임&gt; "상반기 계열사 공채 일정을 평균 3월 정도에 진행했었는데 올해는 부득이하게 4월 이후로 채용 시기를 늦춰서…" SK는 공채 일정을 3월 말로 연기했고, GS와 한화, 포스코는 일정을 잡지 못했으며, 신세계는 상반기 채용 계획이 없습니다.</span></strong></p><p dir="ltr"><br></p><p dir="ltr"><strong><a href="https://www.fnnews.com/news/202002271805080755" rel="noopener noreferrer" target="_blank"><span style="font-size:12pt;font-family:Arial;color:#1155cc;background-color:transparent;vertical-align:baseline;">"상반기 채용 어쩌나" 은행들 고민… ‘마스크 쓰고 필기시험’ 본 농협, 면접은 미정</span></a></strong></p><p dir="ltr"><strong><span style="font-size:9pt;font-family:Arial;color:#000000;background-color:transparent;vertical-align:baseline;">27일 금융권에 따르면 올 상반기 채용을 계획한 주요 시중은행들은 아직 채용 관련 전반적인 내용을 확정하지 못한 상태다. 보통 상반기 공채일정은 4월에 시작하기 때문에 2월 말~3월 초께는 대략적인 윤곽이 나오지만, 아직 몇 월에 할지조차 정하지 못한 상태다.</span></strong></p><p dir="ltr"><br></p><p dir="ltr"><strong><a href="https://www.sedaily.com/NewsVIew/1YZ40E8SGM" rel="noopener noreferrer" target="_blank"><span style="font-size:12pt;font-family:Arial;color:#1155cc;background-color:transparent;vertical-align:baseline;">코로나19에 취준생 울상…“스터디 못하고 도서관도 못가”</span></a></strong></p><p dir="ltr"><strong><span style="font-size:9pt;font-family:Arial;color:#000000;background-color:transparent;vertical-align:baseline;">29일 국내 코로나19 확진자가 2,900명을 넘어선 가운데 ‘취준 지형’이 대면 형식에서 비대면 형식으로 바뀌고 있다. 기업 채용 필기시험이나 면접 전형에 대비해 서울 종로·신촌·강남 등지에 삼삼오오 모여 해오던 스터디는 본격적인 코로나19 확산 이후 온라인 형식으로 대체된 경우가 많다.</span></strong></p><p dir="ltr"><br></p><p dir="ltr"><strong><span style="font-size:9pt;font-family:'Malgun Gothic';color:#000000;background-color:transparent;vertical-align:baseline;"><img src="https://jasoseol.s3-ap-northeast-2.amazonaws.com/spec_images/images/000/215/167/original/%EB%B0%B0%EB%84%882.png?1582509725" style="width: 785px;" class="fr-fic fr-dib fr-fil" data-status="OK"></span></strong></p><p dir="ltr"><a href="https://www.jasoseol.com/recruit/36292" rel="noopener noreferrer" target="_blank"><img src="https://jasoseol.s3-ap-northeast-2.amazonaws.com/spec_images/images/000/215/528/original/%ED%98%84%EB%8C%80%EC%9E%90%EB%8F%99%EC%B0%A81.png?1583114280" style="width: 200px;" class="fr-fic fr-dib fr-fil" data-status="OK"></a></p><p dir="ltr"><a href="https://www.jasoseol.com/recruit/36337" rel="noopener noreferrer" target="_blank"><img src="https://jasoseol.s3-ap-northeast-2.amazonaws.com/spec_images/images/000/215/530/original/%ED%98%84%EB%8C%80%EC%9E%90%EB%8F%99%EC%B0%A82.png?1583114302" style="width: 200px;" class="fr-fic fr-dib fr-fil" data-status="OK"></a></p><p dir="ltr"><strong><a href="http://www.newsway.co.kr/news/view?ud=2020022608405305107" rel="noopener noreferrer" target="_blank"><span style="font-size:12pt;font-family:Arial;color:#1155cc;background-color:#ffffff;vertical-align:baseline;">[총수의 남자들｜현대차] ‘정의선 시대’ 이끌 3인 ‘김걸·지영조·신재원’</span></a></strong></p><p dir="ltr"><br></p><p dir="ltr"><strong><a href="https://biz.chosun.com/site/data/html_dir/2020/01/22/2020012202207.html" rel="noopener noreferrer" target="_blank"><span style="font-size:12pt;font-family:Arial;color:#1155cc;background-color:#ffffff;vertical-align:baseline;">‘신차 효과’에 웃은 현대차…매출액 100조 돌파·영업이익 52% 증가</span></a></strong></p><p dir="ltr"><br></p><p dir="ltr"><strong><a href="http://www.irobotnews.com/news/articleView.html?idxno=19602" rel="noopener noreferrer" target="_blank"><span style="font-size:12pt;font-family:Arial;color:#1155cc;background-color:#ffffff;vertical-align:baseline;">현대자동차, 인공지능 모빌리티 서비스 ‘셔클’ 시범 운영</span></a></strong></p><p dir="ltr"><br></p><p dir="ltr"><strong><a href="http://www.irobotnews.com/news/articleView.html?idxno=19662" rel="noopener noreferrer" target="_blank"><span style="font-size:12pt;font-family:Arial;color:#1155cc;background-color:transparent;vertical-align:baseline;">현대자동차, 다양한 교통수단 연계 다중 모빌리티 사업 추진</span></a></strong></p><p dir="ltr"><br></p><p dir="ltr"><strong><a href="https://www.hankyung.com/economy/article/202002158437i" rel="noopener noreferrer" target="_blank"><span style="font-size:12pt;font-family:Arial;color:#1155cc;background-color:transparent;vertical-align:baseline;">현대자동차그룹, 도심항공 모빌리티 진출…2025년까지 친환경차 44종으로 확대</span></a></strong></p><p dir="ltr"><br></p><p dir="ltr"><strong><a href="http://www.econovill.com/news/articleView.html?idxno=387047" rel="noopener noreferrer" target="_blank"><span style="font-size:12pt;font-family:Arial;color:#1155cc;background-color:transparent;vertical-align:baseline;">현대차, ‘고성능 N’으로 그리는 비전은</span></a></strong></p><p dir="ltr"><br></p><p dir="ltr"><strong><a href="https://www.etnews.com/20200110000246" rel="noopener noreferrer" target="_blank"><span style="font-size:12pt;font-family:Arial;color:#1155cc;background-color:transparent;vertical-align:baseline;">현대차 '매출 100조 클럽' 가입 전망···삼성電·SK㈜ 이어 세 번째</span></a></strong></p><p dir="ltr" style=" font-size: 12px;"><br></p><p><a href="https://www.jasoseol.com/recruit/36281" rel="noopener noreferrer" target="_blank"><img src="https://jasoseol.s3-ap-northeast-2.amazonaws.com/spec_images/images/000/215/525/original/KDB%EC%82%B0%EC%97%85%EC%9D%80%ED%96%89_%EB%B0%B0%EB%84%88.png?1583114137" style="width: 200px;" class="fr-fic fr-dib fr-fil" data-status="OK"></a></p><p dir="ltr"><strong><a href="https://www.mk.co.kr/news/special-edition/view/2020/02/138409/" rel="noopener noreferrer" target="_blank"><span style="font-size: 12pt; font-family: &quot;Nanum Gothic&quot;, sans-serif; color: rgb(17, 85, 204); background-color: rgb(255, 255, 255); vertical-align: baseline;">KDB산업은행, 복지시설과 결연…꾸준한 `사랑 나누기`</span></a></strong></p><p dir="ltr"><span style="font-family: 'Nanum Gothic', sans-serif;"><br></span></p><p dir="ltr"><span style="font-family: 'Nanum Gothic', sans-serif;"><strong><a href="https://www.thebell.co.kr/free/Content/ArticleView.asp?key=202002130931212640109587&amp;svccode=03" rel="noopener noreferrer" target="_blank"><span style="font-size: 12pt; color: rgb(17, 85, 204); background-color: rgb(255, 255, 255); vertical-align: baseline;">산업은행, 달라진 자회사 인사관행 ‘눈길’</span></a></strong></span></p><p dir="ltr"><span style="font-family: 'Nanum Gothic', sans-serif;"><br></span></p><p dir="ltr"><span style="font-family: 'Nanum Gothic', sans-serif;"><strong><a href="http://www.thebell.co.kr/free/content/ArticleView.asp?key=202002110829390000101871" rel="noopener noreferrer" target="_blank"><span style="font-size: 12pt; color: rgb(17, 85, 204); background-color: rgb(255, 255, 255); vertical-align: baseline;">산업은행, 15억달러 글로벌본드 발행 성공</span></a></strong></span></p><p dir="ltr"><span style="font-family: 'Nanum Gothic', sans-serif;"><br></span></p><p dir="ltr"><span style="font-family: 'Nanum Gothic', sans-serif;"><strong><a href="http://www.consumernews.co.kr/news/articleView.html?idxno=601711" rel="noopener noreferrer" target="_blank"><span style="font-size: 12pt; color: rgb(17, 85, 204); background-color: rgb(255, 255, 255); vertical-align: baseline;">산업은행·기업은행도 라임펀드 판매...국책은행 상품 관리·검증 부실 지적</span></a></strong></span></p><p dir="ltr"><span style="font-family: 'Nanum Gothic', sans-serif;"><br></span></p><p dir="ltr"><span style="font-family: 'Nanum Gothic', sans-serif;"><strong><a href="https://www.thebell.co.kr/free/Content/ArticleView.asp?key=202001291816424080103538&amp;svccode=03" rel="noopener noreferrer" target="_blank"><span style="font-size: 12pt; color: rgb(17, 85, 204); background-color: rgb(255, 255, 255); vertical-align: baseline;">산업은행, 깜짝 등판 배경은</span></a></strong></span></p><p dir="ltr"><span style="font-family: 'Nanum Gothic', sans-serif;"><br></span></p><p dir="ltr"><span style="font-family: 'Nanum Gothic', sans-serif;"><strong><a href="http://www.dailybizon.com/news/articleView.html?idxno=16144" rel="noopener noreferrer" target="_blank"><span style="font-size: 12pt; color: rgb(17, 85, 204); background-color: rgb(255, 255, 255); vertical-align: baseline;">"[심층기획] 금융사 차리는 IT기업들 ③ SKT"</span></a></strong></span></p><p dir="ltr"><span style="font-family: 'Nanum Gothic', sans-serif;"><br></span></p><p dir="ltr"><strong><a href="https://www.fetimes.co.kr/news/articleView.html?idxno=90587" rel="noopener noreferrer" target="_blank"><span style="font-size: 12pt; font-family: &quot;Nanum Gothic&quot;, sans-serif; color: rgb(17, 85, 204); background-color: rgb(255, 255, 255); vertical-align: baseline;">KDB산업은행, 'BTS'에 이어 '기생충' 투자로 '대박' 금융계 화제</span></a></strong></p><p dir="ltr" style=" font-size: 12px;"><br></p><p dir="ltr" style=" font-size: 12px;"><br></p><p style=" font-size: 12px;"><span style=" font-family: &quot;Nanum Gothic&quot;, sans-serif;"><span style=" font-size: 18px;">오늘의 자소설닷컴 뉴스 클리핑 어떠셨나요?</span></span></p><table style=" background-color: rgb(255, 255, 255);"><tbody><tr><td style=" width: 90px;"><span style=" font-family: &quot;Nanum Gothic&quot;, sans-serif;"><a href="http://bit.ly/2pdssVi" rel="noopener noreferrer" style=" background: transparent; color: rgb(66, 139, 202);" target="_blank"><img src="https://jasoseol.s3-ap-northeast-2.amazonaws.com/spec_images/images/000/211/392/original/%ED%94%BC%EB%93%9C%EB%B0%B11.png?1574156521" data-status="OK" style="width: 80px;" class="fr-fic fr-dii"></a></span><br></td><td style=" width: 90px;"><a href="http://bit.ly/35mW4Ag" rel="noopener noreferrer" style=" background: transparent; color: rgb(66, 139, 202);" target="_blank"><img src="https://jasoseol.s3-ap-northeast-2.amazonaws.com/spec_images/images/000/209/145/original/%ED%94%BC%EB%93%9C%EB%B0%B12.png?1570766471" data-status="OK" style="width: 80px;" class="fr-fic fr-dii"></a><br></td><td style=" width: 90px;"><a href="http://bit.ly/33qy79z" rel="noopener noreferrer" style=" background: transparent; color: rgb(66, 139, 202);" target="_blank"><img src="https://jasoseol.s3-ap-northeast-2.amazonaws.com/spec_images/images/000/209/149/original/%ED%94%BC%EB%93%9C%EB%B0%B13.png?1570766720" data-status="OK" style="width: 80px;" class="fr-fic fr-dii"></a><br></td></tr></tbody></table><p style=" font-size: 12px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: start; background-color: rgb(255, 255, 255);"><br></p><p style=" font-size: 12px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: start; background-color: rgb(255, 255, 255);"><span style=" font-family: &quot;Nanum Gothic&quot;, sans-serif; font-size: 18px; background-color: rgb(204, 204, 204);"><br>[지난 뉴스 클리핑 다시보기]</span></p><p style=" font-size: 12px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: start; background-color: rgb(255, 255, 255);"><br></p><p style=" font-size: 12px; text-align: start; font-family: &quot;Nanum Gothic&quot;, sans-serif; color: rgb(85, 85, 85); background-color: rgb(255, 255, 255);"><a href="http://bit.ly/2VDeEl5" rel="noopener noreferrer" style=" background: transparent; color: rgb(66, 139, 202); font-family: &quot;Nanum Gothic&quot;, sans-serif !important;" target="_blank"><span style=" font-family: &quot;Nanum Gothic&quot;, sans-serif; font-size: 14px;">[뉴스클리핑 #20 다시보기]</span></a></p><p style=" font-size: 12px; text-align: start; font-family: &quot;Nanum Gothic&quot;, sans-serif; color: rgb(85, 85, 85); background-color: rgb(255, 255, 255);">하늘길 막힌 항공사, 취업문 닫았다</p><p style=" font-size: 12px; text-align: start; font-family: &quot;Nanum Gothic&quot;, sans-serif; color: rgb(85, 85, 85); background-color: rgb(255, 255, 255);">수시채용문 넓히는 증권사</p><p style=" font-size: 12px; text-align: start; font-family: &quot;Nanum Gothic&quot;, sans-serif; color: rgb(85, 85, 85); background-color: rgb(255, 255, 255);"><br></p><p style=" font-size: 12px; text-align: start; font-family: &quot;Nanum Gothic&quot;, sans-serif; color: rgb(85, 85, 85); background-color: rgb(255, 255, 255);"><a href="http://bit.ly/2P1s9af" rel="noopener noreferrer" style=" background: transparent; color: rgb(66, 139, 202); font-family: &quot;Nanum Gothic&quot;, sans-serif !important;" target="_blank"><span style=" font-family: &quot;Nanum Gothic&quot;, sans-serif; font-size: 14px;">[뉴스클리핑 #19 다시보기]</span></a></p><p style=" font-size: 12px; text-align: start; font-family: &quot;Nanum Gothic&quot;, sans-serif; color: rgb(85, 85, 85); background-color: rgb(255, 255, 255);">금융권 상반기 채용문 활짝 열릴까?</p><p style=" font-size: 12px; text-align: start; font-family: &quot;Nanum Gothic&quot;, sans-serif; color: rgb(85, 85, 85); background-color: rgb(255, 255, 255);">대기업 44% "코로나 탓 채용계획 변경 예정"</p><p style=" font-size: 12px; text-align: start; font-family: &quot;Nanum Gothic&quot;, sans-serif; color: rgb(85, 85, 85); background-color: rgb(255, 255, 255);"><br></p><p style=" font-size: 12px; text-align: start; font-family: &quot;Nanum Gothic&quot;, sans-serif; color: rgb(85, 85, 85); background-color: rgb(255, 255, 255);"><a href="http://bit.ly/3boDoTD" rel="noopener noreferrer" style=" background: transparent; color: rgb(66, 139, 202); font-family: &quot;Nanum Gothic&quot;, sans-serif !important;" target="_blank"><span style=" font-family: &quot;Nanum Gothic&quot;, sans-serif; font-size: 14px;">[뉴스클리핑 #18 다시보기]</span></a></p><p style=" font-size: 12px; text-align: start; font-family: &quot;Nanum Gothic&quot;, sans-serif; color: rgb(85, 85, 85); background-color: rgb(255, 255, 255);">채용박람회 줄 취소</p><p style=" font-size: 12px; text-align: start; font-family: &quot;Nanum Gothic&quot;, sans-serif; color: rgb(85, 85, 85); background-color: rgb(255, 255, 255);">급증하는 대기업 AI 채용</p><p style=" font-size: 12px; text-align: start; font-family: &quot;Nanum Gothic&quot;, sans-serif; color: rgb(85, 85, 85); background-color: rgb(255, 255, 255);"><br></p><p style=" font-size: 12px; text-align: start; font-family: &quot;Nanum Gothic&quot;, sans-serif; color: rgb(85, 85, 85); background-color: rgb(255, 255, 255);"><br></p><p style=" font-size: 12px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: start; background-color: rgb(255, 255, 255);"><br></p><p style=" font-size: 12px; color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; text-align: start; background-color: rgb(255, 255, 255);"><br></p>
    </div>
					
					
					
					</div>
				</div>
			</div>

			<script type="text/javascript" charset="utf-8">
				var category_id = 10 - 0;
			</script>

		</div>
	</div>







</body>
</html>
