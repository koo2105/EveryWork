<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** jobDetail **</title>
<link rel="stylesheet" type="text/css"
	href="resources/jsLib/jobStyle.css">
<script src="resources/jsLib/jquery-3.2.1.min.js"></script>
<script src="resources/jsLib/namchulAjax.js"></script>

<script>
function resumeOpen(){
	$.ajax({
		type:'Post',
		url:'jobopenDetail',
		data:{
		jobopen_id:jobopen_id,
		
		},
		success: function(result){
			//$('.jobDetail-div').html(result);
			$('.jobDetail-div').html(result);
		}
	});//ajax
</script>

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





	<div class="employment-slide-container ng-scope"  tabindex="0">
		<!-- ngRepeat: p in position track by $index -->
		<div
			class="employment-slide ng-scope slide-left recruit-slide-undefined">
			<!-- ngIf: p.show -->
		</div>
		<!-- end ngRepeat: p in position track by $index -->
		<div
			class="employment-slide ng-scope slide-center recruit-slide-36142">
			<!-- ngIf: p.show -->
			<div class="employment-modal ng-scope" >
				<div class="modal-dialog">
					<!-- ngIf: isShowProgressBar -->

					<div class="modal-content">
						<img class="x-button" src="resources/img/x_btn.png" onclick="jDetailClose()">
						<div class="modal-body">
							<div class="employment-information nav-anchor">
								<div class="ec-info-container">
									<div class="ec-image">
										<img src="${jDetail.jobopen_pimg}">
									</div>
									<div class="ec-info">
										<!-- <div class="ec-info-title ec-name">기업명</div> -->
										<div class="ec-info-content ec-name">
											<span class="ng-binding">${jDetail.jobopen_company}</span> 
											<!-- 별모양 -->
											<img class="toggle-favorite ng-hide" src="resources/img/star_unselect.png"> 
											<img class="toggle-favorite" src="resources/img/star_select.png">
										</div>
										<div class="ec-info-content period">
											<!-- ngIf: item.recruit_type === 0 -->
											<div class="ng-scope" style="">
												<span class="time"> <span class="ng-binding">${jDetail.jobopen_sdate}</span>
													~ <span class="ng-binding">${jDetail.jobopen_edate}</span>
												</span> (<span class="orange ng-binding">${jDetail.endDday}</span>)
											</div>
											<!-- end ngIf: item.recruit_type === 0 -->
											<!-- ngIf: item.recruit_type === 1 -->
										</div>
										<div class="ec-info-content buttons">
											<!-- ngIf: item.employment_page_url !== null -->
											<div class="ec-wrapper homepage ng-scope">
												<a
													class="ec-option-letters link-homepage-string piwik-recruit-modal-homepage ga-recruit-modal-homepage"
													target="_blank" href="${jDetail.jobopen_link}"> 홈페이지 </a>
											</div>
											<!-- end ngIf: item.employment_page_url !== null -->

											<div class="ec-wrapper recruit-ref" style="">
												<a
													class="ec-option-letters dropdown-toggle link-homepage-string"
													target="_blank" href="http://joburl.kr/WiiMI"> 기업 공채 전략
												</a>
											</div>
											<!-- ngIf: item.attached_file_url !== null && item.attached_file_url !== undefined -->
										</div>
										<div class="count-information">
											<div class="count-item">
												공고 조회&nbsp;<span class="num ng-binding">${jDetail.jobopen_count}</span>회
											</div>
											<!-- ngIf: item.employment_page_url !== null -->
											<div class="vertical-line ng-scope"></div>
											<!-- end ngIf: item.employment_page_url !== null -->
											<div class="count-item">
												즐겨찾기&nbsp;<span class="num ng-binding">110</span>회
											</div>
											<div class="vertical-line"></div>
											<!-- ngIf: item.employment_page_url !== null -->
										</div>
									</div>
								</div>
							</div>
							
							
							
							<div class="write-resume">
								<table>
						<c:forEach var="jcl" items="${JobcaList}" varStatus=""> 
									<tbody>
										<!-- ngRepeat: employment in employments -->
										<tr class="ng-scope" style="">
											<td class="division ng-binding">${jcl.jc_div}</td>
											<td class="field ng-binding">${jcl.jc_part}</td>
											<td class="count"><span class="ng-binding">16</span>명 작성</td>
											<!-- ngIf: employment.employment_resume -->
											<td class="resume ng-scope">
												<!-- ngIf: employment.before_end_time -->
												<div class="write-resume-button ng-scope">
													<!-- ngIf: direct_apply -->
													<!-- ngIf: !direct_apply -->
													<span class="ng-scope" onclick="location.href='wResumeDetail?jc_id=${jcl.jc_id}&emem_id=${loginID}&jobopen_company=${jDetail.jobopen_company}'">자기소개서 쓰기</span>
													<!-- end ngIf: !direct_apply -->
												</div> <!-- end ngIf: employment.before_end_time --> <!-- ngIf: !employment.before_end_time -->
											</td>
											<!-- end ngIf: employment.employment_resume -->
											<!-- ngIf: !employment.employment_resume -->
										</tr>
										<!-- end ngRepeat: employment in employments -->
									</tbody>
							</c:forEach>
								</table>
							</div>
							<div class="employment-notice nav-anchor">
								<!-- ngIf: isRecruitErrorShow -->
								<div class="content ng-binding">
									<div
										style="position: relative; display: block; text-align: center;">
										<img alt=""
											src="${jDetail.jobopen_cimg}"
											style="height: 2251px; width: 800px"> <a
											href="${jDetail.jobopen_link}"
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
					</div>
				</div>
			</div>
			<!-- end ngIf: p.show -->
		</div>
		<!-- end ngRepeat: p in position track by $index -->
	
		
	
	</div>



</body>
</html>