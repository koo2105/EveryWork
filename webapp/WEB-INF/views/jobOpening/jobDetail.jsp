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
<body class=jdetail-body>
<div class="jdetail-container"> <!-- 전체div -->
	<div class="jdetail-detail"> <!-- 상세부분의 틀 div -->
	<div class="x-btn"><a href="#" onclick="jDetailClose()"><img alt="닫기" src="resources/img/x_btn.png"></a></div>
		<div class="detail-top"> <!-- 상세의 윗부분 -->
			<div class="detail-header"><!-- 공고의 헤더 -->
				<div class="header-img">사진이 들어갈 자리</div>
				<div class="header-content">
					<div class="header-time">
						<span class="header-time-span"><span class="header-times">2020.01.20</span> ~ <span class="header-timee">2020.02.01</span><span> (00일남음)</span></span>
					</div>
					<div class="header-link">
						<div><a href="#">홈페이지</a></div>
					</div>
					<div class="header-count">카운트 입력부분</div>
				</div>
			</div>
			<div class="detail-self"><!-- 자소서바로가기 -->
			<table class="self-table">
				<tr><td width="135px">신입/인턴</td><td width="304px" align="left">대물보상(제목)</td><td width="101px">00명작성</td><td width="135px">자기소개서</td></tr>
			</table>
			</div>
		</div>
		<div> <!-- 상세의 아랫부분 (이미지) -->
		<img src="resources/img/jobDetailEx.png" width="100%">
			<img>
		</div>
	</div>
</div>
</body>
</html>