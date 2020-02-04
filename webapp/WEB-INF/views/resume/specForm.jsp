<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이력서</title>
<link rel="stylesheet" type="text/css"
	href="resources/jsLib/resumeStyle.css">

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
												<td colspan="3"><select
													class="ng-pristine ng-untouched ng-valid">
														<option value="">-</option>
														<!-- ngRepeat: year in select_years -->
														<option value="2020" class="ng-binding ng-scope">2020</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2019" class="ng-binding ng-scope">2019</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2018" class="ng-binding ng-scope">2018</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2017" class="ng-binding ng-scope">2017</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2016" class="ng-binding ng-scope">2016</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2015" class="ng-binding ng-scope">2015</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2014" class="ng-binding ng-scope">2014</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2013" class="ng-binding ng-scope">2013</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2012" class="ng-binding ng-scope">2012</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2011" class="ng-binding ng-scope">2011</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2010" class="ng-binding ng-scope">2010</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2009" class="ng-binding ng-scope">2009</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2008" class="ng-binding ng-scope">2008</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2007" class="ng-binding ng-scope">2007</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2006" class="ng-binding ng-scope">2006</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2005" class="ng-binding ng-scope">2005</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2004" class="ng-binding ng-scope">2004</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2003" class="ng-binding ng-scope">2003</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2002" class="ng-binding ng-scope">2002</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2001" class="ng-binding ng-scope">2001</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2000" class="ng-binding ng-scope">2000</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1999" class="ng-binding ng-scope">1999</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1998" class="ng-binding ng-scope">1998</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1997" class="ng-binding ng-scope">1997</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1996" class="ng-binding ng-scope">1996</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1995" class="ng-binding ng-scope">1995</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1994" class="ng-binding ng-scope">1994</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1993" class="ng-binding ng-scope">1993</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1992" class="ng-binding ng-scope">1992</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1991" class="ng-binding ng-scope">1991</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1990" class="ng-binding ng-scope">1990</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1989" class="ng-binding ng-scope">1989</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1988" class="ng-binding ng-scope">1988</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1987" class="ng-binding ng-scope">1987</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1986" class="ng-binding ng-scope">1986</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1985" class="ng-binding ng-scope">1985</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1984" class="ng-binding ng-scope">1984</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1983" class="ng-binding ng-scope">1983</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1982" class="ng-binding ng-scope">1982</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1981" class="ng-binding ng-scope">1981</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1980" class="ng-binding ng-scope">1980</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1979" class="ng-binding ng-scope">1979</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1978" class="ng-binding ng-scope">1978</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1977" class="ng-binding ng-scope">1977</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1976" class="ng-binding ng-scope">1976</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1975" class="ng-binding ng-scope">1975</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1974" class="ng-binding ng-scope">1974</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1973" class="ng-binding ng-scope">1973</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1972" class="ng-binding ng-scope">1972</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1971" class="ng-binding ng-scope">1971</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1970" class="ng-binding ng-scope">1970</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1969" class="ng-binding ng-scope">1969</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1968" class="ng-binding ng-scope">1968</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1967" class="ng-binding ng-scope">1967</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1966" class="ng-binding ng-scope">1966</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1965" class="ng-binding ng-scope">1965</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1964" class="ng-binding ng-scope">1964</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1963" class="ng-binding ng-scope">1963</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1962" class="ng-binding ng-scope">1962</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1961" class="ng-binding ng-scope">1961</option>
														<!-- end ngRepeat: year in select_years -->
														<optionvalue ="1960" class="ng-binding ng-scope">1960
														</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1959" class="ng-binding ng-scope">1959</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1958" class="ng-binding ng-scope">1958</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1957" class="ng-binding ng-scope">1957</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1956" class="ng-binding ng-scope">1956</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1955" class="ng-binding ng-scope">1955</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1954" class="ng-binding ng-scope">1954</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1953" class="ng-binding ng-scope">1953</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1952" class="ng-binding ng-scope">1952</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1951" class="ng-binding ng-scope">1951</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1950" class="ng-binding ng-scope">1950</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1949" class="ng-binding ng-scope">1949</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1948" class="ng-binding ng-scope">1948</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1947" class="ng-binding ng-scope">1947</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1946" class="ng-binding ng-scope">1946</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1945" class="ng-binding ng-scope">1945</option>
														<!-- end ngRepeat: year in select_years -->
												</select> <select class="ng-pristine ng-untouched ng-valid">
														<option value="">-</option>
														<!-- ngRepeat: month in select_months -->
														<option value="1" class="ng-binding ng-scope">1</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="2" class="ng-binding ng-scope">2</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="3" class="ng-binding ng-scope">3</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="4" class="ng-binding ng-scope">4</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="5" class="ng-binding ng-scope">5</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="6" class="ng-binding ng-scope">6</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="7" class="ng-binding ng-scope">7</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="8" class="ng-binding ng-scope">8</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="9" class="ng-binding ng-scope">9</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="10" class="ng-binding ng-scope">10</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="11" class="ng-binding ng-scope">11</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="12" class="ng-binding ng-scope">12</option>
														<!-- end ngRepeat: month in select_months -->
												</select> <select class="ng-pristine ng-untouched ng-valid">
														<option value="">-</option>
														<!-- ngRepeat: day in select_days -->
														<option value="1" class="ng-binding ng-scope">1</option>
														<!-- end ngRepeat: day in select_days -->
														<option value="2" class="ng-binding ng-scope">2</option>
														<!-- end ngRepeat: day in select_days -->
														<option value="3" class="ng-binding ng-scope">3</option>
														<!-- end ngRepeat: day in select_days -->
														<option value="4" class="ng-binding ng-scope">4</option>
														<!-- end ngRepeat: day in select_days -->
														<option value="5" class="ng-binding ng-scope">5</option>
														<!-- end ngRepeat: day in select_days -->
														<option value="6" class="ng-binding ng-scope">6</option>
														<!-- end ngRepeat: day in select_days -->
														<option value="7" class="ng-binding ng-scope">7</option>
														<!-- end ngRepeat: day in select_days -->
														<option value="8" class="ng-binding ng-scope">8</option>
														<!-- end ngRepeat: day in select_days -->
														<option value="9" class="ng-binding ng-scope">9</option>
														<!-- end ngRepeat: day in select_days -->
														<option value="10" class="ng-binding ng-scope">10</option>
														<!-- end ngRepeat: day in select_days -->
														<option value="11" class="ng-binding ng-scope">11</option>
														<!-- end ngRepeat: day in select_days -->
														<option value="12" class="ng-binding ng-scope">12</option>
														<!-- end ngRepeat: day in select_days -->
														<option value="13" class="ng-binding ng-scope">13</option>
														<!-- end ngRepeat: day in select_days -->
														<option value="14" class="ng-binding ng-scope">14</option>
														<!-- end ngRepeat: day in select_days -->
														<option value="15" class="ng-binding ng-scope">15</option>
														<!-- end ngRepeat: day in select_days -->
														<option value="16" class="ng-binding ng-scope">16</option>
														<!-- end ngRepeat: day in select_days -->
														<option value="17" class="ng-binding ng-scope">17</option>
														<!-- end ngRepeat: day in select_days -->
														<optionvalue ="18" class="ng-binding ng-scope">18
														</option>
														<!-- end ngRepeat: day in select_days -->
														<option value="19" class="ng-binding ng-scope">19</option>
														<!-- end ngRepeat: day in select_days -->
														<option value="20" class="ng-binding ng-scope">20</option>
														<!-- end ngRepeat: day in select_days -->
														<option value="21" class="ng-binding ng-scope">21</option>
														<!-- end ngRepeat: day in select_days -->
														<option value="22" class="ng-binding ng-scope">22</option>
														<!-- end ngRepeat: day in select_days -->
														<option value="23" class="ng-binding ng-scope">23</option>
														<!-- end ngRepeat: day in select_days -->
														<option value="24" class="ng-binding ng-scope">24</option>
														<!-- end ngRepeat: day in select_days -->
														<option value="25" class="ng-binding ng-scope">25</option>
														<!-- end ngRepeat: day in select_days --> <optionvalue
															="26" class="ng-binding ng-scope">26
														</option>
														<!-- end ngRepeat: day in select_days -->
														<option value="27" class="ng-binding ng-scope">27</option>
														<!-- end ngRepeat: day in select_days -->
														<option value="28" class="ng-binding ng-scope">28</option>
														<!-- end ngRepeat: day in select_days --> <optionvalue
															="29" class="ng-binding ng-scope">29
														</option>
														<!-- end ngRepeat: day in select_days -->
														<option value="30" class="ng-binding ng-scope">30</option>
														<!-- end ngRepeat: day in select_days -->
														<option value="31" class="ng-binding ng-scope">31</option>
														<!-- end ngRepeat: day in select_days -->
												</select></td>
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

					<div class="specs edit-spec ng-scope highschool">
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
											<td colspan="3"><select
												class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: year in select_years -->
													<option value="2020" class="ng-binding ng-scope">2020</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2019" class="ng-binding ng-scope">2019</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2018" class="ng-binding ng-scope">2018</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2017" class="ng-binding ng-scope">2017</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2016" class="ng-binding ng-scope">2016</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2015" class="ng-binding ng-scope">2015</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2014" class="ng-binding ng-scope">2014</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2013" class="ng-binding ng-scope">2013</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2012" class="ng-binding ng-scope">2012</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2011" class="ng-binding ng-scope">2011</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2010" class="ng-binding ng-scope">2010</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2009" class="ng-binding ng-scope">2009</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2008" class="ng-binding ng-scope">2008</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2007" class="ng-binding ng-scope">2007</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2006" class="ng-binding ng-scope">2006</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2005" class="ng-binding ng-scope">2005</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2004" class="ng-binding ng-scope">2004</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2003" class="ng-binding ng-scope">2003</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2002" class="ng-binding ng-scope">2002</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2001" class="ng-binding ng-scope">2001</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2000" class="ng-binding ng-scope">2000</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1999" class="ng-binding ng-scope">1999</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1998" class="ng-binding ng-scope">1998</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1997" class="ng-binding ng-scope">1997</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1996" class="ng-binding ng-scope">1996</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1995" class="ng-binding ng-scope">1995</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1994" class="ng-binding ng-scope">1994</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1993" class="ng-binding ng-scope">1993</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1992" class="ng-binding ng-scope">1992</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1991" class="ng-binding ng-scope">1991</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1990" class="ng-binding ng-scope">1990</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1989" class="ng-binding ng-scope">1989</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1988" class="ng-binding ng-scope">1988</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1987" class="ng-binding ng-scope">1987</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1986" class="ng-binding ng-scope">1986</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1985" class="ng-binding ng-scope">1985</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1984" class="ng-binding ng-scope">1984</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1983" class="ng-binding ng-scope">1983</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1982" class="ng-binding ng-scope">1982</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1981" class="ng-binding ng-scope">1981</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1980" class="ng-binding ng-scope">1980</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1979" class="ng-binding ng-scope">1979</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1978" class="ng-binding ng-scope">1978</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1977" class="ng-binding ng-scope">1977</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1976" class="ng-binding ng-scope">1976</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1975" class="ng-binding ng-scope">1975</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1974" class="ng-binding ng-scope">1974</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1973" class="ng-binding ng-scope">1973</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1972" class="ng-binding ng-scope">1972</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1971" class="ng-binding ng-scope">1971</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1970" class="ng-binding ng-scope">1970</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1969" class="ng-binding ng-scope">1969</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1968" class="ng-binding ng-scope">1968</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1967" class="ng-binding ng-scope">1967</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1966" class="ng-binding ng-scope">1966</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1965" class="ng-binding ng-scope">1965</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1964" class="ng-binding ng-scope">1964</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1963" class="ng-binding ng-scope">1963</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1962" class="ng-binding ng-scope">1962</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1961" class="ng-binding ng-scope">1961</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1960" class="ng-binding ng-scope">1960</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1959" class="ng-binding ng-scope">1959</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1958" class="ng-binding ng-scope">1958</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1957" class="ng-binding ng-scope">1957</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1956" class="ng-binding ng-scope">1956</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1955" class="ng-binding ng-scope">1955</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1954" class="ng-binding ng-scope">1954</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1953" class="ng-binding ng-scope">1953</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1952" class="ng-binding ng-scope">1952</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1951" class="ng-binding ng-scope">1951</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1950" class="ng-binding ng-scope">1950</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1949" class="ng-binding ng-scope">1949</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1948" class="ng-binding ng-scope">1948</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1947" class="ng-binding ng-scope">1947</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1946" class="ng-binding ng-scope">1946</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1945" class="ng-binding ng-scope">1945</option>
													<!-- end ngRepeat: year in select_years -->
											</select> <select class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: month in select_months -->
													<option value="1" class="ng-binding ng-scope">1</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="2" class="ng-binding ng-scope">2</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="3" class="ng-binding ng-scope">3</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="4" class="ng-binding ng-scope">4</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="5" class="ng-binding ng-scope">5</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="6" class="ng-binding ng-scope">6</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="7" class="ng-binding ng-scope">7</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="8" class="ng-binding ng-scope">8</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="9" class="ng-binding ng-scope">9</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="10" class="ng-binding ng-scope">10</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="11" class="ng-binding ng-scope">11</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="12" class="ng-binding ng-scope">12</option>
													<!-- end ngRepeat: month in select_months -->
											</select> <span class="duration-wave-mark"> ~ </span> <select
												class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: year in select_years -->
													<option value="2020" class="ng-binding ng-scope">2020</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2019" class="ng-binding ng-scope">2019</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2018" class="ng-binding ng-scope">2018</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2017" class="ng-binding ng-scope">2017</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2016" class="ng-binding ng-scope">2016</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2015" class="ng-binding ng-scope">2015</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2014" class="ng-binding ng-scope">2014</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2013" class="ng-binding ng-scope">2013</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2012" class="ng-binding ng-scope">2012</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2011" class="ng-binding ng-scope">2011</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2010" class="ng-binding ng-scope">2010</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2009" class="ng-binding ng-scope">2009</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2008" class="ng-binding ng-scope">2008</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2007" class="ng-binding ng-scope">2007</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2006" class="ng-binding ng-scope">2006</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2005" class="ng-binding ng-scope">2005</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2004" class="ng-binding ng-scope">2004</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2003" class="ng-binding ng-scope">2003</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2002" class="ng-binding ng-scope">2002</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2001" class="ng-binding ng-scope">2001</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2000" class="ng-binding ng-scope">2000</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1999" class="ng-binding ng-scope">1999</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1998" class="ng-binding ng-scope">1998</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1997" class="ng-binding ng-scope">1997</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1996" class="ng-binding ng-scope">1996</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1995" class="ng-binding ng-scope">1995</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1994" class="ng-binding ng-scope">1994</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1993" class="ng-binding ng-scope">1993</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1992" class="ng-binding ng-scope">1992</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1991" class="ng-binding ng-scope">1991</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1990" class="ng-binding ng-scope">1990</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1989" class="ng-binding ng-scope">1989</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1988" class="ng-binding ng-scope">1988</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1987" class="ng-binding ng-scope">1987</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1986" class="ng-binding ng-scope">1986</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1985" class="ng-binding ng-scope">1985</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1984" class="ng-binding ng-scope">1984</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1983" class="ng-binding ng-scope">1983</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1982" class="ng-binding ng-scope">1982</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1981" class="ng-binding ng-scope">1981</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1980" class="ng-binding ng-scope">1980</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1979" class="ng-binding ng-scope">1979</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1978" class="ng-binding ng-scope">1978</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1977" class="ng-binding ng-scope">1977</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1976" class="ng-binding ng-scope">1976</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1975" class="ng-binding ng-scope">1975</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1974" class="ng-binding ng-scope">1974</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1973" class="ng-binding ng-scope">1973</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1972" class="ng-binding ng-scope">1972</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1971" class="ng-binding ng-scope">1971</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1970" class="ng-binding ng-scope">1970</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1969" class="ng-binding ng-scope">1969</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1968" class="ng-binding ng-scope">1968</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1967" class="ng-binding ng-scope">1967</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1966" class="ng-binding ng-scope">1966</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1965" class="ng-binding ng-scope">1965</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1964" class="ng-binding ng-scope">1964</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1963" class="ng-binding ng-scope">1963</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1962" class="ng-binding ng-scope">1962</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1961" class="ng-binding ng-scope">1961</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1960" class="ng-binding ng-scope">1960</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1959" class="ng-binding ng-scope">1959</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1958" class="ng-binding ng-scope">1958</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1957" class="ng-binding ng-scope">1957</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1956" class="ng-binding ng-scope">1956</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1955" class="ng-binding ng-scope">1955</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1954" class="ng-binding ng-scope">1954</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1953" class="ng-binding ng-scope">1953</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1952" class="ng-binding ng-scope">1952</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1951" class="ng-binding ng-scope">1951</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1950" class="ng-binding ng-scope">1950</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1949" class="ng-binding ng-scope">1949</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1948" class="ng-binding ng-scope">1948</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1947" class="ng-binding ng-scope">1947</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1946" class="ng-binding ng-scope">1946</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1945" class="ng-binding ng-scope">1945</option>
													<!-- end ngRepeat: year in select_years -->
											</select> <select class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: month in select_months -->
													<option value="1" class="ng-binding ng-scope">1</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="2" class="ng-binding ng-scope">2</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="3" class="ng-binding ng-scope">3</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="4" class="ng-binding ng-scope">4</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="5" class="ng-binding ng-scope">5</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="6" class="ng-binding ng-scope">6</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="7" class="ng-binding ng-scope">7</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="8" class="ng-binding ng-scope">8</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="9" class="ng-binding ng-scope">9</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="10" class="ng-binding ng-scope">10</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="11" class="ng-binding ng-scope">11</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="12" class="ng-binding ng-scope">12</option>
													<!-- end ngRepeat: month in select_months -->
											</select></td>
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

					<div class="specs edit-spec ng-scope university">
						<!-- ngIf: hasSpecContent(item.category) -->
						<div class="subtitle ng-scope">
							<div class="ng-binding">대학교</div>
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
											<td colspan="5"><select
												class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: year in select_years -->
													<option value="2020" class="ng-binding ng-scope">2020</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2019" class="ng-binding ng-scope">2019</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2018" class="ng-binding ng-scope">2018</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2017" class="ng-binding ng-scope">2017</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2016" class="ng-binding ng-scope">2016</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2015" class="ng-binding ng-scope">2015</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2014" class="ng-binding ng-scope">2014</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2013" class="ng-binding ng-scope">2013</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2012" class="ng-binding ng-scope">2012</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2011" class="ng-binding ng-scope">2011</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2010" class="ng-binding ng-scope">2010</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2009" class="ng-binding ng-scope">2009</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2008" class="ng-binding ng-scope">2008</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2007" class="ng-binding ng-scope">2007</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2006" class="ng-binding ng-scope">2006</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2005" class="ng-binding ng-scope">2005</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2004" class="ng-binding ng-scope">2004</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2003" class="ng-binding ng-scope">2003</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2002" class="ng-binding ng-scope">2002</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2001" class="ng-binding ng-scope">2001</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2000" class="ng-binding ng-scope">2000</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1999" class="ng-binding ng-scope">1999</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1998" class="ng-binding ng-scope">1998</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1997" class="ng-binding ng-scope">1997</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1996" class="ng-binding ng-scope">1996</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1995" class="ng-binding ng-scope">1995</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1994" class="ng-binding ng-scope">1994</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1993" class="ng-binding ng-scope">1993</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1992" class="ng-binding ng-scope">1992</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1991" class="ng-binding ng-scope">1991</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1990" class="ng-binding ng-scope">1990</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1989" class="ng-binding ng-scope">1989</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1988" class="ng-binding ng-scope">1988</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1987" class="ng-binding ng-scope">1987</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1986" class="ng-binding ng-scope">1986</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1985" class="ng-binding ng-scope">1985</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1984" class="ng-binding ng-scope">1984</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1983" class="ng-binding ng-scope">1983</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1982" class="ng-binding ng-scope">1982</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1981" class="ng-binding ng-scope">1981</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1980" class="ng-binding ng-scope">1980</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1979" class="ng-binding ng-scope">1979</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1978" class="ng-binding ng-scope">1978</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1977" class="ng-binding ng-scope">1977</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1976" class="ng-binding ng-scope">1976</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1975" class="ng-binding ng-scope">1975</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1974" class="ng-binding ng-scope">1974</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1973" class="ng-binding ng-scope">1973</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1972" class="ng-binding ng-scope">1972</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1971" class="ng-binding ng-scope">1971</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1970" class="ng-binding ng-scope">1970</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1969" class="ng-binding ng-scope">1969</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1968" class="ng-binding ng-scope">1968</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1967" class="ng-binding ng-scope">1967</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1966" class="ng-binding ng-scope">1966</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1965" class="ng-binding ng-scope">1965</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1964" class="ng-binding ng-scope">1964</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1963" class="ng-binding ng-scope">1963</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1962" class="ng-binding ng-scope">1962</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1961" class="ng-binding ng-scope">1961</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1960" class="ng-binding ng-scope">1960</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1959" class="ng-binding ng-scope">1959</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1958" class="ng-binding ng-scope">1958</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1957" class="ng-binding ng-scope">1957</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1956" class="ng-binding ng-scope">1956</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1955" class="ng-binding ng-scope">1955</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1954" class="ng-binding ng-scope">1954</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1953" class="ng-binding ng-scope">1953</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1952" class="ng-binding ng-scope">1952</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1951" class="ng-binding ng-scope">1951</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1950" class="ng-binding ng-scope">1950</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1949" class="ng-binding ng-scope">1949</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1948" class="ng-binding ng-scope">1948</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1947" class="ng-binding ng-scope">1947</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1946" class="ng-binding ng-scope">1946</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1945" class="ng-binding ng-scope">1945</option>
													<!-- end ngRepeat: year in select_years -->
											</select> <select class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: month in select_months -->
													<option value="1" class="ng-binding ng-scope">1</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="2" class="ng-binding ng-scope">2</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="3" class="ng-binding ng-scope">3</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="4" class="ng-binding ng-scope">4</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="5" class="ng-binding ng-scope">5</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="6" class="ng-binding ng-scope">6</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="7" class="ng-binding ng-scope">7</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="8" class="ng-binding ng-scope">8</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="9" class="ng-binding ng-scope">9</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="10" class="ng-binding ng-scope">10</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="11" class="ng-binding ng-scope">11</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="12" class="ng-binding ng-scope">12</option>
													<!-- end ngRepeat: month in select_months -->
											</select> <span class="duration-wave-mark"> ~ </span> <select
												class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: year in select_years -->
													<option value="2020" class="ng-binding ng-scope">2020</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2019" class="ng-binding ng-scope">2019</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2018" class="ng-binding ng-scope">2018</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2017" class="ng-binding ng-scope">2017</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2016" class="ng-binding ng-scope">2016</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2015" class="ng-binding ng-scope">2015</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2014" class="ng-binding ng-scope">2014</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2013" class="ng-binding ng-scope">2013</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2012" class="ng-binding ng-scope">2012</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2011" class="ng-binding ng-scope">2011</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2010" class="ng-binding ng-scope">2010</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2009" class="ng-binding ng-scope">2009</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2008" class="ng-binding ng-scope">2008</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2007" class="ng-binding ng-scope">2007</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2006" class="ng-binding ng-scope">2006</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2005" class="ng-binding ng-scope">2005</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2004" class="ng-binding ng-scope">2004</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2003" class="ng-binding ng-scope">2003</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2002" class="ng-binding ng-scope">2002</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2001" class="ng-binding ng-scope">2001</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2000" class="ng-binding ng-scope">2000</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1999" class="ng-binding ng-scope">1999</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1998" class="ng-binding ng-scope">1998</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1997" class="ng-binding ng-scope">1997</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1996" class="ng-binding ng-scope">1996</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1995" class="ng-binding ng-scope">1995</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1994" class="ng-binding ng-scope">1994</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1993" class="ng-binding ng-scope">1993</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1992" class="ng-binding ng-scope">1992</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1991" class="ng-binding ng-scope">1991</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1990" class="ng-binding ng-scope">1990</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1989" class="ng-binding ng-scope">1989</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1988" class="ng-binding ng-scope">1988</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1987" class="ng-binding ng-scope">1987</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1986" class="ng-binding ng-scope">1986</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1985" class="ng-binding ng-scope">1985</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1984" class="ng-binding ng-scope">1984</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1983" class="ng-binding ng-scope">1983</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1982" class="ng-binding ng-scope">1982</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1981" class="ng-binding ng-scope">1981</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1980" class="ng-binding ng-scope">1980</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1979" class="ng-binding ng-scope">1979</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1978" class="ng-binding ng-scope">1978</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1977" class="ng-binding ng-scope">1977</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1976" class="ng-binding ng-scope">1976</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1975" class="ng-binding ng-scope">1975</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1974" class="ng-binding ng-scope">1974</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1973" class="ng-binding ng-scope">1973</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1972" class="ng-binding ng-scope">1972</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1971" class="ng-binding ng-scope">1971</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1970" class="ng-binding ng-scope">1970</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1969" class="ng-binding ng-scope">1969</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1968" class="ng-binding ng-scope">1968</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1967" class="ng-binding ng-scope">1967</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1966" class="ng-binding ng-scope">1966</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1965" class="ng-binding ng-scope">1965</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1964" class="ng-binding ng-scope">1964</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1963" class="ng-binding ng-scope">1963</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1962" class="ng-binding ng-scope">1962</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1961" class="ng-binding ng-scope">1961</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1960" class="ng-binding ng-scope">1960</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1959" class="ng-binding ng-scope">1959</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1958" class="ng-binding ng-scope">1958</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1957" class="ng-binding ng-scope">1957</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1956" class="ng-binding ng-scope">1956</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1955" class="ng-binding ng-scope">1955</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1954" class="ng-binding ng-scope">1954</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1953" class="ng-binding ng-scope">1953</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1952" class="ng-binding ng-scope">1952</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1951" class="ng-binding ng-scope">1951</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1950" class="ng-binding ng-scope">1950</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1949" class="ng-binding ng-scope">1949</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1948" class="ng-binding ng-scope">1948</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1947" class="ng-binding ng-scope">1947</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1946" class="ng-binding ng-scope">1946</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1945" class="ng-binding ng-scope">1945</option>
													<!-- end ngRepeat: year in select_years -->
											</select> <select class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: month in select_months -->
													<option value="1" class="ng-binding ng-scope">1</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="2" class="ng-binding ng-scope">2</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="3" class="ng-binding ng-scope">3</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="4" class="ng-binding ng-scope">4</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="5" class="ng-binding ng-scope">5</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="6" class="ng-binding ng-scope">6</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="7" class="ng-binding ng-scope">7</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="8" class="ng-binding ng-scope">8</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="9" class="ng-binding ng-scope">9</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="10" class="ng-binding ng-scope">10</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="11" class="ng-binding ng-scope">11</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="12" class="ng-binding ng-scope">12</option>
													<!-- end ngRepeat: month in select_months -->
											</select></td>
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
									</tbody>
								</table>
								<!-- end ngRepeat: univ in currentApplicant.specs.university track by $index -->
							</div>
						</div>
					</div>
					<!--  end university -->



					<div class="specs edit-spec ng-scope graduate-school">
						<!-- ngIf: hasSpecContent(item.category) -->
						<div class="subtitle ng-scope">
							<div class="ng-binding">대학원</div>
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
											<td colspan="5"><select
												class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: year in select_years -->
													<option value="2020" class="ng-binding ng-scope">2020</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2019" class="ng-binding ng-scope">2019</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2018" class="ng-binding ng-scope">2018</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2017" class="ng-binding ng-scope">2017</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2016" class="ng-binding ng-scope">2016</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2015" class="ng-binding ng-scope">2015</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2014" class="ng-binding ng-scope">2014</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2013" class="ng-binding ng-scope">2013</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2012" class="ng-binding ng-scope">2012</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2011" class="ng-binding ng-scope">2011</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2010" class="ng-binding ng-scope">2010</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2009" class="ng-binding ng-scope">2009</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2008" class="ng-binding ng-scope">2008</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2007" class="ng-binding ng-scope">2007</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2006" class="ng-binding ng-scope">2006</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2005" class="ng-binding ng-scope">2005</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2004" class="ng-binding ng-scope">2004</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2003" class="ng-binding ng-scope">2003</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2002" class="ng-binding ng-scope">2002</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2001" class="ng-binding ng-scope">2001</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2000" class="ng-binding ng-scope">2000</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1999" class="ng-binding ng-scope">1999</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1998" class="ng-binding ng-scope">1998</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1997" class="ng-binding ng-scope">1997</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1996" class="ng-binding ng-scope">1996</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1995" class="ng-binding ng-scope">1995</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1994" class="ng-binding ng-scope">1994</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1993" class="ng-binding ng-scope">1993</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1992" class="ng-binding ng-scope">1992</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1991" class="ng-binding ng-scope">1991</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1990" class="ng-binding ng-scope">1990</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1989" class="ng-binding ng-scope">1989</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1988" class="ng-binding ng-scope">1988</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1987" class="ng-binding ng-scope">1987</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1986" class="ng-binding ng-scope">1986</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1985" class="ng-binding ng-scope">1985</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1984" class="ng-binding ng-scope">1984</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1983" class="ng-binding ng-scope">1983</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1982" class="ng-binding ng-scope">1982</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1981" class="ng-binding ng-scope">1981</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1980" class="ng-binding ng-scope">1980</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1979" class="ng-binding ng-scope">1979</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1978" class="ng-binding ng-scope">1978</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1977" class="ng-binding ng-scope">1977</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1976" class="ng-binding ng-scope">1976</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1975" class="ng-binding ng-scope">1975</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1974" class="ng-binding ng-scope">1974</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1973" class="ng-binding ng-scope">1973</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1972" class="ng-binding ng-scope">1972</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1971" class="ng-binding ng-scope">1971</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1970" class="ng-binding ng-scope">1970</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1969" class="ng-binding ng-scope">1969</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1968" class="ng-binding ng-scope">1968</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1967" class="ng-binding ng-scope">1967</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1966" class="ng-binding ng-scope">1966</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1965" class="ng-binding ng-scope">1965</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1964" class="ng-binding ng-scope">1964</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1963" class="ng-binding ng-scope">1963</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1962" class="ng-binding ng-scope">1962</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1961" class="ng-binding ng-scope">1961</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1960" class="ng-binding ng-scope">1960</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1959" class="ng-binding ng-scope">1959</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1958" class="ng-binding ng-scope">1958</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1957" class="ng-binding ng-scope">1957</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1956" class="ng-binding ng-scope">1956</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1955" class="ng-binding ng-scope">1955</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1954" class="ng-binding ng-scope">1954</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1953" class="ng-binding ng-scope">1953</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1952" class="ng-binding ng-scope">1952</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1951" class="ng-binding ng-scope">1951</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1950" class="ng-binding ng-scope">1950</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1949" class="ng-binding ng-scope">1949</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1948" class="ng-binding ng-scope">1948</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1947" class="ng-binding ng-scope">1947</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1946" class="ng-binding ng-scope">1946</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1945" class="ng-binding ng-scope">1945</option>
													<!-- end ngRepeat: year in select_years -->
											</select> <select class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: month in select_months -->
													<option value="1" class="ng-binding ng-scope">1</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="2" class="ng-binding ng-scope">2</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="3" class="ng-binding ng-scope">3</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="4" class="ng-binding ng-scope">4</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="5" class="ng-binding ng-scope">5</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="6" class="ng-binding ng-scope">6</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="7" class="ng-binding ng-scope">7</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="8" class="ng-binding ng-scope">8</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="9" class="ng-binding ng-scope">9</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="10" class="ng-binding ng-scope">10</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="11" class="ng-binding ng-scope">11</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="12" class="ng-binding ng-scope">12</option>
													<!-- end ngRepeat: month in select_months -->
											</select> <span class="duration-wave-mark"> ~ </span> <select
												class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: year in select_years -->
													<option value="2020" class="ng-binding ng-scope">2020</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2019" class="ng-binding ng-scope">2019</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2018" class="ng-binding ng-scope">2018</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2017" class="ng-binding ng-scope">2017</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2016" class="ng-binding ng-scope">2016</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2015" class="ng-binding ng-scope">2015</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2014" class="ng-binding ng-scope">2014</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2013" class="ng-binding ng-scope">2013</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2012" class="ng-binding ng-scope">2012</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2011" class="ng-binding ng-scope">2011</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2010" class="ng-binding ng-scope">2010</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2009" class="ng-binding ng-scope">2009</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2008" class="ng-binding ng-scope">2008</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2007" class="ng-binding ng-scope">2007</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2006" class="ng-binding ng-scope">2006</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2005" class="ng-binding ng-scope">2005</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2004" class="ng-binding ng-scope">2004</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2003" class="ng-binding ng-scope">2003</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2002" class="ng-binding ng-scope">2002</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2001" class="ng-binding ng-scope">2001</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2000" class="ng-binding ng-scope">2000</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1999" class="ng-binding ng-scope">1999</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1998" class="ng-binding ng-scope">1998</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1997" class="ng-binding ng-scope">1997</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1996" class="ng-binding ng-scope">1996</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1995" class="ng-binding ng-scope">1995</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1994" class="ng-binding ng-scope">1994</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1993" class="ng-binding ng-scope">1993</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1992" class="ng-binding ng-scope">1992</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1991" class="ng-binding ng-scope">1991</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1990" class="ng-binding ng-scope">1990</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1989" class="ng-binding ng-scope">1989</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1988" class="ng-binding ng-scope">1988</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1987" class="ng-binding ng-scope">1987</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1986" class="ng-binding ng-scope">1986</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1985" class="ng-binding ng-scope">1985</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1984" class="ng-binding ng-scope">1984</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1983" class="ng-binding ng-scope">1983</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1982" class="ng-binding ng-scope">1982</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1981" class="ng-binding ng-scope">1981</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1980" class="ng-binding ng-scope">1980</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1979" class="ng-binding ng-scope">1979</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1978" class="ng-binding ng-scope">1978</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1977" class="ng-binding ng-scope">1977</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1976" class="ng-binding ng-scope">1976</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1975" class="ng-binding ng-scope">1975</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1974" class="ng-binding ng-scope">1974</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1973" class="ng-binding ng-scope">1973</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1972" class="ng-binding ng-scope">1972</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1971" class="ng-binding ng-scope">1971</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1970" class="ng-binding ng-scope">1970</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1969" class="ng-binding ng-scope">1969</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1968" class="ng-binding ng-scope">1968</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1967" class="ng-binding ng-scope">1967</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1966" class="ng-binding ng-scope">1966</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1965" class="ng-binding ng-scope">1965</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1964" class="ng-binding ng-scope">1964</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1963" class="ng-binding ng-scope">1963</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1962" class="ng-binding ng-scope">1962</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1961" class="ng-binding ng-scope">1961</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1960" class="ng-binding ng-scope">1960</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1959" class="ng-binding ng-scope">1959</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1958" class="ng-binding ng-scope">1958</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1957" class="ng-binding ng-scope">1957</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1956" class="ng-binding ng-scope">1956</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1955" class="ng-binding ng-scope">1955</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1954" class="ng-binding ng-scope">1954</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1953" class="ng-binding ng-scope">1953</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1952" class="ng-binding ng-scope">1952</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1951" class="ng-binding ng-scope">1951</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1950" class="ng-binding ng-scope">1950</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1949" class="ng-binding ng-scope">1949</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1948" class="ng-binding ng-scope">1948</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1947" class="ng-binding ng-scope">1947</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1946" class="ng-binding ng-scope">1946</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1945" class="ng-binding ng-scope">1945</option>
													<!-- end ngRepeat: year in select_years -->
											</select> <select class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: month in select_months -->
													<option value="1" class="ng-binding ng-scope">1</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="2" class="ng-binding ng-scope">2</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="3" class="ng-binding ng-scope">3</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="4" class="ng-binding ng-scope">4</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="5" class="ng-binding ng-scope">5</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="6" class="ng-binding ng-scope">6</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="7" class="ng-binding ng-scope">7</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="8" class="ng-binding ng-scope">8</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="9" class="ng-binding ng-scope">9</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="10" class="ng-binding ng-scope">10</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="11" class="ng-binding ng-scope">11</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="12" class="ng-binding ng-scope">12</option>
													<!-- end ngRepeat: month in select_months -->
											</select></td>
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
					</div>
					<!-- end 대학원 -->



					<div class="specs edit-spec ng-scope certificate">
						<!-- ngIf: hasSpecContent(item.category) -->
						<div class="subtitle ng-scope">
							<div class="ng-binding">자격/면허</div>
							<!-- ngIf: item.category === 0 -->
							<div class="add-del-btn outter-btn btn">+</div>
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
					</div>
					<!-- end 자격/면허 -->


					<div class="specs edit-spec ng-scope career">
						<!-- ngIf: hasSpecContent(item.category) -->
						<div class="subtitle ng-scope">
							<div class="ng-binding">경력</div>
							<!-- ngIf: item.category === 0 -->
							<div class="add-del-btn outter-btn btn">+</div>
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
											<td><select class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: year in select_years -->
													<option value="2020" class="ng-binding ng-scope">2020</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2019" class="ng-binding ng-scope">2019</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2018" class="ng-binding ng-scope">2018</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2017" class="ng-binding ng-scope">2017</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2016" class="ng-binding ng-scope">2016</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2015" class="ng-binding ng-scope">2015</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2014" class="ng-binding ng-scope">2014</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2013" class="ng-binding ng-scope">2013</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2012" class="ng-binding ng-scope">2012</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2011" class="ng-binding ng-scope">2011</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2010" class="ng-binding ng-scope">2010</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2009" class="ng-binding ng-scope">2009</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2008" class="ng-binding ng-scope">2008</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2007" class="ng-binding ng-scope">2007</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2006" class="ng-binding ng-scope">2006</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2005" class="ng-binding ng-scope">2005</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2004" class="ng-binding ng-scope">2004</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2003" class="ng-binding ng-scope">2003</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2002" class="ng-binding ng-scope">2002</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2001" class="ng-binding ng-scope">2001</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2000" class="ng-binding ng-scope">2000</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1999" class="ng-binding ng-scope">1999</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1998" class="ng-binding ng-scope">1998</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1997" class="ng-binding ng-scope">1997</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1996" class="ng-binding ng-scope">1996</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1995" class="ng-binding ng-scope">1995</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1994" class="ng-binding ng-scope">1994</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1993" class="ng-binding ng-scope">1993</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1992" class="ng-binding ng-scope">1992</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1991" class="ng-binding ng-scope">1991</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1990" class="ng-binding ng-scope">1990</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1989" class="ng-binding ng-scope">1989</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1988" class="ng-binding ng-scope">1988</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1987" class="ng-binding ng-scope">1987</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1986" class="ng-binding ng-scope">1986</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1985" class="ng-binding ng-scope">1985</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1984" class="ng-binding ng-scope">1984</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1983" class="ng-binding ng-scope">1983</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1982" class="ng-binding ng-scope">1982</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1981" class="ng-binding ng-scope">1981</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1980" class="ng-binding ng-scope">1980</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1979" class="ng-binding ng-scope">1979</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1978" class="ng-binding ng-scope">1978</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1977" class="ng-binding ng-scope">1977</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1976" class="ng-binding ng-scope">1976</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1975" class="ng-binding ng-scope">1975</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1974" class="ng-binding ng-scope">1974</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1973" class="ng-binding ng-scope">1973</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1972" class="ng-binding ng-scope">1972</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1971" class="ng-binding ng-scope">1971</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1970" class="ng-binding ng-scope">1970</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1969" class="ng-binding ng-scope">1969</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1968" class="ng-binding ng-scope">1968</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1967" class="ng-binding ng-scope">1967</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1966" class="ng-binding ng-scope">1966</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1965" class="ng-binding ng-scope">1965</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1964" class="ng-binding ng-scope">1964</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1963" class="ng-binding ng-scope">1963</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1962" class="ng-binding ng-scope">1962</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1961" class="ng-binding ng-scope">1961</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1960" class="ng-binding ng-scope">1960</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1959" class="ng-binding ng-scope">1959</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1958" class="ng-binding ng-scope">1958</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1957" class="ng-binding ng-scope">1957</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1956" class="ng-binding ng-scope">1956</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1955" class="ng-binding ng-scope">1955</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1954" class="ng-binding ng-scope">1954</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1953" class="ng-binding ng-scope">1953</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1952" class="ng-binding ng-scope">1952</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1951" class="ng-binding ng-scope">1951</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1950" class="ng-binding ng-scope">1950</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1949" class="ng-binding ng-scope">1949</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1948" class="ng-binding ng-scope">1948</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1947" class="ng-binding ng-scope">1947</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1946" class="ng-binding ng-scope">1946</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1945" class="ng-binding ng-scope">1945</option>
													<!-- end ngRepeat: year in select_years -->
											</select> <select class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: month in select_months -->
													<option value="1" class="ng-binding ng-scope">1</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="2" class="ng-binding ng-scope">2</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="3" class="ng-binding ng-scope">3</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="4" class="ng-binding ng-scope">4</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="5" class="ng-binding ng-scope">5</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="6" class="ng-binding ng-scope">6</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="7" class="ng-binding ng-scope">7</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="8" class="ng-binding ng-scope">8</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="9" class="ng-binding ng-scope">9</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="10" class="ng-binding ng-scope">10</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="11" class="ng-binding ng-scope">11</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="12" class="ng-binding ng-scope">12</option>
													<!-- end ngRepeat: month in select_months -->
											</select> <span class="duration-wave-mark"> ~ </span> <select
												class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: year in select_years -->
													<option value="2020" class="ng-binding ng-scope">2020</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2019" class="ng-binding ng-scope">2019</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2018" class="ng-binding ng-scope">2018</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2017" class="ng-binding ng-scope">2017</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2016" class="ng-binding ng-scope">2016</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2015" class="ng-binding ng-scope">2015</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2014" class="ng-binding ng-scope">2014</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2013" class="ng-binding ng-scope">2013</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2012" class="ng-binding ng-scope">2012</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2011" class="ng-binding ng-scope">2011</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2010" class="ng-binding ng-scope">2010</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2009" class="ng-binding ng-scope">2009</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2008" class="ng-binding ng-scope">2008</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2007" class="ng-binding ng-scope">2007</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2006" class="ng-binding ng-scope">2006</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2005" class="ng-binding ng-scope">2005</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2004" class="ng-binding ng-scope">2004</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2003" class="ng-binding ng-scope">2003</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2002" class="ng-binding ng-scope">2002</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2001" class="ng-binding ng-scope">2001</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2000" class="ng-binding ng-scope">2000</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1999" class="ng-binding ng-scope">1999</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1998" class="ng-binding ng-scope">1998</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1997" class="ng-binding ng-scope">1997</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1996" class="ng-binding ng-scope">1996</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1995" class="ng-binding ng-scope">1995</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1994" class="ng-binding ng-scope">1994</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1993" class="ng-binding ng-scope">1993</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1992" class="ng-binding ng-scope">1992</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1991" class="ng-binding ng-scope">1991</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1990" class="ng-binding ng-scope">1990</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1989" class="ng-binding ng-scope">1989</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1988" class="ng-binding ng-scope">1988</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1987" class="ng-binding ng-scope">1987</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1986" class="ng-binding ng-scope">1986</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1985" class="ng-binding ng-scope">1985</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1984" class="ng-binding ng-scope">1984</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1983" class="ng-binding ng-scope">1983</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1982" class="ng-binding ng-scope">1982</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1981" class="ng-binding ng-scope">1981</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1980" class="ng-binding ng-scope">1980</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1979" class="ng-binding ng-scope">1979</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1978" class="ng-binding ng-scope">1978</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1977" class="ng-binding ng-scope">1977</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1976" class="ng-binding ng-scope">1976</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1975" class="ng-binding ng-scope">1975</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1974" class="ng-binding ng-scope">1974</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1973" class="ng-binding ng-scope">1973</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1972" class="ng-binding ng-scope">1972</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1971" class="ng-binding ng-scope">1971</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1970" class="ng-binding ng-scope">1970</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1969" class="ng-binding ng-scope">1969</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1968" class="ng-binding ng-scope">1968</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1967" class="ng-binding ng-scope">1967</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1966" class="ng-binding ng-scope">1966</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1965" class="ng-binding ng-scope">1965</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1964" class="ng-binding ng-scope">1964</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1963" class="ng-binding ng-scope">1963</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1962" class="ng-binding ng-scope">1962</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1961" class="ng-binding ng-scope">1961</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1960" class="ng-binding ng-scope">1960</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1959" class="ng-binding ng-scope">1959</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1958" class="ng-binding ng-scope">1958</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1957" class="ng-binding ng-scope">1957</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1956" class="ng-binding ng-scope">1956</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1955" class="ng-binding ng-scope">1955</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1954" class="ng-binding ng-scope">1954</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1953" class="ng-binding ng-scope">1953</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1952" class="ng-binding ng-scope">1952</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1951" class="ng-binding ng-scope">1951</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1950" class="ng-binding ng-scope">1950</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1949" class="ng-binding ng-scope">1949</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1948" class="ng-binding ng-scope">1948</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1947" class="ng-binding ng-scope">1947</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1946" class="ng-binding ng-scope">1946</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1945" class="ng-binding ng-scope">1945</option>
													<!-- end ngRepeat: year in select_years -->
											</select> <select class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: month in select_months -->
													<option value="1" class="ng-binding ng-scope">1</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="2" class="ng-binding ng-scope">2</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="3" class="ng-binding ng-scope">3</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="4" class="ng-binding ng-scope">4</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="5" class="ng-binding ng-scope">5</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="6" class="ng-binding ng-scope">6</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="7" class="ng-binding ng-scope">7</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="8" class="ng-binding ng-scope">8</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="9" class="ng-binding ng-scope">9</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="10" class="ng-binding ng-scope">10</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="11" class="ng-binding ng-scope">11</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="12" class="ng-binding ng-scope">12</option>
													<!-- end ngRepeat: month in select_months -->
											</select></td>
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
					</div>
					<!-- end 경력 -->


					<div class="specs edit-spec ng-scope language">
						<!-- ngIf: hasSpecContent(item.category) -->
						<div class="subtitle ng-scope">
							<div class="ng-binding">어학</div>
							<!-- ngIf: item.category === 0 -->
							<div class="add-del-btn outter-btn btn">+</div>
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
											<td><select class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: year in select_years -->
													<option value="2020" class="ng-binding ng-scope">2020</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2019" class="ng-binding ng-scope">2019</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2018" class="ng-binding ng-scope">2018</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2017" class="ng-binding ng-scope">2017</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2016" class="ng-binding ng-scope">2016</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2015" class="ng-binding ng-scope">2015</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2014" class="ng-binding ng-scope">2014</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2013" class="ng-binding ng-scope">2013</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2012" class="ng-binding ng-scope">2012</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2011" class="ng-binding ng-scope">2011</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2010" class="ng-binding ng-scope">2010</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2009" class="ng-binding ng-scope">2009</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2008" class="ng-binding ng-scope">2008</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2007" class="ng-binding ng-scope">2007</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2006" class="ng-binding ng-scope">2006</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2005" class="ng-binding ng-scope">2005</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2004" class="ng-binding ng-scope">2004</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2003" class="ng-binding ng-scope">2003</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2002" class="ng-binding ng-scope">2002</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2001" class="ng-binding ng-scope">2001</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2000" class="ng-binding ng-scope">2000</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1999" class="ng-binding ng-scope">1999</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1998" class="ng-binding ng-scope">1998</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1997" class="ng-binding ng-scope">1997</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1996" class="ng-binding ng-scope">1996</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1995" class="ng-binding ng-scope">1995</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1994" class="ng-binding ng-scope">1994</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1993" class="ng-binding ng-scope">1993</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1992" class="ng-binding ng-scope">1992</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1991" class="ng-binding ng-scope">1991</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1990" class="ng-binding ng-scope">1990</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1989" class="ng-binding ng-scope">1989</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1988" class="ng-binding ng-scope">1988</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1987" class="ng-binding ng-scope">1987</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1986" class="ng-binding ng-scope">1986</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1985" class="ng-binding ng-scope">1985</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1984" class="ng-binding ng-scope">1984</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1983" class="ng-binding ng-scope">1983</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1982" class="ng-binding ng-scope">1982</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1981" class="ng-binding ng-scope">1981</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1980" class="ng-binding ng-scope">1980</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1979" class="ng-binding ng-scope">1979</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1978" class="ng-binding ng-scope">1978</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1977" class="ng-binding ng-scope">1977</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1976" class="ng-binding ng-scope">1976</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1975" class="ng-binding ng-scope">1975</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1974" class="ng-binding ng-scope">1974</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1973" class="ng-binding ng-scope">1973</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1972" class="ng-binding ng-scope">1972</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1971" class="ng-binding ng-scope">1971</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1970" class="ng-binding ng-scope">1970</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1969" class="ng-binding ng-scope">1969</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1968" class="ng-binding ng-scope">1968</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1967" class="ng-binding ng-scope">1967</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1966" class="ng-binding ng-scope">1966</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1965" class="ng-binding ng-scope">1965</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1964" class="ng-binding ng-scope">1964</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1963" class="ng-binding ng-scope">1963</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1962" class="ng-binding ng-scope">1962</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1961" class="ng-binding ng-scope">1961</option>
													<!-- end ngRepeat: year in select_years -->
													<optionvalue ="1960" class="ng-binding ng-scope">1960
													</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1959" class="ng-binding ng-scope">1959</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1958" class="ng-binding ng-scope">1958</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1957" class="ng-binding ng-scope">1957</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1956" class="ng-binding ng-scope">1956</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1955" class="ng-binding ng-scope">1955</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1954" class="ng-binding ng-scope">1954</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1953" class="ng-binding ng-scope">1953</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1952" class="ng-binding ng-scope">1952</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1951" class="ng-binding ng-scope">1951</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1950" class="ng-binding ng-scope">1950</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1949" class="ng-binding ng-scope">1949</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1948" class="ng-binding ng-scope">1948</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1947" class="ng-binding ng-scope">1947</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1946" class="ng-binding ng-scope">1946</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1945" class="ng-binding ng-scope">1945</option>
													<!-- end ngRepeat: year in select_years -->
											</select> <select class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: month in select_months -->
													<option value="1" class="ng-binding ng-scope">1</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="2" class="ng-binding ng-scope">2</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="3" class="ng-binding ng-scope">3</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="4" class="ng-binding ng-scope">4</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="5" class="ng-binding ng-scope">5</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="6" class="ng-binding ng-scope">6</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="7" class="ng-binding ng-scope">7</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="8" class="ng-binding ng-scope">8</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="9" class="ng-binding ng-scope">9</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="10" class="ng-binding ng-scope">10</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="11" class="ng-binding ng-scope">11</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="12" class="ng-binding ng-scope">12</option>
													<!-- end ngRepeat: month in select_months -->
											</select> <select class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: day in select_days -->
													<option value="1" class="ng-binding ng-scope">1</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="2" class="ng-binding ng-scope">2</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="3" class="ng-binding ng-scope">3</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="4" class="ng-binding ng-scope">4</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="5" class="ng-binding ng-scope">5</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="6" class="ng-binding ng-scope">6</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="7" class="ng-binding ng-scope">7</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="8" class="ng-binding ng-scope">8</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="9" class="ng-binding ng-scope">9</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="10" class="ng-binding ng-scope">10</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="11" class="ng-binding ng-scope">11</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="12" class="ng-binding ng-scope">12</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="13" class="ng-binding ng-scope">13</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="14" class="ng-binding ng-scope">14</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="15" class="ng-binding ng-scope">15</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="16" class="ng-binding ng-scope">16</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="17" class="ng-binding ng-scope">17</option>
													<!-- end ngRepeat: day in select_days -->
													<optionvalue ="18" class="ng-binding ng-scope">18
													</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="19" class="ng-binding ng-scope">19</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="20" class="ng-binding ng-scope">20</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="21" class="ng-binding ng-scope">21</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="22" class="ng-binding ng-scope">22</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="23" class="ng-binding ng-scope">23</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="24" class="ng-binding ng-scope">24</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="25" class="ng-binding ng-scope">25</option>
													<!-- end ngRepeat: day in select_days --> <optionvalue
														="26" class="ng-binding ng-scope">26
													</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="27" class="ng-binding ng-scope">27</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="28" class="ng-binding ng-scope">28</option>
													<!-- end ngRepeat: day in select_days --> <optionvalue
														="29" class="ng-binding ng-scope">29
													</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="30" class="ng-binding ng-scope">30</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="31" class="ng-binding ng-scope">31</option>
													<!-- end ngRepeat: month in select_months -->
											</select></td>
										</tr>
										<!-- ngIf: !$first -->
									</tbody>
								</table>
								<!-- end ngRepeat: language in currentApplicant.specs.language track by $index -->
							</div>
						</div>
					</div>
					<!-- end 어학 -->


					<div class="specs edit-spec ng-scope award">
						<!-- ngIf: hasSpecContent(item.category) -->
						<div class="subtitle ng-scope">
							<div class="ng-binding">수상경력</div>
							<!-- ngIf: item.category === 0 -->
							<div class="add-del-btn outter-btn btn">+</div>
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
											<td><select class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: year in select_years -->
													<option value="2020" class="ng-binding ng-scope">2020</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2019" class="ng-binding ng-scope">2019</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2018" class="ng-binding ng-scope">2018</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2017" class="ng-binding ng-scope">2017</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2016" class="ng-binding ng-scope">2016</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2015" class="ng-binding ng-scope">2015</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2014" class="ng-binding ng-scope">2014</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2013" class="ng-binding ng-scope">2013</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2012" class="ng-binding ng-scope">2012</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2011" class="ng-binding ng-scope">2011</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2010" class="ng-binding ng-scope">2010</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2009" class="ng-binding ng-scope">2009</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2008" class="ng-binding ng-scope">2008</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2007" class="ng-binding ng-scope">2007</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2006" class="ng-binding ng-scope">2006</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2005" class="ng-binding ng-scope">2005</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2004" class="ng-binding ng-scope">2004</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2003" class="ng-binding ng-scope">2003</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2002" class="ng-binding ng-scope">2002</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2001" class="ng-binding ng-scope">2001</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2000" class="ng-binding ng-scope">2000</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1999" class="ng-binding ng-scope">1999</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1998" class="ng-binding ng-scope">1998</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1997" class="ng-binding ng-scope">1997</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1996" class="ng-binding ng-scope">1996</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1995" class="ng-binding ng-scope">1995</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1994" class="ng-binding ng-scope">1994</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1993" class="ng-binding ng-scope">1993</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1992" class="ng-binding ng-scope">1992</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1991" class="ng-binding ng-scope">1991</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1990" class="ng-binding ng-scope">1990</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1989" class="ng-binding ng-scope">1989</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1988" class="ng-binding ng-scope">1988</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1987" class="ng-binding ng-scope">1987</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1986" class="ng-binding ng-scope">1986</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1985" class="ng-binding ng-scope">1985</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1984" class="ng-binding ng-scope">1984</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1983" class="ng-binding ng-scope">1983</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1982" class="ng-binding ng-scope">1982</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1981" class="ng-binding ng-scope">1981</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1980" class="ng-binding ng-scope">1980</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1979" class="ng-binding ng-scope">1979</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1978" class="ng-binding ng-scope">1978</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1977" class="ng-binding ng-scope">1977</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1976" class="ng-binding ng-scope">1976</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1975" class="ng-binding ng-scope">1975</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1974" class="ng-binding ng-scope">1974</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1973" class="ng-binding ng-scope">1973</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1972" class="ng-binding ng-scope">1972</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1971" class="ng-binding ng-scope">1971</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1970" class="ng-binding ng-scope">1970</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1969" class="ng-binding ng-scope">1969</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1968" class="ng-binding ng-scope">1968</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1967" class="ng-binding ng-scope">1967</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1966" class="ng-binding ng-scope">1966</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1965" class="ng-binding ng-scope">1965</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1964" class="ng-binding ng-scope">1964</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1963" class="ng-binding ng-scope">1963</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1962" class="ng-binding ng-scope">1962</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1961" class="ng-binding ng-scope">1961</option>
													<!-- end ngRepeat: year in select_years -->
													<optionvalue ="1960" class="ng-binding ng-scope">1960
													</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1959" class="ng-binding ng-scope">1959</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1958" class="ng-binding ng-scope">1958</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1957" class="ng-binding ng-scope">1957</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1956" class="ng-binding ng-scope">1956</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1955" class="ng-binding ng-scope">1955</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1954" class="ng-binding ng-scope">1954</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1953" class="ng-binding ng-scope">1953</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1952" class="ng-binding ng-scope">1952</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1951" class="ng-binding ng-scope">1951</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1950" class="ng-binding ng-scope">1950</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1949" class="ng-binding ng-scope">1949</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1948" class="ng-binding ng-scope">1948</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1947" class="ng-binding ng-scope">1947</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1946" class="ng-binding ng-scope">1946</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1945" class="ng-binding ng-scope">1945</option>
													<!-- end ngRepeat: year in select_years -->
											</select> <select class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: month in select_months -->
													<option value="1" class="ng-binding ng-scope">1</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="2" class="ng-binding ng-scope">2</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="3" class="ng-binding ng-scope">3</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="4" class="ng-binding ng-scope">4</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="5" class="ng-binding ng-scope">5</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="6" class="ng-binding ng-scope">6</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="7" class="ng-binding ng-scope">7</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="8" class="ng-binding ng-scope">8</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="9" class="ng-binding ng-scope">9</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="10" class="ng-binding ng-scope">10</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="11" class="ng-binding ng-scope">11</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="12" class="ng-binding ng-scope">12</option>
													<!-- end ngRepeat: month in select_months -->
											</select> <select class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: day in select_days -->
													<option value="1" class="ng-binding ng-scope">1</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="2" class="ng-binding ng-scope">2</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="3" class="ng-binding ng-scope">3</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="4" class="ng-binding ng-scope">4</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="5" class="ng-binding ng-scope">5</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="6" class="ng-binding ng-scope">6</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="7" class="ng-binding ng-scope">7</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="8" class="ng-binding ng-scope">8</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="9" class="ng-binding ng-scope">9</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="10" class="ng-binding ng-scope">10</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="11" class="ng-binding ng-scope">11</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="12" class="ng-binding ng-scope">12</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="13" class="ng-binding ng-scope">13</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="14" class="ng-binding ng-scope">14</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="15" class="ng-binding ng-scope">15</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="16" class="ng-binding ng-scope">16</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="17" class="ng-binding ng-scope">17</option>
													<!-- end ngRepeat: day in select_days -->
													<optionvalue ="18" class="ng-binding ng-scope">18
													</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="19" class="ng-binding ng-scope">19</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="20" class="ng-binding ng-scope">20</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="21" class="ng-binding ng-scope">21</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="22" class="ng-binding ng-scope">22</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="23" class="ng-binding ng-scope">23</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="24" class="ng-binding ng-scope">24</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="25" class="ng-binding ng-scope">25</option>
													<!-- end ngRepeat: day in select_days --> <optionvalue
														="26" class="ng-binding ng-scope">26
													</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="27" class="ng-binding ng-scope">27</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="28" class="ng-binding ng-scope">28</option>
													<!-- end ngRepeat: day in select_days --> <optionvalue
														="29" class="ng-binding ng-scope">29
													</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="30" class="ng-binding ng-scope">30</option>
													<!-- end ngRepeat: day in select_days -->
													<option value="31" class="ng-binding ng-scope">31</option>
													<!-- end ngRepeat: month in select_months -->
											</select></td>
										</tr>
										<!-- ngIf: !$first -->
									</tbody>
								</table>
								<!-- end ngRepeat: award in currentApplicant.specs.award track by $index -->
							</div>
						</div>
					</div>
					<!-- end 수상경력 -->


					<div class="specs edit-spec ng-scope abroad">
						<!-- ngIf: hasSpecContent(item.category) -->
						<div class="subtitle ng-scope">
							<div class="ng-binding">해외연수</div>
							<!-- ngIf: item.category === 0 -->
							<div class="add-del-btn outter-btn btn">+</div>
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
					</div>
					<!-- end 해외연수 -->

					<div class="specs edit-spec ng-scope advantage">
						<!-- ngIf: hasSpecContent(item.category) -->
						<div class="subtitle ng-scope">
							<div class="ng-binding">취업우대사항</div>
							<!-- ngIf: item.category === 0 -->
							<div class="add-del-btn outter-btn btn ng-hide">+</div>
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
												<td><select class="ng-pristine ng-untouched ng-valid">
														<option value="">-</option>
														<!-- ngRepeat: year in select_years -->
														<option value="2020" class="ng-binding ng-scope">2020</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2019" class="ng-binding ng-scope">2019</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2018" class="ng-binding ng-scope">2018</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2017" class="ng-binding ng-scope">2017</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2016" class="ng-binding ng-scope">2016</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2015" class="ng-binding ng-scope">2015</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2014" class="ng-binding ng-scope">2014</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2013" class="ng-binding ng-scope">2013</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2012" class="ng-binding ng-scope">2012</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2011" class="ng-binding ng-scope">2011</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2010" class="ng-binding ng-scope">2010</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2009" class="ng-binding ng-scope">2009</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2008" class="ng-binding ng-scope">2008</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2007" class="ng-binding ng-scope">2007</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2006" class="ng-binding ng-scope">2006</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2005" class="ng-binding ng-scope">2005</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2004" class="ng-binding ng-scope">2004</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2003" class="ng-binding ng-scope">2003</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2002" class="ng-binding ng-scope">2002</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2001" class="ng-binding ng-scope">2001</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2000" class="ng-binding ng-scope">2000</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1999" class="ng-binding ng-scope">1999</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1998" class="ng-binding ng-scope">1998</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1997" class="ng-binding ng-scope">1997</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1996" class="ng-binding ng-scope">1996</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1995" class="ng-binding ng-scope">1995</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1994" class="ng-binding ng-scope">1994</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1993" class="ng-binding ng-scope">1993</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1992" class="ng-binding ng-scope">1992</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1991" class="ng-binding ng-scope">1991</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1990" class="ng-binding ng-scope">1990</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1989" class="ng-binding ng-scope">1989</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1988" class="ng-binding ng-scope">1988</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1987" class="ng-binding ng-scope">1987</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1986" class="ng-binding ng-scope">1986</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1985" class="ng-binding ng-scope">1985</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1984" class="ng-binding ng-scope">1984</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1983" class="ng-binding ng-scope">1983</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1982" class="ng-binding ng-scope">1982</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1981" class="ng-binding ng-scope">1981</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1980" class="ng-binding ng-scope">1980</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1979" class="ng-binding ng-scope">1979</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1978" class="ng-binding ng-scope">1978</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1977" class="ng-binding ng-scope">1977</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1976" class="ng-binding ng-scope">1976</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1975" class="ng-binding ng-scope">1975</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1974" class="ng-binding ng-scope">1974</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1973" class="ng-binding ng-scope">1973</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1972" class="ng-binding ng-scope">1972</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1971" class="ng-binding ng-scope">1971</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1970" class="ng-binding ng-scope">1970</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1969" class="ng-binding ng-scope">1969</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1968" class="ng-binding ng-scope">1968</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1967" class="ng-binding ng-scope">1967</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1966" class="ng-binding ng-scope">1966</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1965" class="ng-binding ng-scope">1965</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1964" class="ng-binding ng-scope">1964</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1963" class="ng-binding ng-scope">1963</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1962" class="ng-binding ng-scope">1962</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1961" class="ng-binding ng-scope">1961</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1960" class="ng-binding ng-scope">1960</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1959" class="ng-binding ng-scope">1959</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1958" class="ng-binding ng-scope">1958</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1957" class="ng-binding ng-scope">1957</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1956" class="ng-binding ng-scope">1956</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1955" class="ng-binding ng-scope">1955</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1954" class="ng-binding ng-scope">1954</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1953" class="ng-binding ng-scope">1953</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1952" class="ng-binding ng-scope">1952</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1951" class="ng-binding ng-scope">1951</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1950" class="ng-binding ng-scope">1950</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1949" class="ng-binding ng-scope">1949</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1948" class="ng-binding ng-scope">1948</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1947" class="ng-binding ng-scope">1947</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1946" class="ng-binding ng-scope">1946</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1945" class="ng-binding ng-scope">1945</option>
														<!-- end ngRepeat: year in select_years -->
												</select> <select class="ng-pristine ng-untouched ng-valid">
														<option value="">-</option>
														<!-- ngRepeat: month in select_months -->
														<option value="1" class="ng-binding ng-scope">1</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="2" class="ng-binding ng-scope">2</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="3" class="ng-binding ng-scope">3</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="4" class="ng-binding ng-scope">4</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="5" class="ng-binding ng-scope">5</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="6" class="ng-binding ng-scope">6</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="7" class="ng-binding ng-scope">7</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="8" class="ng-binding ng-scope">8</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="9" class="ng-binding ng-scope">9</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="10" class="ng-binding ng-scope">10</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="11" class="ng-binding ng-scope">11</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="12" class="ng-binding ng-scope">12</option>
														<!-- end ngRepeat: month in select_months -->
												</select> <span class="duration-wave-mark"> ~ </span> <select
													class="ng-pristine ng-untouched ng-valid">
														<option value="">-</option>
														<!-- ngRepeat: year in select_years -->
														<option value="2020" class="ng-binding ng-scope">2020</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2019" class="ng-binding ng-scope">2019</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2018" class="ng-binding ng-scope">2018</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2017" class="ng-binding ng-scope">2017</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2016" class="ng-binding ng-scope">2016</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2015" class="ng-binding ng-scope">2015</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2014" class="ng-binding ng-scope">2014</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2013" class="ng-binding ng-scope">2013</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2012" class="ng-binding ng-scope">2012</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2011" class="ng-binding ng-scope">2011</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2010" class="ng-binding ng-scope">2010</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2009" class="ng-binding ng-scope">2009</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2008" class="ng-binding ng-scope">2008</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2007" class="ng-binding ng-scope">2007</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2006" class="ng-binding ng-scope">2006</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2005" class="ng-binding ng-scope">2005</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2004" class="ng-binding ng-scope">2004</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2003" class="ng-binding ng-scope">2003</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2002" class="ng-binding ng-scope">2002</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2001" class="ng-binding ng-scope">2001</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="2000" class="ng-binding ng-scope">2000</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1999" class="ng-binding ng-scope">1999</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1998" class="ng-binding ng-scope">1998</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1997" class="ng-binding ng-scope">1997</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1996" class="ng-binding ng-scope">1996</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1995" class="ng-binding ng-scope">1995</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1994" class="ng-binding ng-scope">1994</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1993" class="ng-binding ng-scope">1993</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1992" class="ng-binding ng-scope">1992</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1991" class="ng-binding ng-scope">1991</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1990" class="ng-binding ng-scope">1990</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1989" class="ng-binding ng-scope">1989</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1988" class="ng-binding ng-scope">1988</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1987" class="ng-binding ng-scope">1987</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1986" class="ng-binding ng-scope">1986</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1985" class="ng-binding ng-scope">1985</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1984" class="ng-binding ng-scope">1984</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1983" class="ng-binding ng-scope">1983</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1982" class="ng-binding ng-scope">1982</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1981" class="ng-binding ng-scope">1981</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1980" class="ng-binding ng-scope">1980</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1979" class="ng-binding ng-scope">1979</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1978" class="ng-binding ng-scope">1978</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1977" class="ng-binding ng-scope">1977</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1976" class="ng-binding ng-scope">1976</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1975" class="ng-binding ng-scope">1975</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1974" class="ng-binding ng-scope">1974</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1973" class="ng-binding ng-scope">1973</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1972" class="ng-binding ng-scope">1972</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1971" class="ng-binding ng-scope">1971</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1970" class="ng-binding ng-scope">1970</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1969" class="ng-binding ng-scope">1969</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1968" class="ng-binding ng-scope">1968</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1967" class="ng-binding ng-scope">1967</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1966" class="ng-binding ng-scope">1966</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1965" class="ng-binding ng-scope">1965</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1964" class="ng-binding ng-scope">1964</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1963" class="ng-binding ng-scope">1963</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1962" class="ng-binding ng-scope">1962</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1961" class="ng-binding ng-scope">1961</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1960" class="ng-binding ng-scope">1960</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1959" class="ng-binding ng-scope">1959</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1958" class="ng-binding ng-scope">1958</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1957" class="ng-binding ng-scope">1957</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1956" class="ng-binding ng-scope">1956</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1955" class="ng-binding ng-scope">1955</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1954" class="ng-binding ng-scope">1954</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1953" class="ng-binding ng-scope">1953</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1952" class="ng-binding ng-scope">1952</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1951" class="ng-binding ng-scope">1951</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1950" class="ng-binding ng-scope">1950</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1949" class="ng-binding ng-scope">1949</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1948" class="ng-binding ng-scope">1948</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1947" class="ng-binding ng-scope">1947</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1946" class="ng-binding ng-scope">1946</option>
														<!-- end ngRepeat: year in select_years -->
														<option value="1945" class="ng-binding ng-scope">1945</option>
														<!-- end ngRepeat: year in select_years -->
												</select> <select class="ng-pristine ng-untouched ng-valid">
														<option value="">-</option>
														<!-- ngRepeat: month in select_months -->
														<option value="1" class="ng-binding ng-scope">1</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="2" class="ng-binding ng-scope">2</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="3" class="ng-binding ng-scope">3</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="4" class="ng-binding ng-scope">4</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="5" class="ng-binding ng-scope">5</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="6" class="ng-binding ng-scope">6</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="7" class="ng-binding ng-scope">7</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="8" class="ng-binding ng-scope">8</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="9" class="ng-binding ng-scope">9</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="10" class="ng-binding ng-scope">10</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="11" class="ng-binding ng-scope">11</option>
														<!-- end ngRepeat: month in select_months -->
														<option value="12" class="ng-binding ng-scope">12</option>
														<!-- end ngRepeat: month in select_months -->
												</select></td>
											</tr>
											<tr>
												<th>군별</th>
												<td><input type="text"
													class="ng-pristine ng-untouched ng-valid"></td>
												<th>계급</th>
												<td><input type="text"
													class="ng-pristine ng-untouched ng-valid"></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
					<!-- end 취업우대사항 -->

					<div class="specs edit-spec ng-scope social-activity">
						<!-- ngIf: hasSpecContent(item.category) -->
						<div class="subtitle ng-scope">
							<div class="ng-binding">관련활동 및 사회경험</div>
							<!-- ngIf: item.category === 0 -->
							<div class="add-del-btn outter-btn btn">+</div>
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
											<td colspan="3"><select
												class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: year in select_years -->
													<option value="2020" class="ng-binding ng-scope">2020</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2019" class="ng-binding ng-scope">2019</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2018" class="ng-binding ng-scope">2018</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2017" class="ng-binding ng-scope">2017</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2016" class="ng-binding ng-scope">2016</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2015" class="ng-binding ng-scope">2015</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2014" class="ng-binding ng-scope">2014</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2013" class="ng-binding ng-scope">2013</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2012" class="ng-binding ng-scope">2012</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2011" class="ng-binding ng-scope">2011</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2010" class="ng-binding ng-scope">2010</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2009" class="ng-binding ng-scope">2009</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2008" class="ng-binding ng-scope">2008</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2007" class="ng-binding ng-scope">2007</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2006" class="ng-binding ng-scope">2006</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2005" class="ng-binding ng-scope">2005</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2004" class="ng-binding ng-scope">2004</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2003" class="ng-binding ng-scope">2003</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2002" class="ng-binding ng-scope">2002</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2001" class="ng-binding ng-scope">2001</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2000" class="ng-binding ng-scope">2000</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1999" class="ng-binding ng-scope">1999</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1998" class="ng-binding ng-scope">1998</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1997" class="ng-binding ng-scope">1997</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1996" class="ng-binding ng-scope">1996</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1995" class="ng-binding ng-scope">1995</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1994" class="ng-binding ng-scope">1994</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1993" class="ng-binding ng-scope">1993</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1992" class="ng-binding ng-scope">1992</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1991" class="ng-binding ng-scope">1991</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1990" class="ng-binding ng-scope">1990</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1989" class="ng-binding ng-scope">1989</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1988" class="ng-binding ng-scope">1988</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1987" class="ng-binding ng-scope">1987</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1986" class="ng-binding ng-scope">1986</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1985" class="ng-binding ng-scope">1985</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1984" class="ng-binding ng-scope">1984</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1983" class="ng-binding ng-scope">1983</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1982" class="ng-binding ng-scope">1982</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1981" class="ng-binding ng-scope">1981</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1980" class="ng-binding ng-scope">1980</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1979" class="ng-binding ng-scope">1979</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1978" class="ng-binding ng-scope">1978</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1977" class="ng-binding ng-scope">1977</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1976" class="ng-binding ng-scope">1976</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1975" class="ng-binding ng-scope">1975</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1974" class="ng-binding ng-scope">1974</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1973" class="ng-binding ng-scope">1973</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1972" class="ng-binding ng-scope">1972</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1971" class="ng-binding ng-scope">1971</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1970" class="ng-binding ng-scope">1970</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1969" class="ng-binding ng-scope">1969</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1968" class="ng-binding ng-scope">1968</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1967" class="ng-binding ng-scope">1967</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1966" class="ng-binding ng-scope">1966</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1965" class="ng-binding ng-scope">1965</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1964" class="ng-binding ng-scope">1964</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1963" class="ng-binding ng-scope">1963</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1962" class="ng-binding ng-scope">1962</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1961" class="ng-binding ng-scope">1961</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1960" class="ng-binding ng-scope">1960</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1959" class="ng-binding ng-scope">1959</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1958" class="ng-binding ng-scope">1958</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1957" class="ng-binding ng-scope">1957</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1956" class="ng-binding ng-scope">1956</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1955" class="ng-binding ng-scope">1955</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1954" class="ng-binding ng-scope">1954</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1953" class="ng-binding ng-scope">1953</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1952" class="ng-binding ng-scope">1952</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1951" class="ng-binding ng-scope">1951</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1950" class="ng-binding ng-scope">1950</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1949" class="ng-binding ng-scope">1949</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1948" class="ng-binding ng-scope">1948</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1947" class="ng-binding ng-scope">1947</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1946" class="ng-binding ng-scope">1946</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1945" class="ng-binding ng-scope">1945</option>
													<!-- end ngRepeat: year in select_years -->
											</select> <select class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: month in select_months -->
													<option value="1" class="ng-binding ng-scope">1</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="2" class="ng-binding ng-scope">2</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="3" class="ng-binding ng-scope">3</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="4" class="ng-binding ng-scope">4</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="5" class="ng-binding ng-scope">5</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="6" class="ng-binding ng-scope">6</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="7" class="ng-binding ng-scope">7</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="8" class="ng-binding ng-scope">8</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="9" class="ng-binding ng-scope">9</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="10" class="ng-binding ng-scope">10</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="11" class="ng-binding ng-scope">11</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="12" class="ng-binding ng-scope">12</option>
													<!-- end ngRepeat: month in select_months -->
											</select> <span class="duration-wave-mark"> ~ </span> <select
												class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: year in select_years -->
													<option value="2020" class="ng-binding ng-scope">2020</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2019" class="ng-binding ng-scope">2019</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2018" class="ng-binding ng-scope">2018</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2017" class="ng-binding ng-scope">2017</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2016" class="ng-binding ng-scope">2016</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2015" class="ng-binding ng-scope">2015</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2014" class="ng-binding ng-scope">2014</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2013" class="ng-binding ng-scope">2013</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2012" class="ng-binding ng-scope">2012</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2011" class="ng-binding ng-scope">2011</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2010" class="ng-binding ng-scope">2010</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2009" class="ng-binding ng-scope">2009</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2008" class="ng-binding ng-scope">2008</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2007" class="ng-binding ng-scope">2007</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2006" class="ng-binding ng-scope">2006</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2005" class="ng-binding ng-scope">2005</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2004" class="ng-binding ng-scope">2004</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2003" class="ng-binding ng-scope">2003</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2002" class="ng-binding ng-scope">2002</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2001" class="ng-binding ng-scope">2001</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2000" class="ng-binding ng-scope">2000</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1999" class="ng-binding ng-scope">1999</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1998" class="ng-binding ng-scope">1998</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1997" class="ng-binding ng-scope">1997</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1996" class="ng-binding ng-scope">1996</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1995" class="ng-binding ng-scope">1995</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1994" class="ng-binding ng-scope">1994</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1993" class="ng-binding ng-scope">1993</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1992" class="ng-binding ng-scope">1992</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1991" class="ng-binding ng-scope">1991</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1990" class="ng-binding ng-scope">1990</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1989" class="ng-binding ng-scope">1989</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1988" class="ng-binding ng-scope">1988</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1987" class="ng-binding ng-scope">1987</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1986" class="ng-binding ng-scope">1986</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1985" class="ng-binding ng-scope">1985</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1984" class="ng-binding ng-scope">1984</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1983" class="ng-binding ng-scope">1983</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1982" class="ng-binding ng-scope">1982</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1981" class="ng-binding ng-scope">1981</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1980" class="ng-binding ng-scope">1980</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1979" class="ng-binding ng-scope">1979</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1978" class="ng-binding ng-scope">1978</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1977" class="ng-binding ng-scope">1977</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1976" class="ng-binding ng-scope">1976</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1975" class="ng-binding ng-scope">1975</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1974" class="ng-binding ng-scope">1974</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1973" class="ng-binding ng-scope">1973</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1972" class="ng-binding ng-scope">1972</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1971" class="ng-binding ng-scope">1971</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1970" class="ng-binding ng-scope">1970</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1969" class="ng-binding ng-scope">1969</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1968" class="ng-binding ng-scope">1968</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1967" class="ng-binding ng-scope">1967</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1966" class="ng-binding ng-scope">1966</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1965" class="ng-binding ng-scope">1965</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1964" class="ng-binding ng-scope">1964</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1963" class="ng-binding ng-scope">1963</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1962" class="ng-binding ng-scope">1962</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1961" class="ng-binding ng-scope">1961</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1960" class="ng-binding ng-scope">1960</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1959" class="ng-binding ng-scope">1959</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1958" class="ng-binding ng-scope">1958</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1957" class="ng-binding ng-scope">1957</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1956" class="ng-binding ng-scope">1956</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1955" class="ng-binding ng-scope">1955</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1954" class="ng-binding ng-scope">1954</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1953" class="ng-binding ng-scope">1953</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1952" class="ng-binding ng-scope">1952</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1951" class="ng-binding ng-scope">1951</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1950" class="ng-binding ng-scope">1950</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1949" class="ng-binding ng-scope">1949</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1948" class="ng-binding ng-scope">1948</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1947" class="ng-binding ng-scope">1947</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1946" class="ng-binding ng-scope">1946</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1945" class="ng-binding ng-scope">1945</option>
													<!-- end ngRepeat: year in select_years -->
											</select> <select class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: month in select_months -->
													<option value="1" class="ng-binding ng-scope">1</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="2" class="ng-binding ng-scope">2</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="3" class="ng-binding ng-scope">3</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="4" class="ng-binding ng-scope">4</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="5" class="ng-binding ng-scope">5</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="6" class="ng-binding ng-scope">6</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="7" class="ng-binding ng-scope">7</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="8" class="ng-binding ng-scope">8</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="9" class="ng-binding ng-scope">9</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="10" class="ng-binding ng-scope">10</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="11" class="ng-binding ng-scope">11</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="12" class="ng-binding ng-scope">12</option>
													<!-- end ngRepeat: day in select_days -->
											</select></td>
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
					</div>
					<!-- end 관련활동 및 사회경험 -->


					<div class="specs edit-spec ng-scope education">
						<!-- ngIf: hasSpecContent(item.category) -->
						<div class="subtitle ng-scope"
							ng-if="hasSpecContent(item.category)">
							<div class="ng-binding">교육</div>
							<!-- ngIf: item.category === 0 -->
							<div class="add-del-btn outter-btn btn">+</div>
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
											<td colspan="3"><select
												class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: year in select_years -->
													<option value="2020" class="ng-binding ng-scope">2020</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2019" class="ng-binding ng-scope">2019</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2018" class="ng-binding ng-scope">2018</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2017" class="ng-binding ng-scope">2017</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2016" class="ng-binding ng-scope">2016</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2015" class="ng-binding ng-scope">2015</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2014" class="ng-binding ng-scope">2014</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2013" class="ng-binding ng-scope">2013</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2012" class="ng-binding ng-scope">2012</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2011" class="ng-binding ng-scope">2011</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2010" class="ng-binding ng-scope">2010</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2009" class="ng-binding ng-scope">2009</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2008" class="ng-binding ng-scope">2008</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2007" class="ng-binding ng-scope">2007</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2006" class="ng-binding ng-scope">2006</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2005" class="ng-binding ng-scope">2005</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2004" class="ng-binding ng-scope">2004</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2003" class="ng-binding ng-scope">2003</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2002" class="ng-binding ng-scope">2002</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2001" class="ng-binding ng-scope">2001</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2000" class="ng-binding ng-scope">2000</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1999" class="ng-binding ng-scope">1999</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1998" class="ng-binding ng-scope">1998</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1997" class="ng-binding ng-scope">1997</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1996" class="ng-binding ng-scope">1996</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1995" class="ng-binding ng-scope">1995</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1994" class="ng-binding ng-scope">1994</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1993" class="ng-binding ng-scope">1993</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1992" class="ng-binding ng-scope">1992</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1991" class="ng-binding ng-scope">1991</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1990" class="ng-binding ng-scope">1990</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1989" class="ng-binding ng-scope">1989</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1988" class="ng-binding ng-scope">1988</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1987" class="ng-binding ng-scope">1987</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1986" class="ng-binding ng-scope">1986</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1985" class="ng-binding ng-scope">1985</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1984" class="ng-binding ng-scope">1984</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1983" class="ng-binding ng-scope">1983</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1982" class="ng-binding ng-scope">1982</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1981" class="ng-binding ng-scope">1981</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1980" class="ng-binding ng-scope">1980</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1979" class="ng-binding ng-scope">1979</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1978" class="ng-binding ng-scope">1978</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1977" class="ng-binding ng-scope">1977</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1976" class="ng-binding ng-scope">1976</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1975" class="ng-binding ng-scope">1975</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1974" class="ng-binding ng-scope">1974</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1973" class="ng-binding ng-scope">1973</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1972" class="ng-binding ng-scope">1972</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1971" class="ng-binding ng-scope">1971</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1970" class="ng-binding ng-scope">1970</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1969" class="ng-binding ng-scope">1969</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1968" class="ng-binding ng-scope">1968</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1967" class="ng-binding ng-scope">1967</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1966" class="ng-binding ng-scope">1966</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1965" class="ng-binding ng-scope">1965</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1964" class="ng-binding ng-scope">1964</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1963" class="ng-binding ng-scope">1963</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1962" class="ng-binding ng-scope">1962</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1961" class="ng-binding ng-scope">1961</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1960" class="ng-binding ng-scope">1960</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1959" class="ng-binding ng-scope">1959</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1958" class="ng-binding ng-scope">1958</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1957" class="ng-binding ng-scope">1957</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1956" class="ng-binding ng-scope">1956</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1955" class="ng-binding ng-scope">1955</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1954" class="ng-binding ng-scope">1954</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1953" class="ng-binding ng-scope">1953</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1952" class="ng-binding ng-scope">1952</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1951" class="ng-binding ng-scope">1951</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1950" class="ng-binding ng-scope">1950</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1949" class="ng-binding ng-scope">1949</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1948" class="ng-binding ng-scope">1948</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1947" class="ng-binding ng-scope">1947</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1946" class="ng-binding ng-scope">1946</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1945" class="ng-binding ng-scope">1945</option>
													<!-- end ngRepeat: year in select_years -->
											</select> <select class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: month in select_months -->
													<option value="1" class="ng-binding ng-scope">1</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="2" class="ng-binding ng-scope">2</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="3" class="ng-binding ng-scope">3</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="4" class="ng-binding ng-scope">4</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="5" class="ng-binding ng-scope">5</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="6" class="ng-binding ng-scope">6</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="7" class="ng-binding ng-scope">7</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="8" class="ng-binding ng-scope">8</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="9" class="ng-binding ng-scope">9</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="10" class="ng-binding ng-scope">10</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="11" class="ng-binding ng-scope">11</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="12" class="ng-binding ng-scope">12</option>
													<!-- end ngRepeat: month in select_months -->
											</select> <span class="duration-wave-mark"> ~ </span> <select
												class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: year in select_years -->
													<option value="2020" class="ng-binding ng-scope">2020</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2019" class="ng-binding ng-scope">2019</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2018" class="ng-binding ng-scope">2018</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2017" class="ng-binding ng-scope">2017</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2016" class="ng-binding ng-scope">2016</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2015" class="ng-binding ng-scope">2015</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2014" class="ng-binding ng-scope">2014</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2013" class="ng-binding ng-scope">2013</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2012" class="ng-binding ng-scope">2012</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2011" class="ng-binding ng-scope">2011</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2010" class="ng-binding ng-scope">2010</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2009" class="ng-binding ng-scope">2009</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2008" class="ng-binding ng-scope">2008</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2007" class="ng-binding ng-scope">2007</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2006" class="ng-binding ng-scope">2006</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2005" class="ng-binding ng-scope">2005</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2004" class="ng-binding ng-scope">2004</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2003" class="ng-binding ng-scope">2003</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2002" class="ng-binding ng-scope">2002</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2001" class="ng-binding ng-scope">2001</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="2000" class="ng-binding ng-scope">2000</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1999" class="ng-binding ng-scope">1999</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1998" class="ng-binding ng-scope">1998</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1997" class="ng-binding ng-scope">1997</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1996" class="ng-binding ng-scope">1996</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1995" class="ng-binding ng-scope">1995</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1994" class="ng-binding ng-scope">1994</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1993" class="ng-binding ng-scope">1993</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1992" class="ng-binding ng-scope">1992</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1991" class="ng-binding ng-scope">1991</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1990" class="ng-binding ng-scope">1990</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1989" class="ng-binding ng-scope">1989</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1988" class="ng-binding ng-scope">1988</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1987" class="ng-binding ng-scope">1987</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1986" class="ng-binding ng-scope">1986</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1985" class="ng-binding ng-scope">1985</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1984" class="ng-binding ng-scope">1984</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1983" class="ng-binding ng-scope">1983</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1982" class="ng-binding ng-scope">1982</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1981" class="ng-binding ng-scope">1981</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1980" class="ng-binding ng-scope">1980</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1979" class="ng-binding ng-scope">1979</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1978" class="ng-binding ng-scope">1978</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1977" class="ng-binding ng-scope">1977</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1976" class="ng-binding ng-scope">1976</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1975" class="ng-binding ng-scope">1975</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1974" class="ng-binding ng-scope">1974</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1973" class="ng-binding ng-scope">1973</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1972" class="ng-binding ng-scope">1972</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1971" class="ng-binding ng-scope">1971</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1970" class="ng-binding ng-scope">1970</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1969" class="ng-binding ng-scope">1969</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1968" class="ng-binding ng-scope">1968</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1967" class="ng-binding ng-scope">1967</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1966" class="ng-binding ng-scope">1966</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1965" class="ng-binding ng-scope">1965</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1964" class="ng-binding ng-scope">1964</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1963" class="ng-binding ng-scope">1963</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1962" class="ng-binding ng-scope">1962</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1961" class="ng-binding ng-scope">1961</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1960" class="ng-binding ng-scope">1960</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1959" class="ng-binding ng-scope">1959</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1958" class="ng-binding ng-scope">1958</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1957" class="ng-binding ng-scope">1957</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1956" class="ng-binding ng-scope">1956</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1955" class="ng-binding ng-scope">1955</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1954" class="ng-binding ng-scope">1954</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1953" class="ng-binding ng-scope">1953</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1952" class="ng-binding ng-scope">1952</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1951" class="ng-binding ng-scope">1951</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1950" class="ng-binding ng-scope">1950</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1949" class="ng-binding ng-scope">1949</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1948" class="ng-binding ng-scope">1948</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1947" class="ng-binding ng-scope">1947</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1946" class="ng-binding ng-scope">1946</option>
													<!-- end ngRepeat: year in select_years -->
													<option value="1945" class="ng-binding ng-scope">1945</option>
													<!-- end ngRepeat: year in select_years -->
											</select> <select class="ng-pristine ng-untouched ng-valid">
													<option value="">-</option>
													<!-- ngRepeat: month in select_months -->
													<option value="1" class="ng-binding ng-scope">1</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="2" class="ng-binding ng-scope">2</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="3" class="ng-binding ng-scope">3</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="4" class="ng-binding ng-scope">4</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="5" class="ng-binding ng-scope">5</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="6" class="ng-binding ng-scope">6</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="7" class="ng-binding ng-scope">7</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="8" class="ng-binding ng-scope">8</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="9" class="ng-binding ng-scope">9</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="10" class="ng-binding ng-scope">10</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="11" class="ng-binding ng-scope">11</option>
													<!-- end ngRepeat: month in select_months -->
													<option value="12" class="ng-binding ng-scope">12</option>
													<!-- end ngRepeat: day in select_days -->
											</select></td>
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