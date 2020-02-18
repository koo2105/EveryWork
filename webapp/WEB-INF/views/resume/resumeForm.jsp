<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자기소개서</title>
 <link rel="stylesheet" type="text/css" href="resources/jsLib/resumeStyle.css">
 <script src="resources/jsLib/jquery-3.2.1.min.js"></script>
 <script src="resources/jsLib/resumeForm.js"></script>
<style>
body{
	color: hsl(0, 0%, 50%);
}
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
	         <c:forEach var="tl" items="${titleList}" varStatus="tlvs">
	            <li><a href="resume-list" ><span>${tl.ja_name}</span></a></li>
	         </c:forEach>
	         </ul>
	    </div>

	<!-- resumeForm2 -->

	<div class="resume-container">
	<div id="rform" class="resume-form">
	
		<form id="theform" action="resumesave">

			<div for="about-yourself" class="resume-title" id="resume-plus">자기소개서</div><br><br>
			
			회사명 : <input type="text" id="ja_name" name="ja_name" value="${ja_name}">
			
			<div class="ta-container">
				
				<textarea id="selfqa_q" class="ta-question" name="selfqa_q"
					rows="3" cols="75" data-maxchars="20" data-over="false"
					placeholder="질문을 입력해주세요." required style="border-bottom: 2px;"></textarea>
						<hr>
				<textarea  class="ta-answer" name="selfqa_a" id="selfqa_a"
					rows="6" cols="75" data-maxchars="20" data-over="false"
					placeholder="답변을 입력해주세요" required></textarea>
				<div class="status-bar">
				
        <table>
          <tr><td>자소서는 EveryWork에서 :)</td><td class="charcount"></td></tr>
     
    
					</table>
				</div>
			</div>
			 <div id="con">
      
     		 </div>
			<div class="plus-btn"><a href="#" onclick="attachAddr()">+</a></div>

			<input class="btn" id="submitbtn" type="submit" value="저장">&nbsp;
			<input class="btn" id="resetbtn" type="reset" value="취소">

			</form>
			</div>
		</div>
</div>

</body>
</html>