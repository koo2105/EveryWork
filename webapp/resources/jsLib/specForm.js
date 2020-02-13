
//대학교
var cnt8 = 1;

function universityAddr(){
	const str = `<div class="content ng-scope" id=universityFormPlus`+cnt8+`>
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
												
											</td>
										</tr>
										 <!-- 여기 전공 추가 --> 
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
										<!-- ngRepeat: minor_subject in univ.minor_subject track by $index -->
										<!-- ngIf: !$first -->
										<tr class="table-option-row ng-scope">
											<td colspan="6">
											<div class="delete-content" onclick="universitydelete('universityFormPlus`+cnt8+`')"
											>삭제하기</div>
											</td>
											</tr>
									</tbody>
								</table>
								<!-- end ngRepeat: univ in currentApplicant.specs.university track by $index -->
							</div>
						</div>`;
	$("#con8").append(str); // JQuery를 이용해서 juso24라는 id값을 가져와서 그곳에 append 시킨다.
	cnt8++;
}//educationAddr()

function universitydelete(id){
	$('#'+id).remove();
} // universitydelete(id)

//대학교
var cnt9 = 0;

function graduate_schoolAddr(){
	const str = `<div class="content ng-scope" id=graduate_schFormPlus`+cnt9+`>
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
										<tr class="table-option-row ng-scope">
											<td colspan="6">
											<div class="delete-content" onclick="graduate_schooldelete('graduate_schFormPlus`+cnt9+`')"
											>삭제하기</div>
											</td>
											</tr>
									</tbody>
								</table>
								<!-- end ngRepeat: gradu in currentApplicant.specs.graduate_school track by $index -->
							</div>
						</div>`;
	$("#con9").append(str); // JQuery를 이용해서 juso24라는 id값을 가져와서 그곳에 append 시킨다.
	cnt9++;
}//educationAddr()

function graduate_schooldelete(id){
	$('#'+id).remove();
} //  graduate_schooldelete(id)


/*
 * 
 * <div class="add-del-btn inner-btn btn" onclick="uni_majorAddr()">+</div>
 * var cnt9 = 0;
function uni_majorAddr(){
	const str = `<th id=uni_majorFormPlus`+cnt9+`>전공</th>
											<td colspan="5"><select
												class="minor_subject_selector ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<option value="0">복수전공</option>
													<option value="1">부전공</option>
											</select>
												<div class="spec-school-major-box">
													<span class="ng-binding"></span> <span>검색</span>
												</div>
												<div class="add-del-btn inner-btn btn" onclick="uni_majordelete('uni_majorFormPlus`+cnt9+`')" >-</div>
												</td>
									
`;
	$("#con9").append(str); // JQuery를 이용해서 juso24라는 id값을 가져와서 그곳에 append 시킨다.
	cnt9++;
}//uni_majorAddr()(


function uni_majordelete(id){
	$('#'+id).remove();
} // uni_majordelete(id)
*/



var cnt = 0;
function licenseAddr(){
	  const str = `<div class="content ng-scope"  id=licenseFormPlus`+cnt+` >
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
					<tr class="table-option-row ng-scope">
					<td colspan="4">
						<div class="delete-content" onclick="licensedelete('licenseFormPlus`+cnt+`')"
							>삭제하기</div>
					</td>
				</tr>
				</tbody>
			</table>
			<!-- end ngRepeat: certificate in currentApplicant.specs.certificate track by $index -->
		</div>
	</div>`;
	  $("#con").append(str); // JQuery를 이용해서 juso24라는 id값을 가져와서 그곳에 append
								// 시킨다.
	  cnt++;
	}// licenseAddr()


function licensedelete(id){
	$('#'+id).remove();
} // licensedelete(id)



var cnt1 = 0;

function careerAddr(){
	const str = `<div class="content ng-scope" id=careerFormPlus`+cnt1+`>
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
											<tr class="table-option-row ng-scope">
												<td colspan="4">
													<div class="delete-content" onclick="careerdelete('careerFormPlus`+cnt1+`')"
														>삭제하기</div>
												</td>
											</tr>
										</tbody>
									</table>
									<!-- end ngRepeat: career in currentApplicant.specs.career track by $index -->
								</div>
							</div>`;
	$("#con1").append(str); // JQuery를 이용해서 juso24라는 id값을 가져와서 그곳에 append 시킨다.
	cnt1++;
}// careerAddr()


function careerdelete(id){
	$('#'+id).remove();
} // careerdelete(id)



