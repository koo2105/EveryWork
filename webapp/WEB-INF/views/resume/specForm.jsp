<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이력서</title>
<link rel="stylesheet" type="text/css"
	href="resources/jsLib/resumeStyle.css">
<script src="resources/jsLib/jquery-3.2.1.min.js"></script>
<script src="resources/jsLib/specForm.js"></script>
<style>
body {
	background: #f0f0f0;
}
</style>

</head>
<body>


	<!-- top nav -->
	<%@ include file="/WEB-INF/views/everyUsing/navBar.jsp"%>

	<!-- SpecCtrl -->
	<div class="spec-ctrl">
		<div class="spec-container">
			<div class="section-container spec-saver">
				<div class="section-title">
					이력서
					<div class="spec-save-time ng-scope">로그인을 하지 않으면 저장되지 않습니다.</div>
				</div>
				<div class="section-content new ng-scope">

					<div class="fullpage-loading"></div>

					<div class="specs edit-spec ng-scope basic-information">

						<div class="subtitle ng-scope">
							<div class="ng-binding">기본 정보</div>
							<!-- ngIf: item.category === 0 -->
							<span class="ng-scope">입력하신 정보는 절대 사용자 동의 없이 외부로 유출,공개되지
								않습니다.</span>
						</div>

						<div class="content ng-scope">
							<div class="category-wrapper ng-scope">
								<div class="category-repeater">
									<div class="image">
										<div class="image-area">
											<!-- ngIf: currentApplicant.specs.basic_information.image_url !== null -->
											<img class="ng-scope">
											<!-- end ngIf: currentApplicant.specs.basic_information.image_url !== null -->
											<!-- ngIf: currentApplicant.specs.basic_information.image_url === null -->
										</div>
										<div class="image-buttons">
											<!-- ngIf: ctrlName === 'spec' -->
											<div class="btn button-orange button-bordered ng-scope">이미지수정하기</div>
											<!-- end ngIf: ctrlName === 'spec' -->
											<!-- ngIf: ctrlName === 'apply_immediately' -->
										</div>
									</div>
									<table class="basic-information-table">
										<colgroup>
											<col width="100px">
											<col width="130px">
											<col width="100px">
											<col width="0px">
											<col width="115px">
											<col width="100px">
											<col width="50px">
											<col width="95px">
										</colgroup>
										<tbody>
											<tr>
												<th>이름</th>
												<td><input type="text"
													class="small-input-text ng-pristine ng-untouched ng-valid"></td>
												<th>생년월일</th>
												<td colspan="3"><input type="date"
													class="ng-pristine ng-untouched ng-valid"></td>
												<th>성별</th>
												<td><select class="ng-pristine ng-untouched ng-valid">
														<option value="">-</option>
														<option value="0">남자</option>
														<option value="1">여자</option>
												</select></td>
											</tr>
											<tr>
												<th>전화번호</th>
												<td colspan="3"><input type="text"
													class="ng-pristine ng-untouched ng-valid"></td>
												<th>휴대폰번호</th>
												<td colspan="3"><input type="text"
													class="ng-pristine ng-untouched ng-valid"></td>
											</tr>
											<tr>
												<th>이메일</th>
												<td colspan="3"><input type="text"
													class="ng-pristine ng-untouched ng-valid"></td>
												<th>SNS</th>
												<td colspan="3"><input type="text"
													class="ng-pristine ng-untouched ng-valid"></td>
											</tr>
											<tr>
												<th>주소</th>
												<td colspan="7"><input type="text"
													class="basic-info-addr ng-pristine ng-untouched ng-valid"></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- end content ng-scope -->


					</div>
					<!-- end specs -->

					<div class="specs edit-spec ng-scope highschool"
						id="universityFormPlus">
						<!-- ngIf: hasSpecContent(item.category) -->
						<div class="subtitle ng-scope">
							<div class="ng-binding">고등학교</div>
							<!-- ngIf: item.category === 0 -->
						</div>
						<!-- end ngIf: hasSpecContent(item.category) -->
						<!-- ngInclude: item.template -->
						<div class="content ng-scope">
							<div class="category-wrapper ng-scope">
								<!-- ngRepeat: school in currentApplicant.specs.highschool track by $index -->
								<table class="ng-scope highschool-table category-repeater">
									<colgroup>
										<col width="120px">
										<col width="320px">
										<col width="120px">
										<col width="320px">
									</colgroup>
									<tbody>
										<tr>
											<th>기간</th>
											<td colspan="3"><input type="month"
												class="ng-pristine ng-untouched ng-valid"> <span
												class="duration-wave-mark"> ~ </span> <input type="month"
												class="ng-pristine ng-untouched ng-valid"></td>
										</tr>
										<tr>
											<th>학교명</th>
											<td><input type="text"
												class="ng-pristine ng-untouched ng-valid"></td>
											<th>분류</th>
											<td><select
												class="select-to-save ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<option value="0">문과</option>
													<option value="1">이과</option>
													<option value="2">전문(실업)계</option>
													<option value="3">예체능</option>
											</select></td>
										</tr>
									</tbody>
								</table>
								<!-- end ngRepeat: school in currentApplicant.specs.highschool track by $index -->
							</div>
						</div>
					</div>
					<!-- end highschool -->

					<div class="specs edit-spec ng-scope university"
						id="universityFormPlus">
						<!-- ngIf: hasSpecContent(item.category) -->
						<div class="subtitle ng-scope">
							<div class="ng-binding">대학교</div>
							<div class="add-del-btn outter-btn btn"
								onclick="universityAddr()">+</div>
							<!-- ngIf: item.category === 0 -->
						</div>
						<!-- end ngIf: hasSpecContent(item.category) -->
						<!-- ngInclude: item.template -->
						<div class="content ng-scope">
							<div class="category-wrapper ng-scope">
								<!-- ngRepeat: univ in currentApplicant.specs.university track by $index -->
								<table class="ng-scope university-table category-repeater">
									<colgroup>
										<col width="120px">
										<col width="200px">
										<col width="120px">
										<col width="150px">
										<col width="100px">
										<col width="190px">
									</colgroup>
									<tbody>
										<tr>
											<th>기간</th>
											<td colspan="5"><input type="month"
												class="ng-pristine ng-untouched ng-valid"> <span
												class="duration-wave-mark"> ~ </span> <input type="month"
												class="ng-pristine ng-untouched ng-valid"></td>
										</tr>
										<tr>
											<th>학교명</th>
											<td>
												<div class="spec-school-major-box">
													<span class="ng-binding"></span> <span>검색</span>
												</div>
											</td>
											<th>분류</th>
											<td><select class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<option value="0">2년제</option>
													<option value="1">3년제</option>
													<option value="2">4년제</option>
											</select></td>
											<th>학점</th>
											<td><input
												class="univ-score small-input-text ng-pristine ng-untouched ng-valid"
												type="text"> &nbsp;/&nbsp; <select
												class="ng-pristine ng-untouched ng-valid"><option
														value="?" selected="selected"></option>
													<option label="4.0" value="string:0">4.0</option>
													<option label="4.3" value="string:1">4.3</option>
													<option label="4.5" value="string:2">4.5</option>
													<option label="5.0" value="string:3">5.0</option>
													<option label="7.0" value="string:4">7.0</option>
													<option label="100" value="string:5">100</option></select></td>
										</tr>
										<tr>
											<th>주전공</th>
											<td colspan="5">
												<div class="spec-school-major-box">
													<span class="ng-binding"></span> <span>검색</span>
												</div>
												<!-- <div class="add-del-btn inner-btn btn" onclick="uni_majorAddr()">+</div> -->
											</td>
										</tr>
										<tr class="ng-scope">
											<th>전공</th>
											<td colspan="5"><select
												class="minor_subject_selector ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<option value="0">복수전공</option>
													<option value="1">부전공</option>
											</select>
												<div class="spec-school-major-box">
													<span class="ng-binding"></span> <span>검색</span>
												</div></td>
										</tr>
										<tr class="ng-scope">
											<th>전공</th>
											<td colspan="5"><select
												class="minor_subject_selector ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<option value="0">복수전공</option>
													<option value="1">부전공</option>
											</select>
												<div class="spec-school-major-box">
													<span class="ng-binding"></span> <span>검색</span>
												</div></td>
										</tr>

										<!-- 여기 전공추가 -->
										<!-- ngRepeat: minor_subject in univ.minor_subject track by $index -->
										<!-- ngIf: !$first -->
									</tbody>
								</table>
								<!-- end ngRepeat: univ in currentApplicant.specs.university track by $index -->
							</div>
						</div>
						<div id="con8"></div>
					</div>
					<!--  end university -->

					<div class="specs edit-spec ng-scope graduate-school" id="graduate_schFormPlus">
						<!-- ngIf: hasSpecContent(item.category) -->
						<div class="subtitle ng-scope">
							<div class="ng-binding">대학원</div>
							<div class="add-del-btn outter-btn btn"
								onclick="graduate_schoolAddr()">+</div>
							<!-- ngIf: item.category === 0 -->
						</div>
						<!-- end ngIf: hasSpecContent(item.category) -->
						<!-- ngInclude: item.template -->
						<div class="content ng-scope">
							<div class="category-wrapper ng-scope">
								<!-- ngRepeat: gradu in currentApplicant.specs.graduate_school track by $index -->
								<table class="ng-scope graduate-school-table category-repeater">
									<colgroup>
										<col width="120px">
										<col width="200px">
										<col width="120px">
										<col width="150px">
										<col width="100px">
										<col width="190px">
									</colgroup>
									<tbody>
										<tr>
											<th>기간</th>
											<td colspan="5"><input type="month"
												class="ng-pristine ng-untouched ng-valid"> <span
												class="duration-wave-mark"> ~ </span> <input type="month"
												class="ng-pristine ng-untouched ng-valid"></td>
										</tr>
										<tr>
											<th>학교명</th>
											<td>
												<div class="spec-school-major-box">
													<span></span> <span>검색</span>
												</div>
											</td>
											<th>분류</th>
											<td><select class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<option value="3">석사과정</option>
													<option value="4">박사과정</option>
													<option value="5">석박사통합과정</option>
											</select></td>
											<th>학점</th>
											<td><input
												class="gradu-score small-input-text ng-pristine ng-untouched ng-valid"
												type="text"> &nbsp;/&nbsp; <select
												class="ng-pristine ng-untouched ng-valid"><option
														value="?" selected="selected"></option>
													<option label="4.0" value="string:0">4.0</option>
													<option label="4.3" value="string:1">4.3</option>
													<option label="4.5" value="string:2">4.5</option>
													<option label="5.0" value="string:3">5.0</option>
													<option label="7.0" value="string:4">7.0</option>
													<option label="100" value="string:5">100</option></select></td>
										</tr>
										<tr>
											<th>주전공</th>
											<td colspan="5">
												<div class="spec-school-major-box">
													<span class="ng-binding"></span> <span>검색</span>
												</div>
											</td>
										</tr>
										<tr class="ng-scope">
											<th>전공</th>
											<td colspan="5"><select
												class="minor_subject_selector ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<option value="0">복수전공</option>
													<option value="1">부전공</option>
											</select>
												<div class="spec-school-major-box">
													<span class="ng-binding"></span> <span>검색</span>
												</div></td>
										</tr>
										<tr class="ng-scope">
											<th>전공</th>
											<td colspan="5"><select
												class="minor_subject_selector ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<option value="0">복수전공</option>
													<option value="1">부전공</option>
											</select>
												<div class="spec-school-major-box">
													<span class="ng-binding"></span> <span>검색</span>
												</div></td>
										</tr>
										<!-- ngRepeat: minor_subject in gradu.minor_subject track by $index -->
										<!-- ngIf: !$first -->
									</tbody>
								</table>
								<!-- end ngRepeat: gradu in currentApplicant.specs.graduate_school track by $index -->
							</div>
						</div>
						<div id="con9"></div>
					</div>
					<!-- end 대학원 -->

					<div class="specs edit-spec ng-scope certificate"
						id="licenseFormPlus">
						<!-- ngIf: hasSpecContent(item.category) -->
						<div class="subtitle ng-scope">
							<div class="ng-binding">자격/면허</div>
							<!-- ngIf: item.category === 0 -->
							<div class="add-del-btn outter-btn btn" onclick="licenseAddr()">+</div>
						</div>
						<!-- end ngIf: hasSpecContent(item.category) -->
						<!-- ngInclude: item.template -->
						<div class="content ng-scope">
							<div class="category-wrapper ng-scope">
								<!-- ngRepeat: certificate in currentApplicant.specs.certificate track by $index -->
								<table class="ng-scope certificate-table category-repeater">
									<colgroup>
										<col width="120px">
										<col width="320px">
										<col width="120px">
										<col width="320px">
									</colgroup>
									<tbody>
										<tr>
											<th>이름</th>
											<td colspan="3">
												<!-- <input type="text" ng&#45;model="certificate.name.content" ng&#45;blur="updateContent(certificate.name, certificate.number, item.category)" kr&#45;input> -->
												<div class="spec-school-major-box">
													<span class="ng-binding"></span> <span>검색</span>
												</div>
											</td>
										</tr>
										<tr>
											<th>발행처/기관</th>
											<td><input type="text"
												class="ng-pristine ng-untouched ng-valid"></td>
											<th>등급</th>
											<td><input type="text"
												class="ng-pristine ng-untouched ng-valid"></td>
										</tr>
										<!-- ngIf: !$first -->

									</tbody>
								</table>
								<!-- end ngRepeat: certificate in currentApplicant.specs.certificate track by $index -->
							</div>
						</div>
						<div id="con"></div>
					</div>
					<!-- end 자격/면허 -->


					<div class="specs edit-spec ng-scope career" id="careerFormPlus">
						<!-- ngIf: hasSpecContent(item.category) -->
						<div class="subtitle ng-scope">
							<div class="ng-binding">경력</div>
							<!-- ngIf: item.category === 0 -->
							<div class="add-del-btn outter-btn btn" onclick="careerAddr()">+</div>
						</div>
						<!-- end ngIf: hasSpecContent(item.category) -->
						<!-- ngInclude: item.template -->
						<div class="content ng-scope">
							<div class="category-wrapper ng-scope">
								<!-- ngRepeat: career in currentApplicant.specs.career track by $index -->
								<table class="ng-scope career-table category-repeater">
									<colgroup>
										<col width="120px">
										<col width="320px">
										<col width="120px">
										<col width="320px">
									</colgroup>
									<tbody>
										<tr>
											<th>회사명</th>
											<td><input type="text"
												class="ng-pristine ng-untouched ng-valid"></td>
											<th>기간</th>
											<td><input type="month" style="width: 135px"
												class="ng-pristine ng-untouched ng-valid"> <span
												class="duration-wave-mark"> ~ </span> <input type="month"
												style="width: 135px"
												class="ng-pristine ng-untouched ng-valid"></td>
										</tr>
										<tr>
											<th>직급</th>
											<td><input type="text"
												class="ng-pristine ng-untouched ng-valid"></td>
											<th>부서</th>
											<td><input type="text"
												class="ng-pristine ng-untouched ng-valid"></td>
										</tr>
										<tr class="assignment">
											<th>담당업무</th>
											<td colspan="3"><textarea
													class="ng-pristine ng-untouched ng-valid"></textarea></td>
										</tr>
										<tr class="resignation">
											<th>퇴사사유</th>
											<td colspan="3"><textarea
													class="ng-pristine ng-untouched ng-valid"></textarea></td>
										</tr>
										<!-- ngIf: !$first -->
									</tbody>
								</table>
								<!-- end ngRepeat: career in currentApplicant.specs.career track by $index -->
							</div>
						</div>
						<div id="con1"></div>
					</div>
					<!-- end 경력 -->


					<div class="specs edit-spec ng-scope language"
						id="languageFormPlus">
						<!-- ngIf: hasSpecContent(item.category) -->
						<div class="subtitle ng-scope">
							<div class="ng-binding">어학</div>
							<!-- ngIf: item.category === 0 -->
							<div class="add-del-btn outter-btn btn" onclick="languageAddr()">+</div>
						</div>
						<!-- end ngIf: hasSpecContent(item.category) -->
						<!-- ngInclude: item.template -->
						<div class="content ng-scope">
							<div class="category-wrapper ng-scope">
								<!-- ngRepeat: language in currentApplicant.specs.language track by $index -->
								<table class="ng-scope language-table category-repeater">
									<colgroup>
										<col width="120px">
										<col width="320px">
										<col width="120px">
										<col width="320px">
									</colgroup>
									<tbody>
										<tr>
											<th>외국어명</th>
											<td><input type="text"
												class="ng-pristine ng-untouched ng-valid"></td>
											<th>시험명</th>
											<td>
												<!-- <input type="text" ng&#45;model="language.test.content" ng&#45;blur="updateContent(language.test, language.number, item.category)" kr&#45;input> -->
												<div class="spec-school-major-box">
													<span class="ng-binding"></span> <span>검색</span>
													<!-- <span ng&#45;click="search_univ_major('language', item.category, language.number)">검색</span> -->
												</div>
											</td>
										</tr>
										<tr>
											<th class="ng-binding">점수/등급</th>
											<td><input type="text"
												class="ng-pristine ng-untouched ng-valid"></td>
											<th>취득일</th>
											<td><input type="date"
												class="ng-pristine ng-untouched ng-valid"></td>
										</tr>
										<!-- ngIf: !$first -->
									</tbody>
								</table>
								<!-- end ngRepeat: language in currentApplicant.specs.language track by $index -->
							</div>
						</div>
						<div id="con2"></div>
					</div>
					<!-- end 어학 -->


					<div class="specs edit-spec ng-scope award" id=awardFormPlus>
						<!-- ngIf: hasSpecContent(item.category) -->
						<div class="subtitle ng-scope">
							<div class="ng-binding">수상경력</div>
							<!-- ngIf: item.category === 0 -->
							<div class="add-del-btn outter-btn btn" onclick="awardAddr()">+</div>
						</div>
						<!-- end ngIf: hasSpecContent(item.category) -->
						<!-- ngInclude: item.template -->
						<div class="content ng-scope">
							<div class="category-wrapper ng-scope">
								<!-- ngRepeat: award in currentApplicant.specs.award track by $index -->
								<table class="ng-scope award-table category-repeater">
									<colgroup>
										<col width="120px">
										<col width="320px">
										<col width="120px">
										<col width="320px">
									</colgroup>
									<tbody>
										<tr>
											<th>수상명</th>
											<td><input type="text"
												class="ng-pristine ng-untouched ng-valid"></td>
											<th>수상내용</th>
											<td><input type="text"
												class="ng-pristine ng-untouched ng-valid"></td>
										</tr>
										<tr>
											<th>수여기관</th>
											<td><input type="text"
												class="ng-pristine ng-untouched ng-valid"></td>
											<th>수상일</th>
											<td><input type="date"
												class="ng-pristine ng-untouched ng-valid"></td>
										</tr>
										<!-- ngIf: !$first -->
									</tbody>
								</table>
								<!-- end ngRepeat: award in currentApplicant.specs.award track by $index -->
							</div>
						</div>
						<div id="con3"></div>
					</div>
					<!-- end 수상경력 -->


					<div class="specs edit-spec ng-scope abroad" id="abroadFormPlus">
						<!-- ngIf: hasSpecContent(item.category) -->
						<div class="subtitle ng-scope">
							<div class="ng-binding">해외연수</div>
							<!-- ngIf: item.category === 0 -->
							<div class="add-del-btn outter-btn btn" onclick="abroadAddr()">+</div>
						</div>
						<!-- end ngIf: hasSpecContent(item.category) -->
						<!-- ngInclude: item.template -->
						<div class="content ng-scope">
							<div class="category-wrapper ng-scope" data-category="8">
								<!-- ngRepeat: abroad in currentApplicant.specs.abroad track by $index -->
								<table class="ng-scope abroad-table category-repeater">
									<colgroup>
										<col width="120px">
										<col width="320px">
										<col width="120px">
										<col width="320px">
									</colgroup>
									<tbody>
										<tr>
											<th>국가</th>
											<td><input type="text"
												class="ng-pristine ng-untouched ng-valid"></td>
											<th>기관</th>
											<td><input type="text"
												class="ng-pristine ng-untouched ng-valid"></td>
										</tr>
										<tr class="objective">
											<th>목적 및 내용</th>
											<td colspan="3"><textarea
													class="ng-pristine ng-untouched ng-valid"></textarea></td>
										</tr>
										<!-- ngIf: !$first -->
									</tbody>
								</table>
								<!-- end ngRepeat: abroad in currentApplicant.specs.abroad track by $index -->
							</div>
						</div>
						<div id="con4"></div>
					</div>
					<!-- end 해외연수 -->

					<div class="specs edit-spec ng-scope advantage"
						id="advantageFormPlus">
						<!-- ngIf: hasSpecContent(item.category) -->
						<div class="subtitle ng-scope">
							<div class="ng-binding">취업우대사항</div>
							<!-- ngIf: item.category === 0 -->
							<div class="add-del-btn outter-btn btn ng-hide"
								onclick="advantageAddr()">+</div>
						</div>
						<!-- end ngIf: hasSpecContent(item.category) -->
						<!-- ngInclude: item.template -->
						<div class="content ng-scope">
							<div class="category-wrapper ng-scope">
								<div class="category-repeater">
									<table class="advantage-table">
										<colgroup>
											<col width="120px">
											<col width="320px">
											<col width="120px">
											<col width="320px">
										</colgroup>
										<tbody>
											<tr>
												<th>보훈사항</th>
												<td colspan="3"><input type="radio" name="patriot"
													value="true" class="ng-pristine ng-untouched ng-valid">대상
													<input type="radio" name="patriot" value="false"
													class="ng-pristine ng-untouched ng-valid">비대상</td>
											</tr>
											<tr>
												<th>장애여부</th>
												<td colspan="3"><input type="radio" name="handicapped"
													value="true" class="ng-pristine ng-untouched ng-valid">대상
													<input type="radio" name="handicapped" value="false"
													class="ng-pristine ng-untouched ng-valid">비대상 <input
													type="text"
													class="ng-pristine ng-untouched ng-valid ng-hide">
												</td>
											</tr>
											<tr>
												<th>병역구분</th>
												<td><input type="radio" name="military_division"
													class="ng-pristine ng-untouched ng-valid" value="0">군필
													<input type="radio" name="military_division"
													class="ng-pristine ng-untouched ng-valid" value="1">미필
													<input type="radio" name="military_division"
													class="ng-pristine ng-untouched ng-valid" value="2">면제</td>
												<th>복무기간</th>
												<td><input type="month" style="width: 135px"
													class="ng-pristine ng-untouched ng-valid"> <span
													class="duration-wave-mark"> ~ </span> <input type="month"
													style="width: 135px"
													class="ng-pristine ng-untouched ng-valid"></td>
											</tr>
											<tr>
												<th>군별</th>
												<td><input type="text"
													class="ng-pristine ng-untouched ng-valid"></td>
												<th>계급</th>
												<td><input type="text"
													class="ng-pristine ng-untouched ng-valid"></td>
											</tr>
											<!-- ngIf: !$first -->
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<div id="con5"></div>
					</div>
					<!-- end 취업우대사항 -->

					<div class="specs edit-spec ng-scope social-activity"
						id="social_activityFormPlus">
						<!-- ngIf: hasSpecContent(item.category) -->
						<div class="subtitle ng-scope">
							<div class="ng-binding">관련활동 및 사회경험</div>
							<!-- ngIf: item.category === 0 -->
							<div class="add-del-btn outter-btn btn"
								onclick="social_activityAddr()">+</div>
						</div>
						<!-- end ngIf: hasSpecContent(item.category) -->
						<!-- ngInclude: item.template -->
						<div class="content ng-scope">
							<div class="category-wrapper ng-scope">
								<!-- ngRepeat: social in currentApplicant.specs.social_activity track by $index -->
								<table class="ng-scope social-activity-table category-repeater">
									<colgroup>
										<col width="120px">
										<col width="320px">
										<col width="120px">
										<col width="320px">
									</colgroup>
									<tbody>
										<tr>
											<th>활동명</th>
											<td><input type="text"
												class="ng-pristine ng-untouched ng-valid"></td>
											<th>기관/장소</th>
											<td><input type="text"
												class="ng-pristine ng-untouched ng-valid"></td>
										</tr>
										<tr>
											<th>활동기간</th>
											<td colspan="3"><input type="date"
												class="ng-pristine ng-untouched ng-valid"> <span
												class="duration-wave-mark"> ~ </span> <input type="date"
												class="ng-pristine ng-untouched ng-valid"></td>
										</tr>
										<tr class="activities">
											<th>내용</th>
											<td colspan="3"><textarea
													class="ng-pristine ng-untouched ng-valid"></textarea></td>
										</tr>
										<!-- ngIf: !$first -->
									</tbody>
								</table>
								<!-- end ngRepeat: social in currentApplicant.specs.social_activity track by $index -->
							</div>
						</div>
						<div id="con6"></div>
					</div>
					<!-- end 관련활동 및 사회경험 -->


					<div class="specs edit-spec ng-scope education"
						id="educationFormPlus">
						<!-- ngIf: hasSpecContent(item.category) -->
						<div class="subtitle ng-scope">
							<div class="ng-binding">교육</div>
							<!-- ngIf: item.category === 0 -->
							<div class="add-del-btn outter-btn btn" onclick="educationAddr()">+</div>
						</div>
						<!-- end ngIf: hasSpecContent(item.category) -->
						<!-- ngInclude: item.template -->
						<div class="content ng-scope">
							<div class="category-wrapper ng-scope">
								<!-- ngRepeat: education in currentApplicant.specs.education track by $index -->
								<table class="ng-scope education-table category-repeater">
									<colgroup>
										<col width="120px">
										<col width="320px">
										<col width="120px">
										<col width="320px">
									</colgroup>
									<tbody>
										<tr>
											<th>교육명</th>
											<td><input type="text"
												class="ng-pristine ng-untouched ng-valid"></td>
											<th>교육기관</th>
											<td><input type="text"
												class="ng-pristine ng-untouched ng-valid"></td>
										</tr>
										<tr>
											<th>활동기간</th>
											<td colspan="3"><input type="date"
												class="ng-pristine ng-untouched ng-valid"> <span
												class="duration-wave-mark"> ~ </span> <input type="date"
												class="ng-pristine ng-untouched ng-valid"></td>
										</tr>
										<tr class="educations">
											<th>내용</th>
											<td colspan="3"><textarea
													class="ng-pristine ng-untouched ng-valid"></textarea></td>
										</tr>
										<!-- ngIf: !$first -->
									</tbody>
								</table>
								<!-- end ngRepeat: education in currentApplicant.specs.education track by $index -->
							</div>
						</div>
						<div id="con7"></div>
					</div>
					<!-- end 교육 -->


				</div>
				<!-- end section-content -->
			</div>
			<!-- end section-container -->

		</div>
		<!-- end spec-container -->
	</div>
	<!-- end SpecCtrl -->
</body>
</html>