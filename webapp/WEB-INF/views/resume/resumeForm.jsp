<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자기소개서</title>
<link rel="stylesheet" type="text/css" href="resources/jsLib/resumeStyle.css">
<style>
</style>
</head>

<body>

	<!-- top nav -->
	<%@ include file="/WEB-INF/views/everyUsing/navBar.jsp"%>

	<!-- mb-container -->
	  <div class="resumeFrom-container">
     	 <div class="resume-menu-container">
       <!-- 메뉴 div -->
	      <div class="resume-category-title">
	      <h3>자소서 목록</h3>
	      </div>
	         <ul>
	            <li><a href="resume-list" ><span>자소서 몽농노</span></a></li>
	            <li><a href="resume-list" ><span>자소서 몽농노</span></a></li>
	            <li><a href="resume-list" ><span>자소서 몽농노</span></a></li>
	            <li><a href="resume-list" ><span>자소서 몽농노</span></a></li>
	         </ul>
	    </div>

	<!-- resumeForm2 -->

	<div class="resume-container">

		<form id="theform" action="javascript:void(0);">

			<label for="about-yourself" class="resume-title">자기소개서</label>
			<div class="ta-container">
				<textarea id="question" class="ta-question" name="about-yourself"
					rows="3" cols="75" data-maxchars="20" data-over="false"
					placeholder="질문을 입력해주세요." required style="border-bottom: 2px;"></textarea>
						<hr>
				<textarea  class="ta-answer" name="about-yourself"
					rows="6" cols="75" data-maxchars="20" data-over="false"
					placeholder="답변을 입력해주세요" required></textarea>
				<div class="status-bar">
				
        <table>
          <tr><td>자소서는 EveryWork에서 :)</td><td class="charcount"></td></tr>
     
    
					</table>
				</div>
			</div>
			<div class="ta-container">
				<textarea id="question" class="ta-question" name="about-yourself"
					rows="3" cols="75" data-maxchars="20" data-over="false"
					placeholder="질문을 입력해주세요." required style="border-bottom: 2px;"></textarea>
					<hr>
					
				<textarea  class="ta-answer" name="about-yourself"
					rows="6" cols="75" data-maxchars="20" data-over="false"
					placeholder="답변을 입력해주세요" required></textarea>
				<div class="status-bar">
				
        <table>
          <tr><td>자소서는 EveryWork에서 :)</td><td class="charcount"></td></tr>
     
    
					</table>
				</div>
			</div>

	

	

			<input class="btn" id="submitbtn" type="submit" value="저장">&nbsp;
			<input class="btn" id="resetbtn" type="reset" value="취소">

		</form>

	</div>
</div>

</body>
</html>