var cnt2 = 0;
function languageAddr(){
	const str = `<div class="content ng-scope" id=languageFormPlus`+cnt2+`>
								<div class="category-wrapper ng-scope" >
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
											<tr class="table-option-row ng-scope">
											<td colspan="4">
											<div class="delete-content" onclick="languagedelete('languageFormPlus`+cnt2+`')"
											>삭제하기</div>
											</td>
											</tr>
										</tbody>
									</table>
									<!-- end ngRepeat: language in currentApplicant.specs.language track by $index -->
								</div>
							</div>`;
	$("#con2").append(str); // JQuery를 이용해서 juso24라는 id값을 가져와서 그곳에 append 시킨다.
	cnt2++;
}// languageAddr()(


function languagedelete(id){
	$('#'+id).remove();
} // languagedelete(id)


var cnt3 = 0;
function awardAddr(){
	const str = `<div class="content ng-scope" id=awardFormPlus`+cnt3+`>
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
											<tr class="table-option-row ng-scope">
											<td colspan="4">
											<div class="delete-content" onclick="languagedelete('awardFormPlus`+cnt3+`')"
											>삭제하기</div>
											</td>
											</tr>
											
										</tbody>
									</table>
									<!-- end ngRepeat: award in currentApplicant.specs.award track by $index -->
								</div>
							</div> `;
	$("#con3").append(str); // JQuery를 이용해서 juso24라는 id값을 가져와서 그곳에 append 시킨다.
	cnt3++;
}// awardAddr()(


function awarddelete(id){
	$('#'+id).remove();
} // awarddelete(id)



var cnt4 = 0;

function abroadAddr(){
	const str = `  <div class="content ng-scope" id=abroadFormPlus`+cnt4+`>
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
											<tr class="table-option-row ng-scope">
												<td colspan="4">
												<div class="delete-content" onclick="languagedelete('abroadFormPlus`+cnt4+`')"
												>삭제하기</div>
												</td>
												</tr>
										</tbody>
									</table>
									<!-- end ngRepeat: abroad in currentApplicant.specs.abroad track by $index -->
								</div>
							</div>`;
	$("#con4").append(str); // JQuery를 이용해서 juso24라는 id값을 가져와서 그곳에 append 시킨다.
	cnt4++;
}// abroadAddr()(


function abroaddelete(id){
	$('#'+id).remove();
} // abroaddelete(id)



/*var cnt5 = 0;
function advantageAddr(){
	const str = `<div class="content ng-scope" id=advantageFormPlus`+cnt5+`>
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
													<tr class="table-option-row ng-scope">
													<td colspan="4">
													<div class="delete-content" onclick="advantagedelete('advantageFormPlus`+cnt5+`')"
													>삭제하기</div>
													</td>
													</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>  `;
	$("#con5").append(str); // JQuery를 이용해서 juso24라는 id값을 가져와서 그곳에 append 시킨다.
	cnt5++;
}//advantageAddr()(


function advantagedelete(id){
	$('#'+id).remove();
} // advantagedelete(id)
*/



var cnt6 = 0;
function social_activityAddr(){
	const str = ` <div class="content ng-scope" id=social_activityFormPlus`+cnt6+`>
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
											<tr class="table-option-row ng-scope">
												<td colspan="4">
												<div class="delete-content" onclick="social_activitydelete('social_activityFormPlus`+cnt6+`')"
												>삭제하기</div>
												</td>
												</tr>
										</tbody>
									</table>
									<!-- end ngRepeat: social in currentApplicant.specs.social_activity track by $index -->
								</div>
							</div> `;
	$("#con6").append(str); // JQuery를 이용해서 juso24라는 id값을 가져와서 그곳에 append 시킨다.
	cnt6++;
}//social_activityAddr()(


function social_activitydelete(id){
	$('#'+id).remove();
} // social_activitydelete(id)



var cnt7 = 0;

function educationAddr(){
	const str = `  <div class="content ng-scope" id=educationFormPlus`+cnt7+`>
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
											<tr class="table-option-row ng-scope">
											<td colspan="4">
											<div class="delete-content" onclick="educationdelete('educationFormPlus`+cnt7+`')"
											>삭제하기</div>
											</td>
											</tr>
										</tbody>
									</table>
									<!-- end ngRepeat: education in currentApplicant.specs.education track by $index -->
								</div>
							</div>



`;
	$("#con7").append(str); // JQuery를 이용해서 juso24라는 id값을 가져와서 그곳에 append 시킨다.
	cnt7++;
}//educationAddr()(


function educationdelete(id){
	$('#'+id).remove();
} // educationdelete(id)
















