<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** jobDetail **</title>
<link rel="stylesheet" type="text/css" href="resources/jsLib/jobStyle.css">
<script src="resources/jsLib/jquery-3.2.1.min.js"></script>
<script src="resources/jsLib/namchulAjax.js"></script>
<style>
</style>

</head>
<body>
	<%-- <body class=jdetail-body>
	<div class="jdetail-container">
		<!-- 전체div -->
		<div class="jdetail-detail">
			<!-- 상세부분의 틀 div -->
			<div class="x-btn">
				<a href="#" onclick="jDetailClose()"><img alt="닫기"
					src="resources/img/x_btn.png"></a>
			</div>
			<div class="detail-top">
				<!-- 상세의 윗부분 -->
				<div class="detail-header">
					<!-- 공고의 헤더 -->
					<div class="header-img">${jDetail.jobopen_pimg}</div>
					<div class="header-content">
						<div class="header-time">
							<span class="header-time-span"><span class="header-times">${jDetail.jobopen_sdate}</span>
								~ <span class="header-timee">${jDetail.jobopen_edate}</span><span>${jDetail.endDday}</span></span>
						</div>
						<div class="header-link">
							<div>
								<a href="${jDetail.jobopen_link}">홈페이지</a>
							</div>
						</div>
						<div class="header-count">${jDetail.jobopen_count}</div>
					</div>
				</div>
				<div class="detail-self">
					<!-- 자소서바로가기 -->
					<table class="self-table">
						<tr>
							<td width="135px">신입/인턴</td>
							<td width="304px" align="left">대물보상(제목)</td>
							<td width="101px">00명작성</td>
							<td width="135px">자기소개서</td>
						</tr>
					</table>
				</div>
			</div>
			<div>
				<!-- 상세의 아랫부분 (이미지) -->
				<img src="${jDetail.jobopen_cimg}" width="100%"> <img>
			</div>
		</div>
	</div> --%>




	<div class="modal-content" >
		<recruit-slide args="args" class="ng-isolate-scope">
		<img class="x-button"
			src="/assets/icon/x_btn-067cbbb80c6e60dd22a2f6302252529d5b10dd90d943cf943a80d124fb6f169c.png" >
		<div class="modal-body">
			<div class="employment-information nav-anchor" nav_id="0">
				<div class="ec-info-container">
					<div class="ec-image">
						<img
						 src="https://jasoseol.s3-ap-northeast-2.amazonaws.com/employment_companies/images/000/036/170/original/_ED_81_AC_EA_B8_B0_EB_B3_80_ED_99_98__ED_81_AC_EA_B8_B0_EB_B3_80_ED_99_98_Novelis_logo_1280px_rgb.jpg?1581932032">
					</div>
					<div class="ec-info">
						<!-- <div class="ec-info-title ec-name">기업명</div> -->
						<div class="ec-info-content ec-name">
							<span class="ng-binding">노벨리스코리아</span> <img
								class="toggle-favorite ng-hide" src="/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png">
							<img class="toggle-favorite" src="/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
						</div>
						<div class="ec-info-content period">
							<!-- ngIf: item.recruit_type === 0 -->
							<div  class="ng-scope" style="">
								<span class="time"> <span class="ng-binding">2020.02.17 18:16</span> ~ 
								<span class="ng-binding">2020.02.27 23:59</span>
								</span> (<span  class="orange ng-binding">8일 남음</span>)
							</div>
							<!-- end ngIf: item.recruit_type === 0 -->
							<!-- ngIf: item.recruit_type === 1 -->
						</div>
						<div class="ec-info-content buttons">
							<!-- ngIf: item.employment_page_url !== null -->
							<div class="ec-wrapper homepage ng-scope" >
								<a class="ec-option-letters link-homepage-string piwik-recruit-modal-homepage ga-recruit-modal-homepage"
									 target="_blank" href="http://www.saramin.co.kr/zf_user/jobs/relay/view?isMypage=no&amp;rec_idx=37784257&amp;recommend_ids=eJxtkLERBDEIA6v5HAwIEX8h7r%2BL982NsYMP1zuyAMs0kdIZxU9%2B7cLp7wPVUye2b9w%2BHIiTTwmMgy4m%2BQd3WkJZxze2Bw2X37j9KB1Xe2PnCzz9IYReyzJi8JpOgZrpeBFhYm1Xc1bMjL3owPBGlCZ57FqUz6DYP1PzIOnrSCnW6PrgDx%2F5WEc%3D&amp;view_type=search&amp;searchword=%EB%85%B8%EB%B2%A8%EB%A6%AC%EC%8A%A4%EC%BD%94%EB%A6%AC%EC%95%84&amp;searchType=default_mysearch&amp;gz=1&amp;t_ref_content=generic&amp;t_ref=search&amp;paid_fl=n#seq=0">
									홈페이지 </a>
							</div>
							<!-- end ngIf: item.employment_page_url !== null -->
						
							<div class="ec-wrapper recruit-ref dropdown ng-hide" >
								<a href="" class="ec-option-letters dropdown-toggle link-homepage-string" aria-haspopup="true"
									aria-expanded="false"> 기업 공채 전략 <span class="caret"></span>
								</a>
								<ul class="dropdown-menu position">
									<!-- ngRepeat: recruit_ref in item.recruit_refs -->
									<li class="ng-scope" style=""><a target="_blank"
										 href="http://joburl.kr/WiiMI"> <span class="ng-binding">노벨리스코리아</span>
											<small>(<span class="ng-binding">19/01/02</span>)
										</small>
									</a></li>
									<!-- end ngRepeat: recruit_ref in item.recruit_refs -->
								</ul>
							</div>
							<div class="ec-wrapper recruit-ref"  style="">
								<a
									class="ec-option-letters dropdown-toggle link-homepage-string" target="_blank"
									 href="http://joburl.kr/WiiMI"> 기업 공채 전략 </a>
							</div>

							<!-- ngIf: item.attached_file_url !== null && item.attached_file_url !== undefined -->
						</div>
						<div class="count-information">
							<div class="count-item">
								공고 조회&nbsp;<span class="num ng-binding" >4354</span>회
							</div>
							<!-- ngIf: item.employment_page_url !== null -->
							<div class="vertical-line ng-scope" ></div>
							<!-- end ngIf: item.employment_page_url !== null -->
							<div class="count-item"> 즐겨찾기&nbsp;<span class="num ng-binding"  >110</span>회
							</div>
							<div class="vertical-line"></div>
							<!-- ngIf: item.employment_page_url !== null -->
							<div class="count-item ng-scope" >
								홈페이지 방문&nbsp;<span class="num ng-binding" >97</span>회
							</div>
							<!-- end ngIf: item.employment_page_url !== null -->
						</div>
					</div>
				</div>
			</div>
			<div class="write-resume">
				<table>
					<tbody>
						<!-- ngRepeat: employment in employments -->
						<tr class="ng-scope" style="">
							<td class="division ng-binding" >인턴</td>
							<td class="field ng-binding" >IT system 운영</td>
							<td class="count"><span class="ng-binding">16</span>명 작성</td>
							<!-- ngIf: employment.employment_resume -->
							<td class="resume ng-scope" >
								<!-- ngIf: employment.before_end_time -->
								<div class="write-resume-button ng-scope" >
									<!-- ngIf: direct_apply -->
									<!-- ngIf: !direct_apply -->
									<span class="ng-scope">자기소개서 쓰기</span>
									<!-- end ngIf: !direct_apply -->
								</div>
								<!-- end ngIf: employment.before_end_time --> <!-- ngIf: !employment.before_end_time -->
							</td>
							<!-- end ngIf: employment.employment_resume -->
							<!-- ngIf: !employment.employment_resume -->
						</tr>
						<!-- end ngRepeat: employment in employments -->
					</tbody>
				</table>
			</div>
			<div class="employment-notice nav-anchor" nav_id="1">
				<!-- ngIf: isRecruitErrorShow -->
				<div class="content ng-binding" >
					<div
						style="position: relative; display: block; text-align: center;">
						<img alt=""
							src="https://s3-ap-northeast-2.amazonaws.com/jasoseol/home/ec2-user/jasoseol/public/ckeditor_assets/pictures/52235/content_200217.png"
							style="height: 2251px; width: 800px"> <a
							href="http://www.novelis.com/"
							style="display: block; position: absolute; width: 18%; height: 1.8%; top: 40%; left: 27%;">
						</a><a
							href="http://www.saramin.co.kr/zf_user/jobs/relay/view?isMypage=no&amp;rec_idx=37784257&amp;recommend_ids=eJxtkLERBDEIA6v5HAwIEX8h7r%2BL982NsYMP1zuyAMs0kdIZxU9%2B7cLp7wPVUye2b9w%2BHIiTTwmMgy4m%2BQd3WkJZxze2Bw2X37j9KB1Xe2PnCzz9IYReyzJi8JpOgZrpeBFhYm1Xc1bMjL3owPBGlCZ57FqUz6DYP1PzIOnrSCnW6PrgDx%2F5WEc%3D&amp;view_type=search&amp;searchword=%EB%85%B8%EB%B2%A8%EB%A6%AC%EC%8A%A4%EC%BD%94%EB%A6%AC%EC%95%84&amp;searchType=default_mysearch&amp;gz=1&amp;t_ref_content=generic&amp;t_ref=search&amp;paid_fl=n#seq=0"
							style="display: block; position: absolute; width: 18%; height: 1%; top: 85%; left: 15%;">
						</a>
					</div>
				</div>
				<!-- ngIf: direct_apply -->
			</div>
			<!-- ngIf: item.target != 1 -->
		

			<!-- ngInclude: 'app/templates/recruit/LeadmeEpisode.html' -->
		
		</div>
	
		<!-- ngInclude: 'app/templates/recruit/employment_question.html' -->
	
		</recruit-slide>
	</div>


</body>
</html>