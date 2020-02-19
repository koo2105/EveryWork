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




	<div class="modal-content" ng-mousedown="$event.stopPropagation();">
		<recruit-slide args="args" class="ng-isolate-scope">
		<img class="x-button"
			src="/assets/icon/x_btn-067cbbb80c6e60dd22a2f6302252529d5b10dd90d943cf943a80d124fb6f169c.png"
			ng-click="cancel()">
		<div class="modal-body">
			<div class="employment-information nav-anchor" nav_id="0">
				<div class="ec-info-container">
					<div class="ec-image">
						<img
							ng-src="https://jasoseol.s3-ap-northeast-2.amazonaws.com/employment_companies/images/000/036/170/original/_ED_81_AC_EA_B8_B0_EB_B3_80_ED_99_98__ED_81_AC_EA_B8_B0_EB_B3_80_ED_99_98_Novelis_logo_1280px_rgb.jpg?1581932032"
							src="https://jasoseol.s3-ap-northeast-2.amazonaws.com/employment_companies/images/000/036/170/original/_ED_81_AC_EA_B8_B0_EB_B3_80_ED_99_98__ED_81_AC_EA_B8_B0_EB_B3_80_ED_99_98_Novelis_logo_1280px_rgb.jpg?1581932032">
					</div>
					<div class="ec-info">
						<!-- <div class="ec-info-title ec-name">기업명</div> -->
						<div class="ec-info-content ec-name">
							<span ng-bind="item.name" class="ng-binding">노벨리스코리아</span> <img
								class="toggle-favorite ng-hide" ng-show="item.favorite"
								ng-click="remove_user_employment(item)"
								src="/assets/main/calendar/star_select-c30fc8f4e82378168df71dcc2dc8cba105a91597fa5c771b1600636f3544d976.png">
							<img class="toggle-favorite" ng-show="!item.favorite"
								ng-click="add_user_employment(item)"
								src="/assets/main/calendar/star_unselect-0487753c5d876594f017088ec977a7f006c768bfcc975c19c4d9ebe00e322bb1.png">
						</div>
						<div class="ec-info-content period">
							<!-- ngIf: item.recruit_type === 0 -->
							<div ng-if="item.recruit_type === 0" class="ng-scope" style="">
								<span class="time"> <span
									ng-bind="item.start_time | date: 'yyyy.MM.dd HH:mm'"
									class="ng-binding">2020.02.17 18:16</span> ~ <span
									ng-bind="item.end_time | date: 'yyyy.MM.dd HH:mm'"
									class="ng-binding">2020.02.27 23:59</span>
								</span> (<span ng-show="d_day(item.end_time) !== null"
									ng-bind="Dday(item.end_time)" class="orange ng-binding">8일
									남음</span>)
							</div>
							<!-- end ngIf: item.recruit_type === 0 -->
							<!-- ngIf: item.recruit_type === 1 -->
						</div>
						<div class="ec-info-content buttons">
							<!-- ngIf: item.employment_page_url !== null -->
							<div class="ec-wrapper homepage ng-scope"
								ng-if="item.employment_page_url !== null">
								<a
									class="ec-option-letters link-homepage-string piwik-recruit-modal-homepage ga-recruit-modal-homepage"
									ng-href="http://www.saramin.co.kr/zf_user/jobs/relay/view?isMypage=no&amp;rec_idx=37784257&amp;recommend_ids=eJxtkLERBDEIA6v5HAwIEX8h7r%2BL982NsYMP1zuyAMs0kdIZxU9%2B7cLp7wPVUye2b9w%2BHIiTTwmMgy4m%2BQd3WkJZxze2Bw2X37j9KB1Xe2PnCzz9IYReyzJi8JpOgZrpeBFhYm1Xc1bMjL3owPBGlCZ57FqUz6DYP1PzIOnrSCnW6PrgDx%2F5WEc%3D&amp;view_type=search&amp;searchword=%EB%85%B8%EB%B2%A8%EB%A6%AC%EC%8A%A4%EC%BD%94%EB%A6%AC%EC%95%84&amp;searchType=default_mysearch&amp;gz=1&amp;t_ref_content=generic&amp;t_ref=search&amp;paid_fl=n#seq=0"
									target="_blank" ng-click="upHomepageCount()"
									href="http://www.saramin.co.kr/zf_user/jobs/relay/view?isMypage=no&amp;rec_idx=37784257&amp;recommend_ids=eJxtkLERBDEIA6v5HAwIEX8h7r%2BL982NsYMP1zuyAMs0kdIZxU9%2B7cLp7wPVUye2b9w%2BHIiTTwmMgy4m%2BQd3WkJZxze2Bw2X37j9KB1Xe2PnCzz9IYReyzJi8JpOgZrpeBFhYm1Xc1bMjL3owPBGlCZ57FqUz6DYP1PzIOnrSCnW6PrgDx%2F5WEc%3D&amp;view_type=search&amp;searchword=%EB%85%B8%EB%B2%A8%EB%A6%AC%EC%8A%A4%EC%BD%94%EB%A6%AC%EC%95%84&amp;searchType=default_mysearch&amp;gz=1&amp;t_ref_content=generic&amp;t_ref=search&amp;paid_fl=n#seq=0">
									홈페이지 </a>
							</div>
							<!-- end ngIf: item.employment_page_url !== null -->
							<div class="ec-wrapper copy-url">
								<div
									class="ec-option-letters piwik-recruit-modal-share ga-recruit-modal-share"
									ng-click="copyUrlToggle()">채용 공고 공유</div>
								<!-- ngIf: showUrlDropdown -->
								<!-- ngIf: showUrlDropdown -->
							</div>
							<div class="ec-wrapper recruit-ref dropdown ng-hide"
								uib-dropdown="" on-toggle="toggled(open)"
								ng-show="item.recruit_refs &amp;&amp; item.recruit_refs.length > 1">
								<a href=""
									class="ec-option-letters dropdown-toggle link-homepage-string"
									uib-dropdown-toggle="" aria-haspopup="true"
									aria-expanded="false"> 기업 공채 전략 <span class="caret"></span>
								</a>
								<ul class="dropdown-menu position">
									<!-- ngRepeat: recruit_ref in item.recruit_refs -->
									<li ng-repeat="recruit_ref in item.recruit_refs"
										class="ng-scope" style=""><a
										ng-href="http://joburl.kr/WiiMI" target="_blank"
										ng-click="open_recruit_ref(recruit_ref, 'top')"
										href="http://joburl.kr/WiiMI"> <span
											ng-bind="recruit_ref.name" class="ng-binding">노벨리스코리아</span>
											<small>(<span
												ng-bind="recruit_ref.registered_at | date: 'yy/MM/dd'"
												class="ng-binding">19/01/02</span>)
										</small>
									</a></li>
									<!-- end ngRepeat: recruit_ref in item.recruit_refs -->
								</ul>
							</div>
							<div class="ec-wrapper recruit-ref"
								ng-show="item.recruit_refs &amp;&amp; item.recruit_refs.length === 1"
								style="">
								<a
									class="ec-option-letters dropdown-toggle link-homepage-string"
									ng-href="http://joburl.kr/WiiMI" target="_blank"
									ng-click="open_recruit_ref(item.recruit_refs[0], 'top')"
									href="http://joburl.kr/WiiMI"> 기업 공채 전략 </a>
							</div>

							<!-- ngIf: item.attached_file_url !== null && item.attached_file_url !== undefined -->
						</div>
						<div class="count-information">
							<div class="count-item">
								공고 조회&nbsp;<span class="num ng-binding"
									ng-bind="item.view_count">4354</span>회
							</div>
							<!-- ngIf: item.employment_page_url !== null -->
							<div class="vertical-line ng-scope"
								ng-if="item.employment_page_url !== null"></div>
							<!-- end ngIf: item.employment_page_url !== null -->
							<div class="count-item">
								즐겨찾기&nbsp;<span class="num ng-binding"
									ng-bind="item.favorite_count">110</span>회
							</div>
							<div class="vertical-line"></div>
							<!-- ngIf: item.employment_page_url !== null -->
							<div class="count-item ng-scope"
								ng-if="item.employment_page_url !== null">
								홈페이지 방문&nbsp;<span class="num ng-binding"
									ng-bind="item.homepage_count">97</span>회
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
						<tr ng-repeat="employment in employments"
							ng-class="{'active': employment_question_show &amp;&amp; employment_question_show_id == employment.id}"
							class="ng-scope" style="">
							<td class="division ng-binding"
								ng-bind="divisionStr(employment.division)">인턴</td>
							<td class="field ng-binding" ng-bind="employment.field">IT
								system 운영</td>
							<td class="count"><span ng-bind="employment.resume_count"
								class="ng-binding">16</span>명 작성</td>
							<!-- ngIf: employment.employment_resume -->
							<td class="resume ng-scope" ng-if="employment.employment_resume">
								<!-- ngIf: employment.before_end_time -->
								<div class="write-resume-button ng-scope"
									ng-if="employment.before_end_time" employment_id="150935"
									ng-click="new_resume_employment(employment.id)"
									ng-mouseover="show_employment_resume(employment)">
									<!-- ngIf: direct_apply -->
									<!-- ngIf: !direct_apply -->
									<span ng-if="!direct_apply" class="ng-scope">자기소개서 쓰기</span>
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
				<div class="recruit-error unselectable"
					ng-click="toggleRecruitErrorModal($event)">
					<i class="material-icons">info</i>
					<div class="text">공고 오류 신고</div>
					<div class="clearfix"></div>
				</div>

				<!-- ngIf: isRecruitErrorShow -->

				<div class="content ng-binding"
					ng-bind-html="trustAsHtml(item.content)">
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
			<!-- ngInclude: 'app/templates/recruit/company_information.html' -->
			<div id="company-information"
				ng-include="'app/templates/recruit/company_information.html'"
				class="company-information  nav-anchor ng-scope add-recruit-ref"
				nav_id="2" ng-if="item.target != 1"
				ng-class="{'add-recruit-ref': item.recruit_refs}" style="">
				<div class="company-information-container info-cic ng-scope">
					<p class="title">데이터랩</p>
					<div class="company-information-area">
						<!-- ngIf: company_info_show_loading === true -->
						<!-- ngIf: company_info_show_loading === false && info.status === 'OK' -->
						<!-- ngIf: company_info_show_loading === false && (info.status === 'MORE INFO' || info.status === 'NO RESULT SPEC') -->
						<div
							ng-if="company_info_show_loading === false &amp;&amp; (info.status === 'MORE INFO' || info.status === 'NO RESULT SPEC')"
							class="empty-info ng-scope" style="">
							아직 <span ng-bind="item.name" class="ng-binding">노벨리스코리아</span>
							지원자가 부족해요!<br> 더 많은 사람이 지원하면 지원자 분석 기능이 열립니다.
						</div>
						<!-- end ngIf: company_info_show_loading === false && (info.status === 'MORE INFO' || info.status === 'NO RESULT SPEC') -->
						<!-- ngIf: info.status === 'OK' -->
						<!-- ngIf: info.status !== 'OK' -->
						<div
							class="company-information-more ga-recruit-modal-datalab ng-scope"
							ng-click="change_page('datalab', companyGroupId)"
							ng-if="info.status !== 'OK'">+ 더 많은 기업의 데이터 분석 보기</div>
						<!-- end ngIf: info.status !== 'OK' -->
					</div>
				</div>

				<div
					class="company-information-container info-chat-example-resume ng-scope">
					<div class="chat-cic">
						<p class="title">채팅방</p>
						<div class="company-information-area">
							<div class="chat-message-container">
								<div class="chat-message">


									<div class="chat-message-name">
										<span class="chatname" style="color:">긴박한 유럽파랑새</span>
									</div>

									<div class="content-container receive">

										<div class="message-content" message_id="20288353">


											영문밖에 없어서 영문으로 냈는데ㅋㅋㅋㅋㅋㅋㅋㅋㅋ <br>

										</div>
										<div class="message-date">17:46</div>
									</div>
								</div>

								<div class="chat-message">


									<div class="chat-message-name">
										<span class="chatname" style="color:">말랑말랑 페가수스</span>
									</div>

									<div class="content-container receive">

										<div class="message-content" message_id="20289484">


											이름 개멋잇네 <br>

										</div>
										<div class="message-date">18:53</div>
									</div>
								</div>

								<div class="chat-message">


									<div class="chat-message-name">
										<span class="chatname" style="color:">용사 흰꼬리수리</span>
									</div>

									<div class="content-container receive">

										<div class="message-content" message_id="20289891">


											이력서 열람을 안하네 <br>

										</div>
										<div class="message-date">19:51</div>
									</div>
								</div>

								<div class="chat-message">


									<div class="chat-message-name">
										<span class="chatname" style="color:">용사 일본원숭이</span>
									</div>

									<div class="content-container receive">

										<div class="message-content" message_id="20292471">


											대한민국 만세 <br>

										</div>
										<div class="message-date">23:16</div>
									</div>
								</div>

								<div class="chat-date-divider">2020-02-18</div>

								<div class="chat-message">


									<div class="chat-message-name">
										<span class="chatname" style="color:">뽀얀 산토끼</span>
									</div>

									<div class="content-container receive">

										<div class="message-content" message_id="20293548">


											저도 영문냈ㄴ데 ㅎㅋㅎ;; <br>

										</div>
										<div class="message-date">06:56</div>
									</div>
								</div>
								<div class="chat-penalty-notice">폭언, 음란, 불법 행위, 상업적 홍보 등
									채팅방 사용을 저해하는 활동에 대해 메시지 삭제 및 계정 정지 조치를 할 수 있습니다.</div>
							</div>
							<div class="company-information-more ga-recruit-modal-chat"
								ng-click="change_page('chat', chat_id, chat)">+ 채팅 더보기</div>
						</div>
					</div>


					<div class="example-resume-cic">
						<p class="title">합격 자기소개서</p>
						<div class="company-information-area">
							<!-- ngIf: company_info_show_loading === true -->
							<!-- ngIf: company_info_show_loading === false && example_resumes.length > 0 -->
							<div
								ng-if="company_info_show_loading === false &amp;&amp; example_resumes.length > 0"
								class="ng-scope" style="">
								<!-- ngRepeat: example_resume in example_resumes -->
								<div class="example-resume-row dotdotdot ng-scope"
									ng-repeat="example_resume in example_resumes"
									ng-click="open_example_resume(example_resume.source_id)">
									<span ng-bind="example_resume_title(example_resume)"
										class="name ng-binding">노벨리스코리아㈜ 생산관리·공정관리·품질관리</span> <span
										ng-bind="spec(example_resume)" class="spec ng-binding">지방4년,
										, 학점 3.5/4.5, 토익 900, 토스 Level 6, 자격증 3개</span>
								</div>
								<!-- end ngRepeat: example_resume in example_resumes -->
								<div class="example-resume-row dotdotdot ng-scope"
									ng-repeat="example_resume in example_resumes"
									ng-click="open_example_resume(example_resume.source_id)">
									<span ng-bind="example_resume_title(example_resume)"
										class="name ng-binding">노벨리스코리아㈜ 마케팅·광고</span> <span
										ng-bind="spec(example_resume)" class="spec ng-binding">서울4년,
										, 학점 3.7/4.5, 토익 890, 자격증 1개, 인턴 3회, 자원봉사 1회</span>
								</div>
								<!-- end ngRepeat: example_resume in example_resumes -->
								<div class="example-resume-row dotdotdot ng-scope"
									ng-repeat="example_resume in example_resumes"
									ng-click="open_example_resume(example_resume.source_id)">
									<span ng-bind="example_resume_title(example_resume)"
										class="name ng-binding">노벨리스코리아㈜ 생산관리·공정관리·품질관리</span> <span
										ng-bind="spec(example_resume)" class="spec ng-binding">지방4년,
										, 학점 3.7/4.5, 토익 840, 자격증 2개, 해외경험 1회, 인턴 1회</span>
								</div>
								<!-- end ngRepeat: example_resume in example_resumes -->
								<div class="example-resume-row dotdotdot ng-scope"
									ng-repeat="example_resume in example_resumes"
									ng-click="open_example_resume(example_resume.source_id)">
									<span ng-bind="example_resume_title(example_resume)"
										class="name ng-binding">노벨리스코리아㈜ 재무·세무·IR</span> <span
										ng-bind="spec(example_resume)" class="spec ng-binding">서울4년,
										, 학점 4/4.5, 토스 Level 7, 자격증 2개</span>
								</div>
								<!-- end ngRepeat: example_resume in example_resumes -->
							</div>
							<!-- end ngIf: company_info_show_loading === false && example_resumes.length > 0 -->
							<!-- ngIf: company_info_show_loading === false && example_resumes.length === 0 -->
							<div
								class="company-information-more ga-recruit-modal-example-resume"
								ng-click="change_page('example', '')">+ 더 많은 합격 자소서 보기</div>
						</div>
					</div>
				</div>
			</div>
			<!-- end ngIf: item.target != 1 -->

			<!-- ngInclude: 'app/templates/recruit/LeadmeEpisode.html' -->
			<div id="leadme-episode"
				ng-include="'app/templates/recruit/LeadmeEpisode.html'"
				class="ng-scope">
				<div class="leadme-episode-container ng-scope">
					<div class="header">
						<div class="title">관련 에피소드</div>
						<a href="https://www.leadme.today/home/episode" target="_blank"
							ng-click="linkToLeadme()" class="piwik_ignore"> <img
							src="/assets/recruit/leadme_logo-ebd0d4c89fb03b83204c5463dcf8204f3833c4d7661e674bc90a7e19165012bf.png">
							<span>더보기</span> <i class="material-icons">chevron_right</i>
						</a>
					</div>

					<div class="episodes-container">
						<!-- ngRepeat: episode in leadmeEpisodes -->
						<div class="episode ng-scope"
							ng-repeat="episode in leadmeEpisodes"
							ng-click="clickEpisode(episode)" style="">
							<a
								ng-href="https://www.leadme.today/rest/app/episode/4745232969629696?utm_source=jasoseol&amp;utm_medium=affiliate&amp;utm_campaign=related_episode&amp;utm_term=career&amp;utm_content=%EB%85%B8%EB%B2%A8%EB%A6%AC%EC%8A%A4%EC%BD%94%EB%A6%AC%EC%95%84_36170"
								target="_blank"
								href="https://www.leadme.today/rest/app/episode/4745232969629696?utm_source=jasoseol&amp;utm_medium=affiliate&amp;utm_campaign=related_episode&amp;utm_term=career&amp;utm_content=%EB%85%B8%EB%B2%A8%EB%A6%AC%EC%8A%A4%EC%BD%94%EB%A6%AC%EC%95%84_36170">
								<div class="episode-image">
									<img
										ng-src="https://file.leadme.today/web-static/img/common/cover_default.png"
										src="https://file.leadme.today/web-static/img/common/cover_default.png">
								</div>
								<div class="episode-detail">
									<div class="episode-title ng-binding" ng-bind="::episode.title">LINE
										개발자로서 경험하고 느낀 점</div>
									<div class="episode-content ng-binding"
										ng-bind="::episode.prologue">LINE+에서 개발자로 일하면서 느낀 에피소드
										입니다.</div>
								</div>
							</a>
						</div>
						<!-- end ngRepeat: episode in leadmeEpisodes -->
						<div class="episode ng-scope"
							ng-repeat="episode in leadmeEpisodes"
							ng-click="clickEpisode(episode)">
							<a
								ng-href="https://www.leadme.today/rest/app/episode/5750796025593856?utm_source=jasoseol&amp;utm_medium=affiliate&amp;utm_campaign=related_episode&amp;utm_term=career&amp;utm_content=%EB%85%B8%EB%B2%A8%EB%A6%AC%EC%8A%A4%EC%BD%94%EB%A6%AC%EC%95%84_36170"
								target="_blank"
								href="https://www.leadme.today/rest/app/episode/5750796025593856?utm_source=jasoseol&amp;utm_medium=affiliate&amp;utm_campaign=related_episode&amp;utm_term=career&amp;utm_content=%EB%85%B8%EB%B2%A8%EB%A6%AC%EC%8A%A4%EC%BD%94%EB%A6%AC%EC%95%84_36170">
								<div class="episode-image">
									<img
										ng-src="https://file.leadme.today/web-static/img/common/cover_default.png"
										src="https://file.leadme.today/web-static/img/common/cover_default.png">
								</div>
								<div class="episode-detail">
									<div class="episode-title ng-binding" ng-bind="::episode.title">글로벌
										소프트웨어 회사, LINE에서 엔지니어로 일하기</div>
									<div class="episode-content ng-binding"
										ng-bind="::episode.prologue">LINE에서 글로벌 소프트웨어 엔지니어로서
										성장하는 경험을 함께해요.</div>
								</div>
							</a>
						</div>
						<!-- end ngRepeat: episode in leadmeEpisodes -->
						<div class="episode ng-scope"
							ng-repeat="episode in leadmeEpisodes"
							ng-click="clickEpisode(episode)">
							<a
								ng-href="https://www.leadme.today/rest/app/episode/5353872114057216?utm_source=jasoseol&amp;utm_medium=affiliate&amp;utm_campaign=related_episode&amp;utm_term=career&amp;utm_content=%EB%85%B8%EB%B2%A8%EB%A6%AC%EC%8A%A4%EC%BD%94%EB%A6%AC%EC%95%84_36170"
								target="_blank"
								href="https://www.leadme.today/rest/app/episode/5353872114057216?utm_source=jasoseol&amp;utm_medium=affiliate&amp;utm_campaign=related_episode&amp;utm_term=career&amp;utm_content=%EB%85%B8%EB%B2%A8%EB%A6%AC%EC%8A%A4%EC%BD%94%EB%A6%AC%EC%95%84_36170">
								<div class="episode-image">
									<img
										ng-src="https://file.leadme.today/web-static/img/common/cover_default.png"
										src="https://file.leadme.today/web-static/img/common/cover_default.png">
								</div>
								<div class="episode-detail">
									<div class="episode-title ng-binding" ng-bind="::episode.title">개발자로
										학부 창업기 #2 - 첫 게임을 출시하다. (개발자가 되려면 수학을 배워야 할까?)</div>
									<div class="episode-content ng-binding"
										ng-bind="::episode.prologue">개발자로 진로를 택하고 5년의 대학생 창업으로
										이어지게 된 한 개인의 이야기</div>
								</div>
							</a>
						</div>
						<!-- end ngRepeat: episode in leadmeEpisodes -->
					</div>
				</div>
			</div>
		</div>
		<div class="recommend-ctrl recommended-employments ggs-container"
			style="height: auto !important;">
			<a class="request-gg" href="/business" target="_blank"> 기업 회원 공고
				신청 </a>


			<!-- ngRepeat: g in gg -->
			<div class="gg-item ng-scope" ng-repeat="g in gg"
				data-content-name="recruit_detail_0" style="">
				<a class="ga-recruit-modal-banner"
					ng-href="https://nurimedia.recruiter.co.kr/app/jobnotice/view?systemKindCode=MRS2&amp;jobnoticeSn=21815"
					target="_blank" data-tag="200217_nurimedia"
					data-content-piece="200217_nurimedia"
					data-content-target="https://nurimedia.recruiter.co.kr/app/jobnotice/view?systemKindCode=MRS2&amp;jobnoticeSn=21815"
					data-content-ignoreinteraction="" ng-click="ggClick(g, $index)"
					href="https://nurimedia.recruiter.co.kr/app/jobnotice/view?systemKindCode=MRS2&amp;jobnoticeSn=21815">
					<img
					ng-src="https://jasoseol.s3-ap-northeast-2.amazonaws.com/ggs/images/2342/original/%EB%88%84%EB%A6%AC%EB%AF%B8%EB%94%94%EC%96%B4_%EC%B1%84%EC%9A%A9%EA%B3%B5%EA%B3%A0%EB%B0%B0%EB%84%88.jpg?1581672676"
					src="https://jasoseol.s3-ap-northeast-2.amazonaws.com/ggs/images/2342/original/%EB%88%84%EB%A6%AC%EB%AF%B8%EB%94%94%EC%96%B4_%EC%B1%84%EC%9A%A9%EA%B3%B5%EA%B3%A0%EB%B0%B0%EB%84%88.jpg?1581672676">
				</a>
			</div>
			<!-- end ngRepeat: g in gg -->
			<div id="recommend_area">
				<iframe id="cto_iframe_recommend_area" frameborder="0"
					allowtransparency="true" hspace="0" marginwidth="0"
					marginheight="0" scrolling="no" vspace="0" width="0px" height="0px"
					style="display: none;"></iframe>
				<script
					src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"
					async=""></script>
			</div>
			<div id="recommend_area2">
				<iframe id="cto_iframe_recommend_area2" frameborder="0"
					allowtransparency="true" hspace="0" marginwidth="0"
					marginheight="0" scrolling="no" vspace="0" width="0px" height="0px"
					style="display: none;"></iframe>
				<script
					src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"
					async=""></script>
			</div>
			<div id="recommend_area3"></div>
			<ins class="adsbygoogle" data-ad-client="ca-pub-7936396945185416"
				data-ad-slot="1513781489" data-ad-format="auto"
				style="display: block; height: 600px;"
				data-adsbygoogle-status="done">
				<ins id="aswift_0_expand"
					style="display: inline-table; border: none; height: 600px; margin: 0; padding: 0; position: relative; visibility: visible; width: 160px; background-color: transparent;">
					<ins id="aswift_0_anchor"
						style="display: block; border: none; height: 600px; margin: 0; padding: 0; position: relative; visibility: visible; width: 160px; background-color: transparent;">
						<iframe width="160" height="600" frameborder="0" marginwidth="0"
							marginheight="0" vspace="0" hspace="0" allowtransparency="true"
							scrolling="no" allowfullscreen="true"
							onload="var i=this.id,s=window.google_iframe_oncopy,H=s&amp;&amp;s.handlers,h=H&amp;&amp;H[i],w=this.contentWindow,d;try{d=w.document}catch(e){}if(h&amp;&amp;d&amp;&amp;(!d.body||!d.body.firstChild)){if(h.call){setTimeout(h,0)}else if(h.match){try{h=s.upd(h,i)}catch(e){}w.location.replace(h)}}"
							id="aswift_0" name="aswift_0"
							style="left: 0px; position: absolute; top: 0px; border: 0px; width: 160px; height: 600px; overflow: visible;"></iframe>
					</ins>
				</ins>
			</ins>
			<ins class="adsbygoogle" data-ad-client="ca-pub-7936396945185416"
				data-ad-slot="7158724286" data-ad-format="auto"
				style="display: block; height: 600px;"
				data-adsbygoogle-status="done">
				<ins id="aswift_1_expand"
					style="display: inline-table; border: none; height: 600px; margin: 0; padding: 0; position: relative; visibility: visible; width: 160px; background-color: transparent;">
					<ins id="aswift_1_anchor"
						style="display: block; border: none; height: 600px; margin: 0; padding: 0; position: relative; visibility: visible; width: 160px; background-color: transparent;">
						<iframe width="160" height="600" frameborder="0" marginwidth="0"
							marginheight="0" vspace="0" hspace="0" allowtransparency="true"
							scrolling="no" allowfullscreen="true"
							onload="var i=this.id,s=window.google_iframe_oncopy,H=s&amp;&amp;s.handlers,h=H&amp;&amp;H[i],w=this.contentWindow,d;try{d=w.document}catch(e){}if(h&amp;&amp;d&amp;&amp;(!d.body||!d.body.firstChild)){if(h.call){setTimeout(h,0)}else if(h.match){try{h=s.upd(h,i)}catch(e){}w.location.replace(h)}}"
							id="aswift_1" name="aswift_1"
							style="left: 0px; position: absolute; top: 0px; border: 0px; width: 160px; height: 600px; overflow: visible;"></iframe>
					</ins>
				</ins>
			</ins>
		</div>
		<!-- ngInclude: 'app/templates/recruit/employment_question.html' -->
		<div class="employment-question-container ng-scope ng-hide"
			ng-show="employment_question_show"
			ng-include="'app/templates/recruit/employment_question.html'"
			style="top: 215px;">
			<ul class="question-area ng-scope">
				<!-- ngRepeat: employment_question in selected_employment_question -->
				<li class="question-item ng-scope"
					ng-repeat="employment_question in selected_employment_question">
					<div class="question ng-binding"
						ng-bind="employment_question.question">자기소개서</div>
					<div class="count">
						(<span ng-bind="count_unit(employment_question)"
							class="ng-binding">제한 없음</span>)
					</div>
				</li>
				<!-- end ngRepeat: employment_question in selected_employment_question -->
				<li class="question-item ng-scope"
					ng-repeat="employment_question in selected_employment_question">
					<div class="question ng-binding"
						ng-bind="employment_question.question">* 자기소개서 문항이 삭제되었습니다.</div>
					<div class="count">
						(<span ng-bind="count_unit(employment_question)"
							class="ng-binding">제한 없음</span>)
					</div>
				</li>
				<!-- end ngRepeat: employment_question in selected_employment_question -->
				<li class="question-item ng-scope"
					ng-repeat="employment_question in selected_employment_question">
					<div class="question ng-binding"
						ng-bind="employment_question.question">* 자기소개서 문항이 삭제되었습니다.</div>
					<div class="count">
						(<span ng-bind="count_unit(employment_question)"
							class="ng-binding">제한 없음</span>)
					</div>
				</li>
				<!-- end ngRepeat: employment_question in selected_employment_question -->
				<li class="question-item ng-scope"
					ng-repeat="employment_question in selected_employment_question">
					<div class="question ng-binding"
						ng-bind="employment_question.question">* 자기소개서 문항이 삭제되었습니다.</div>
					<div class="count">
						(<span ng-bind="count_unit(employment_question)"
							class="ng-binding">제한 없음</span>)
					</div>
				</li>
				<!-- end ngRepeat: employment_question in selected_employment_question -->
			</ul>
			<div class="arrow-right ng-scope"></div>
		</div>
		</recruit-slide>
	</div>


</body>
</html>