<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자기소개서</title>
 <link rel="stylesheet" type="text/css" href="resources/jsLib/resumeStyle.css">
 <script src="resources/jsLib/jquery-3.2.1.min.js"></script>
<style>
body{
	color: hsl(0, 0%, 50%);
}
</style>

<script>

	var cnt =0;
	function attachAddr(){
		  const str = `<div class="ta-container" id=resumeFormPlus`+cnt+`>
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
		<div class="plus-btn"><a onclick="attachdelete('resumeFormPlus`+cnt+`')">-</a></div>
		</div>	
		`;
		  $("#con").append(str); // JQuery를 이용해서 juso24라는 id값을 가져와서 그곳에 append 시킨다.
		  cnt++;
		}
	function attachdelete(id){
		$('#'+id).remove();
	} 

</script>

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
	<div class="resume-form">
	
		<form id="theform" action="javascript:void(0);">

			<div for="about-yourself" class="resume-title" id="resume-plus">자기소개서</div>
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