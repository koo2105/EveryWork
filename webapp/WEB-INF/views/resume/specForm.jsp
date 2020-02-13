<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
					<c:if test="${loginID==null}">
						<div class="spec-save-time ng-scope">
							<b>로그인<b>을 하지 않으면 저장되지 않습니다.
						</div>
					</c:if>
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
												<td><input type="text" id="spec_name" name="spec_name"
													class="small-input-text ng-pristine ng-untouched ng-valid"
													value="${sDetail.spec_name}"></td>
												<th>생년월일</th>
												<td colspan="3"><input type="date" id="spec_birthd"
													name="spec_birthd" value="${sDetail.spec_birthd}"
													class="ng-pristine ng-untouched ng-valid"></td>
												<th>성별</th>
												<td><select class="ng-pristine ng-untouched ng-valid">
														<c:if test="${sDetail.spec_gender==null}">
															<option value="" selected="selected">-</option>
															<option value="0">남자</option>
															<option value="1">여자</option>
														</c:if>
														<c:if test="${sDetail.spec_gender=='0'}">
															<option value="">-</option>
															<option value="0" selected="selected">남자</option>
															<option value="1">여자</option>
														</c:if>
														<c:if test="${sDetail.spec_gender=='1'}">
															<option value="">-</option>
															<option value="0">남자</option>
															<option value="1" selected="selected">여자</option>
														</c:if>
												</select></td>
											</tr>
											<tr>
												<th>전화번호</th>
												<td colspan="3"><input type="text" id="spec_Num "
													name="spec_Num " value="${sDetail.spec_Num}"
													class="ng-pristine ng-untouched ng-valid"></td>
												<th>휴대폰번호</th>
												<td colspan="3"><input type="text" id="spec_phoneNum"
													name="spec_phoneNum"
													value="${sDetail.spec_phoneNum}
													class="
													ng-pristine ng-untouchedng-valid"></td>
											</tr>
											<tr>
												<th>이메일</th>
												<td colspan="3"><input type="text" id="spec_email"
													name="spec_email"
													value="${sDetail.spec_email}
													class="
													ng-pristine ng-untouchedng-valid"></td>
												<th>SNS</th>
												<td colspan="3"><input type="text" id="spec_sns"
													name="spec_sns"
													value="${sDetail.spec_sns}
													class="
													ng-pristine ng-untouchedng-valid"></td>
											</tr>
											<tr>
												<th>주소</th>
												<td colspan="7"><input type="text" id="spec_add"
													name="spec_add"
													value="${sDetail.spec_add}
													class="
													basic-info-addr ng-pristine ng-untouchedng-valid"></td>
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
											<td colspan="3"><input type="date"
												class="ng-pristine ng-untouched ng-valid"
												value="${sDetail.spec_hsperiod}"> <span
												class="duration-wave-mark"> ~ </span> <input type="date"
												class="ng-pristine ng-untouched ng-valid"
												value="${sDetail.spec_heperiod}"></td>
										</tr>
										<tr>
											<th>학교명</th>
											<td><input type="text"
												class="ng-pristine ng-untouched ng-valid"
												value="${sDetail.spec_hname}"></td>
											<th>분류</th>
											<td><select
												class="select-to-save ng-pristine ng-untouched ng-valid">
													<c:if test="${sDetail.spec_hkind==null}">
														<option value="" selected="selected">-</option>
														<option value="0">문과</option>
														<option value="1">이과</option>
														<option value="2">전문(실업)계</option>
														<option value="3">예체능</option>
													</c:if>
													<c:if test="${sDetail.spec_hkind=='0'}">
														<option value="">-</option>
														<option value="0" selected="selected">문과</option>
														<option value="1">이과</option>
														<option value="2">전문(실업)계</option>
														<option value="3">예체능</option>
													</c:if>
													<c:if test="${sDetail.spec_hkind=='1'}">
														<option value="">-</option>
														<option value="0">문과</option>
														<option value="1" selected="selected">이과</option>
														<option value="2">전문(실업)계</option>
														<option value="3">예체능</option>
													</c:if>
													<c:if test="${sDetail.spec_hkind=='2'}">
														<option value="">-</option>
														<option value="0">문과</option>
														<option value="1">이과</option>
														<option value="2" selected="selected">전문(실업)계</option>
														<option value="3">예체능</option>
													</c:if>
													<c:if test="${sDetail.spec_hkind=='3'}">
														<option value="">-</option>
														<option value="0">문과</option>
														<option value="1">이과</option>
														<option value="2">전문(실업)계</option>
														<option value="3" selected="selected">예체능</option>
													</c:if>
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

						<c:forEach var="uu" items="${ulist}" varStatus="uvs">

							<c:if test="${uvs.index=='0'}">
								<div class="content ng-scope" id="universityFormPlus0">
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
													<td colspan="5"><input type="date"
														class="ng-pristine ng-untouched ng-valid"
														value="${uu.uni_speriod}"> <span
														class="duration-wave-mark"> ~ </span> <input type="date"
														class="ng-pristine ng-untouched ng-valid"
														value="${uu.uni_eperiod}"></td>
												</tr>
												<tr>
													<th>학교명</th>
													<td><input type="text" class="spec-school-major-box"
														value="${uu.uni_name}"></td>
													<th>분류</th>
													<td><select class="ng-pristine ng-untouched ng-valid">
															<c:if test="${uu.uni_kind==null}">
																<option value="" selected="selected">-</option>
																<option value="0">2년제</option>
																<option value="1">3년제</option>
																<option value="2">4년제</option>
															</c:if>
															<c:if test="${uu.uni_kind=='0'}">
																<option value="">-</option>
																<option value="0" selected="selected">2년제</option>
																<option value="1">3년제</option>
																<option value="2">4년제</option>
															</c:if>
															<c:if test="${uu.uni_kind=='1'}">
																<option value="">-</option>
																<option value="0">2년제</option>
																<option value="1" selected="selected">3년제</option>
																<option value="2">4년제</option>
															</c:if>
															<c:if test="${uu.uni_kind=='2'}">
																<option value="">-</option>
																<option value="0">2년제</option>
																<option value="1">3년제</option>
																<option value="2" selected="selected">4년제</option>
															</c:if>
													</select></td>
													<th>학점</th>
													<td><input
														class="univ-score small-input-text ng-pristine ng-untouched ng-valid"
														type="text" value="${uu.uni_grade}"></td>
												</tr>
												<tr>
													<th>주전공</th>
													<td colspan="5"><input type="text"
														class="spec-school-major-box" value="${uu.uni_major}">
														<!-- <div class="add-del-btn inner-btn btn" onclick="uni_majorAddr()">+</div> -->
													</td>
												</tr>
												<tr class="ng-scope">
													<th>전공</th>
													<td colspan="5"><input type="text"
														class="spec-school-major-box" value="${uu.uni_smajor1}">
													</td>
												</tr>
												<tr class="ng-scope">
													<th>전공</th>
													<td colspan="5"><input type="text"
														class="spec-school-major-box" value="${uu.uni_smajor2}">
													</td>
												</tr>

												<!-- 여기 전공추가 -->
												<!-- ngRepeat: minor_subject in univ.minor_subject track by $index -->
												<!-- ngIf: !$first -->
											</tbody>
										</table>
										<!-- end ngRepeat: univ in currentApplicant.specs.university track by $index -->
									</div>
								</div>
							</c:if>

							<c:if test="${uvs.index!='0'}">
								<div class="content ng-scope"
									id="universityFormPlus${uvs.index}">
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
													<td colspan="5"><input type="date"
														class="ng-pristine ng-untouched ng-valid"
														value="${uu.uni_speriod}"> <span
														class="duration-wave-mark"> ~ </span> <input type="date"
														class="ng-pristine ng-untouched ng-valid"
														value="${uu.uni_eperiod}"></td>
												</tr>
												<tr>
													<th>학교명</th>
													<td><input type="text" class="spec-school-major-box"
														value="${uu.uni_name}"></td>
													<th>분류</th>
													<td><select class="ng-pristine ng-untouched ng-valid">
															<c:if test="${uu.uni_kind==null}">
																<option value="" selected="selected">-</option>
																<option value="0">2년제</option>
																<option value="1">3년제</option>
																<option value="2">4년제</option>
															</c:if>
															<c:if test="${uu.uni_kind=='0'}">
																<option value="">-</option>
																<option value="0" selected="selected">2년제</option>
																<option value="1">3년제</option>
																<option value="2">4년제</option>
															</c:if>
															<c:if test="${uu.uni_kind=='1'}">
																<option value="">-</option>
																<option value="0">2년제</option>
																<option value="1" selected="selected">3년제</option>
																<option value="2">4년제</option>
															</c:if>
															<c:if test="${uu.uni_kind=='2'}">
																<option value="">-</option>
																<option value="0">2년제</option>
																<option value="1">3년제</option>
																<option value="2" selected="selected">4년제</option>
															</c:if>
													</select></td>
													<th>학점</th>
													<td><input
														class="univ-score small-input-text ng-pristine ng-untouched ng-valid"
														type="text" value="${uu.uni_grade}"></td>
												</tr>
												<tr>
													<th>주전공</th>
													<td colspan="5"><input type="text"
														class="spec-school-major-box" value="${uu.uni_major}">
													</td>
												</tr>

												<tr class="ng-scope">
													<th>전공</th>
													<td colspan="5"><input type="text"
														class="spec-school-major-box" value="${uu.uni_smajor1}">
													</td>
												</tr>
												<tr class="ng-scope">
													<th>전공</th>
													<td colspan="5"><input type="text"
														class="spec-school-major-box" value="${uu.uni_smajor2}">
													</td>
												</tr>
												<!-- ngRepeat: minor_subject in univ.minor_subject track by $index -->
												<!-- ngIf: !$first -->
												<tr class="table-option-row ng-scope">
													<td colspan="6">
														<div class="delete-content"
															onclick="universitydelete('universityFormPlus${uvs.index}')">삭제하기</div>
													</td>
												</tr>
											</tbody>
										</table>
										<!-- end ngRepeat: univ in currentApplicant.specs.university track by $index -->
									</div>
								</div>

							</c:if>

						</c:forEach>

						<div id="con8"></div>
					</div>
					<!--  end university -->

					<div class="specs edit-spec ng-scope graduate-school"
						id="graduate_schFormPlus">
						<!-- ngIf: hasSpecContent(item.category) -->
						<div class="subtitle ng-scope">
							<div class="ng-binding">대학원</div>
							<div class="add-del-btn outter-btn btn"
								onclick="graduate_schoolAddr()">+</div>
							<!-- ngIf: item.category === 0 -->
						</div>
						<!-- end ngIf: hasSpecContent(item.category) -->
						<!-- ngInclude: item.template -->

						<c:forEach var="gg" items="${mlist}" varStatus="gvs">
							<c:if test="${gvs.index=='0'}">
								<div class="content ng-scope"
									id="graduate_schFormPlus${gvs.index}">
									<div class="category-wrapper ng-scope">
										<!-- ngRepeat: gradu in currentApplicant.specs.graduate_school track by $index -->
										<table
											class="ng-scope graduate-school-table category-repeater">
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
													<td colspan="5"><input type="date"
														class="ng-pristine ng-untouched ng-valid"
														value="${gg.gra_speriod}"> <span
														class="duration-wave-mark"> ~ </span> <input type="date"
														class="ng-pristine ng-untouched ng-valid"
														value="${gg.gra_eperiod}"></td>
												</tr>
												<tr>
													<th>학교명</th>
													<td><input type="text" class="spec-school-major-box"
														value="${gg.gra_name}"></td>
													<th>분류</th>
													<td><select class="ng-pristine ng-untouched ng-valid">
															<c:if test="${gg.gra_kind==null}">
																<option value="" selected="selected">-</option>
																<option value="0">석사과정</option>
																<option value="1">박사과정</option>
																<option value="2">석박사통합과정</option>
															</c:if>
															<c:if test="${gg.gra_kind=='0'}">
																<option value="">-</option>
																<option value="0" selected="selected">석사과정</option>
																<option value="1">박사과정</option>
																<option value="2">석박사통합과정</option>
															</c:if>
															<c:if test="${gg.gra_kind=='1'}">
																<option value="">-</option>
																<option value="0">석사과정</option>
																<option value="1" selected="selected">박사과정</option>
																<option value="2">석박사통합과정</option>
															</c:if>
															<c:if test="${gg.gra_kind=='2'}">
																<option value="">-</option>
																<option value="0">석사과정</option>
																<option value="1">박사과정</option>
																<option value="2" selected="selected">석박사통합과정</option>
															</c:if>
													</select></td>
													<th>학점</th>
													<td><input
														class="univ-score small-input-text ng-pristine ng-untouched ng-valid"
														type="text" value="${gg.gra_grade}"></td>
												</tr>
												<tr>
													<th>주전공</th>
													<td colspan="5"><input type="text"
														class="spec-school-major-box" value="${gg.gra_major}">
													</td>
												</tr>
												<tr class="ng-scope">
													<th>전공</th>
													<td colspan="5"><input type="text"
														class="spec-school-major-box" value="${gg.gra_smajor1}"></td>
												</tr>
												<tr class="ng-scope">
													<th>전공</th>
													<td colspan="5"><input type="text"
														class="spec-school-major-box" value="${gg.gra_smajor2}"></td>
												</tr>
												<!-- ngRepeat: minor_subject in gradu.minor_subject track by $index -->
												<!-- ngIf: !$first -->
											</tbody>
										</table>
										<!-- end ngRepeat: gradu in currentApplicant.specs.graduate_school track by $index -->
									</div>
								</div>
							</c:if>

							<c:if test="${gvs.index!='0'}">
								<div class="content ng-scope"
									id="graduate_schFormPlus${gvs.index}">
									<div class="category-wrapper ng-scope">
										<!-- ngRepeat: gradu in currentApplicant.specs.graduate_school track by $index -->
										<table
											class="ng-scope graduate-school-table category-repeater">
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
													<td colspan="5"><input type="date"
														class="ng-pristine ng-untouched ng-valid"
														value="${gg.gra_speriod}"> <span
														class="duration-wave-mark"> ~ </span> <input type="date"
														class="ng-pristine ng-untouched ng-valid"
														value="${gg.gra_eperiod}"></td>
												</tr>
												<tr>
													<th>학교명</th>
													<td><input type="text" class="spec-school-major-box"
														value="${gg.gra_name}"></td>
													<th>분류</th>
													<td><select class="ng-pristine ng-untouched ng-valid">
															<c:if test="${gg.gra_kind==null}">
																<option value="" selected="selected">-</option>
																<option value="0">석사과정</option>
																<option value="1">박사과정</option>
																<option value="2">석박사통합과정</option>
															</c:if>
															<c:if test="${gg.gra_kind=='0'}">
																<option value="">-</option>
																<option value="0" selected="selected">석사과정</option>
																<option value="1">박사과정</option>
																<option value="2">석박사통합과정</option>
															</c:if>
															<c:if test="${gg.gra_kind=='1'}">
																<option value="">-</option>
																<option value="0">석사과정</option>
																<option value="1" selected="selected">박사과정</option>
																<option value="2">석박사통합과정</option>
															</c:if>
															<c:if test="${gg.gra_kind=='2'}">
																<option value="">-</option>
																<option value="0">석사과정</option>
																<option value="1">박사과정</option>
																<option value="2" selected="selected">석박사통합과정</option>
															</c:if>
													</select></td>
													<th>학점</th>
													<td><input
														class="univ-score small-input-text ng-pristine ng-untouched ng-valid"
														type="text" value="${gg.gra_grade}"></td>
												</tr>
												<tr>
													<th>주전공</th>
													<td colspan="5"><input type="text"
														class="spec-school-major-box" value="${gg.gra_major}">
													</td>
												</tr>
												<tr class="ng-scope">
													<th>전공</th>
													<td colspan="5"><input type="text"
														class="spec-school-major-box" value="${gg.gra_smajor1}">
													</td>
												</tr>
												<tr class="ng-scope">
													<th>전공</th>
													<td colspan="5"><input type="text"
														class="spec-school-major-box" value="${gg.gra_smajor2}"></td>
												</tr>
												<!-- ngRepeat: minor_subject in gradu.minor_subject track by $index -->
												<!-- ngIf: !$first -->
												<tr class="table-option-row ng-scope">
													<td colspan="6">
														<div class="delete-content"
															onclick="graduate_schooldelete('graduate_schFormPlus${gvs.index}')">삭제하기</div>
													</td>
												</tr>
											</tbody>
										</table>
										<!-- end ngRepeat: gradu in currentApplicant.specs.graduate_school track by $index -->
									</div>
								</div>
							</c:if>
						</c:forEach>
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

						<c:forEach var="li" items="${lilist}" varStatus="livs">
							<c:if test="${livs.index=='0'}">
								<div class="content ng-scope" id="licenseFormPlus${livs.index}">
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
														<input type="text" class="spec-school-major-box"
														value="${li.lic_name}">
													</td>
												</tr>
												<tr>
													<th>발행처/기관</th>
													<td><input type="text"
														class="ng-pristine ng-untouched ng-valid"
														value="${li.lic_pub}"></td>
													<th>등급</th>
													<td><input type="text"
														class="ng-pristine ng-untouched ng-valid"
														value="${li.lic_grade}"></td>
												</tr>
												<!-- ngIf: !$first -->

											</tbody>
										</table>
										<!-- end ngRepeat: certificate in currentApplicant.specs.certificate track by $index -->
									</div>
								</div>
							</c:if>
							<c:if test="${livs.index!='0'}">
								<div class="content ng-scope" id="licenseFormPlus${livs.index}">
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
														<input type="text" class="spec-school-major-box"
														value="${li.lic_name}">
													</td>
												</tr>
												<tr>
													<th>발행처/기관</th>
													<td><input type="text"
														class="ng-pristine ng-untouched ng-valid"
														value="${li.lic_pub}"></td>
													<th>등급</th>
													<td><input type="text"
														class="ng-pristine ng-untouched ng-valid"
														value="${li.lic_grade}"></td>
												</tr>
												<!-- ngIf: !$first -->
												<tr class="table-option-row ng-scope">
													<td colspan="4">
														<div class="delete-content"
															onclick="licensedelete('licenseFormPlus${livs.index}')">삭제하기</div>
													</td>
												</tr>
											</tbody>
										</table>
										<!-- end ngRepeat: certificate in currentApplicant.specs.certificate track by $index -->
									</div>
								</div>
							</c:if>
						</c:forEach>
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
						
						<c:forEach var="cl" items="${clist}" varStatus="cvs">
						<c:if test="${cvs.index=='0'}">
						<div class="content ng-scope" id="careerFormPlus${cvs.index}">
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
												class="ng-pristine ng-untouched ng-valid" value="${cl.car_name}"></td>
											<th>기간</th>
											<td><input type="date" style="width: 135px"
												class="ng-pristine ng-untouched ng-valid" value="${cl.car_speriod}"> <span
												class="duration-wave-mark"> ~ </span> <input type="date"
												style="width: 135px"
												class="ng-pristine ng-untouched ng-valid" value="${cl.car_eperiod}"></td>
										</tr>
										<tr>
											<th>직급</th>
											<td><input type="text"
												class="ng-pristine ng-untouched ng-valid" value="${cl.car_rank}"></td>
											<th>부서</th>
											<td><input type="text"
												class="ng-pristine ng-untouched ng-valid" value="${cl.car_dep}"></td>
										</tr>
										<tr class="assignment">
											<th>담당업무</th>
											<td colspan="3"><textarea
													class="ng-pristine ng-untouched ng-valid">${cl.car_work}</textarea></td>
										</tr>
										<tr class="resignation">
											<th>퇴사사유</th>
											<td colspan="3"><textarea
													class="ng-pristine ng-untouched ng-valid">${cl.car_res}</textarea></td>
										</tr>
										<!-- ngIf: !$first -->
									</tbody>
								</table>
								<!-- end ngRepeat: career in currentApplicant.specs.career track by $index -->
							</div>
						</div>
						</c:if>
						<c:if test="${cvs.index!='0'}">
						
						</c:if>
						</c:forEach>
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

					<div class="specs edit-spec ng-scope advantage">
						<!-- ngIf: hasSpecContent(item.category) -->
						<div class="subtitle ng-scope">
							<div class="ng-binding">취업우대사항</div>
							<!-- ngIf: item.category === 0 -->

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
												<td colspan="3"><c:if test="${sDetail.spec_vet==null}">
														<input type="radio" name="patriot" value="0"
															class="ng-pristine ng-untouched ng-valid">대상
													<input type="radio" name="patriot" value="1"
															class="ng-pristine ng-untouched ng-valid">비대상
													</c:if> <c:if test="${sDetail.spec_vet=='0'}">
														<input type="radio" name="patriot" value="0"
															checked="checked"
															class="ng-pristine ng-untouched ng-valid">대상
													<input type="radio" name="patriot" value="1"
															class="ng-pristine ng-untouched ng-valid">비대상
													</c:if> <c:if test="${sDetail.spec_vet=='1'}">
														<input type="radio" name="patriot" value="0"
															class="ng-pristine ng-untouched ng-valid">대상
													<input type="radio" name="patriot" value="1"
															checked="checked"
															class="ng-pristine ng-untouched ng-valid">비대상
													</c:if></td>
											</tr>
											<tr>
												<th>장애여부</th>
												<td colspan="3"><c:if test="${sDetail.spec_obs==null}">
														<input type="radio" name="handicapped" value="0"
															class="ng-pristine ng-untouched ng-valid">대상
												<input type="radio" name="handicapped" value="1"
															class="ng-pristine ng-untouched ng-valid">비대상
												</c:if> <c:if test="${sDetail.spec_obs=='0'}">
														<input type="radio" name="handicapped" value="0"
															checked="checked"
															class="ng-pristine ng-untouched ng-valid">대상
												<input type="radio" name="handicapped" value="1"
															class="ng-pristine ng-untouched ng-valid">비대상
												</c:if> <c:if test="${sDetail.spec_obs=='1'}">
														<input type="radio" name="handicapped" value="0"
															class="ng-pristine ng-untouched ng-valid">대상
												<input type="radio" name="handicapped" value="1"
															checked="checked"
															class="ng-pristine ng-untouched ng-valid">비대상
												</c:if> <input type="text" name="넣어야댐"
													value="${sDetail.spec_obscontent}"
													class="ng-pristine ng-untouched ng-valid ng-hide">
												</td>
											</tr>
											<tr>
												<th>병역구분</th>
												<td><c:if test="${sDetail.spec_mil==null}">
														<input type="radio" name="military_division"
															class="ng-pristine ng-untouched ng-valid" value="0">군필
													<input type="radio" name="military_division"
															class="ng-pristine ng-untouched ng-valid" value="1">미필
													<input type="radio" name="military_division"
															class="ng-pristine ng-untouched ng-valid" value="2">면제
												</c:if> <c:if test="${sDetail.spec_mil=='0'}">
														<input type="radio" name="military_division"
															checked="checked"
															class="ng-pristine ng-untouched ng-valid" value="0">군필
													<input type="radio" name="military_division"
															class="ng-pristine ng-untouched ng-valid" value="1">미필
													<input type="radio" name="military_division"
															class="ng-pristine ng-untouched ng-valid" value="2">면제
												</c:if> <c:if test="${sDetail.spec_mil=='1'}">
														<input type="radio" name="military_division"
															class="ng-pristine ng-untouched ng-valid" value="0">군필
													<input type="radio" name="military_division"
															checked="checked"
															class="ng-pristine ng-untouched ng-valid" value="1">미필
													<input type="radio" name="military_division"
															class="ng-pristine ng-untouched ng-valid" value="2">면제
												</c:if> <c:if test="${sDetail.spec_mil=='2'}">
														<input type="radio" name="military_division"
															class="ng-pristine ng-untouched ng-valid" value="0">군필
													<input type="radio" name="military_division"
															class="ng-pristine ng-untouched ng-valid" value="1">미필
													<input type="radio" name="military_division"
															checked="checked"
															class="ng-pristine ng-untouched ng-valid" value="2">면제
												</c:if></td>
												<th>복무기간</th>
												<td><input type="date" style="width: 135px"
													value="${sDetail.spec_milsperiod}"
													class="ng-pristine ng-untouched ng-valid"> <span
													class="duration-wave-mark"> ~ </span> <input type="date"
													style="width: 135px" value="${sDetail.spec_mileperiod}"
													class="ng-pristine ng-untouched ng-valid"></td>
											</tr>
											<tr>
												<th>군별</th>
												<td><input type="text"
													class="ng-pristine ng-untouched ng-valid"
													value="${sDetail.spec_mildis}"></td>
												<th>계급</th>
												<td><input type="text"
													class="ng-pristine ng-untouched ng-valid"
													value="${sDetail.spec_rank}"></td>
											</tr>
											<!-- ngIf: !$first -->
										</tbody>
									</table>
								</div>
							</div>
						</div>

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