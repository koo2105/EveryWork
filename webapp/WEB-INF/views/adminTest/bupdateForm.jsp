<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** Spring [공고 수정] _ inCheck **</title>
<link rel="stylesheet" type="text/css" href="resources/jsLib/admin.css">
<script src="resources/jsLib/jquery-3.2.1.min.js"></script>
<script src="resources/jsLib/namchulAjax.js"></script>

<script>
var tCheck=false;

$(function() {
	$('#title').focus();
	$('#title').focusout(function() {
	 	tCheck=ttCheck();
	}); // title_focusout
}); // ready

function inCheck() {
	if (tCheck==true ) {
		return true;
	}else {
		tCheck=ttCheck();
		return false;
	};
} //inCheck 
var cnt =50;
function attachAddr(){
	  const str = `<li id=conadd`+cnt+`>
	                조건 <select name="jc_div" id="jc_div">
	                <option value="">--</option>
	            	<option value="1">신입</option>
	            	<option value="2">경력</option>
	            	<option value="3">인턴</option>
	            	<option value="4">계약직</option>
	            </select>
	                직무 <select name="jc_part" id="jc_part">
                	<option value="">--</option>
	            	<option value="1">경영∙사무</option>
	            	<option value="2">마케팅∙무역∙유통</option>
	            	<option value="3">영업∙고객상담</option>
	            	<option value="4">IT∙인터넷</option>
	            	<option value="5">연구개발∙설계</option>
	            	<option value="6">생산∙제조</option>
	            	<option value="7">전문∙특수직</option>
	            	<option value="8">디자인</option>
	            	<option value="9">미디어</option>
	            	<option value="10">서비스</option>
	            	<option value="11">건설</option>
	            </select>
	        <a href="#delete" class="plus-button" onclick="attachdelete('conadd`+cnt+`')">삭제</a>
	        <div id=selfq`+cnt+`>
	        
	        </div>
	        <input type="hidden" name="jobqa_q" id="jobqa_q" value="end">
	        <div class="txts">
            <a href="#" onclick="selfqadd(`+cnt+`); return false;"><img width="15px" src="resources/img/gonggo+.png"></a>
        	</div>
	        </li>`;
	  $("#con").append(str); // JQuery를 이용해서 juso24라는 id값을 가져와서 그곳에 append 시킨다.
	  cnt++;
	}
function attachdelete(id){
	$('#'+id).remove();
} 



var cnt2=50;
function selfqadd(cnt){
	const str =`<li id=qadd`+cnt2+`>
      문항 <input type="text" name="jobqa_q" id="jobqa_q" maxlength="80" />
    	  <a href="#delete"  onclick="attachdelete('qadd`+cnt+`')"><img width="15px" src="resources/img/gonggo-.png"></a>
      </li>`;
      $("#selfq"+cnt).append(str);
      cnt2++;
}

$(function (){
	$('#axjobUpdate').click(function(){
		//var allData = $('#jobopenUpdate').serialize();
		var allData = new FormData(document.getElementById('jobopenUpdate'));

		$.ajax({
			type : 'post',
			data : allData ,
			processData:false, 
			contentType:false,
			url : 'bupdate',
			success : function(result) {
				$('#adminArea').html(result);
				alert('수정되었습니다.');
			}
		});	
	});
}); // ready

</script>
</head>
<body>
<h2>** 기존 공고 수정 **</h2>
<form id="jobopenUpdate" name="jobopenUpdate" action="bupdate" method="post" enctype="multipart/form-data">
<input type="hidden" name="jobopen_id" value="${Detail.jobopen_id}">
<table>
<tr height="40"><td class="admin-title">I D</td>
	<td><input type="text" name="admin_id" value="${adloginID}" readonly="readonly"></td></tr>
<tr height="40"><td class="admin-title">pro_Image</td>
		<td><img src="${Detail.jobopen_pimg}" width="70" height="100">
		<input type="text" name="jobopen_pimg" id="jobopen_pimg" value="${Detail.jobopen_pimg}" hidden="true"><br>
		<input type="file" name="jobopen_pimgf" id="jobopen_pimgf">
</td></tr>		
		
<tr height="40"><td class="admin-title">Company</td>
	<td><input type="text" name="jobopen_company" id="jobopen_company" value="${Detail.jobopen_company}"><br>
		<span id="cMessage" class="eMessage"></span></td></tr>
<tr height="40"><td class="admin-title">Company_link</td>
	<td><input type="url" name="jobopen_link" id="jobopen_link" value="${Detail.jobopen_link}"><br>
		<span id="cMessage" class="eMessage"></span></td></tr>
<tr height="40"><td class="admin-title">Date</td>
	<td><input type="date" name="jobopen_sdate" id="jobopen_sdate" value="${Detail.jobopen_sdate}">
		<span id="dMessage" class="eMessage"></span>
		~ <input type="date" name="jobopen_edate" id="jobopen_edate" value="${Detail.jobopen_edate}">
		<span id="dMessage" class="eMessage"></span></td></tr>
<tr height="40"><td class="admin-title">Content</td>
      <td class="left">
      <div id="con">
      <c:set var="qaindex" value="0"></c:set>
      <c:forEach var="cl" items="${clist}" varStatus="clvs">
			<li id="conadd${clvs.index}">
	                조건 <select name="jc_div" id="jc_div">
	                <option value=""
	                <c:out value="${cl.jc_div == null?'selected':''}"/>>--</option>
	            	<option value="1"
	            	<c:out value="${cl.jc_div eq '1'?'selected':''}"/>>신입</option>
	            	<option value="2"
	            	<c:out value="${cl.jc_div eq '2'?'selected':''}"/>>경력</option>
	            	<option value="3"
	            	<c:out value="${cl.jc_div eq '3'?'selected':''}"/>>인턴</option>
	            	<option value="4"
	            	<c:out value="${cl.jc_div eq '4'?'selected':''}"/>>계약직</option>
	            </select>
	                직무 	<select name="jc_part" id="jc_part">
	                	<option value=""
	                	 <c:out value="${cl.jc_part == null?'selected':''}"/>>--</option>
		            	<option value="1"
		            	<c:out value="${cl.jc_part eq '1'?'selected':''}"/>>경영∙사무</option>
		            	<option value="2"
		            	<c:out value="${cl.jc_part eq '2'?'selected':''}"/>>마케팅∙무역∙유통</option>
		            	<option value="3"
		            	<c:out value="${cl.jc_part eq '3'?'selected':''}"/>>영업∙고객상담</option>
		            	<option value="4"
		            	<c:out value="${cl.jc_part eq '4'?'selected':''}"/>>IT∙인터넷</option>
		            	<option value="5"
		            	<c:out value="${cl.jc_part eq '5'?'selected':''}"/>>연구개발∙설계</option>
		            	<option value="6"
		            	<c:out value="${cl.jc_part eq '6'?'selected':''}"/>>생산∙제조</option>
		            	<option value="7"
		            	<c:out value="${cl.jc_part eq '7'?'selected':''}"/>>전문∙특수직</option>
		            	<option value="8"
		            	<c:out value="${cl.jc_part eq '8'?'selected':''}"/>>디자인</option>
		            	<option value="9"
		            	<c:out value="${cl.jc_part eq '9'?'selected':''}"/>>미디어</option>
		            	<option value="10"
		            	<c:out value="${cl.jc_part eq '10'?'selected':''}"/>>서비스</option>
		            	<option value="11"
		            	<c:out value="${cl.jc_part eq '11'?'selected':''}"/>>건설</option>
		            </select>
	        <a href="#delete" class="plus-button" onclick="attachdelete('conadd${clvs.index}')">삭제</a>
	       
		       
				<c:forEach var="qal" items="${qalist}" varStatus="qavs">
					<c:if test="${cl.jc_id==qal.jc_id}">
						<li id="qadd${qaindex}">
						문항 <input type="text" name="jobqa_q" id="jobqa_q" value="${qal.jobqa_q}" maxlength="80">
						<a href="#delete" onclick="attachdelete('qadd${qaindex}')"><img width="15px" src="resources/img/gonggo-.png"></a>
						 <c:set var="qaindex" value="${qaindex+1}"></c:set>
					</c:if>
				</c:forEach>
			 <div id="selfq${clvs.index}">
			</div>
			<input type="hidden" name="jobqa_q" id="jobqa_q" value="end">
	        <div class="txts">
	        
	        
           <a href="#" onclick="selfqadd('${clvs.index}'); return false;"><img width="15px" src="resources/img/gonggo+.png"></a>
		</div>
		
	</c:forEach>
     </div>
     
      <li class="cbox">
          <div class="txts">
              <a href="#" onclick="attachAddr(); return false;" class="plus-button">추가</a>
          </div>
      </li>
      </td>
  </tr>		
		

<tr height="40"><td class="admin-title">Image</td>
		<td><img src="${Detail.jobopen_cimg}" width="70" height="100">
		<input type="text" name="jobopen_cimg" id="jobopen_cimg" value="${Detail.jobopen_cimg}" hidden="true"><br>
		<input type="file" name="jobopen_cimgf" id="jobopen_cimgf">
	</td></tr>		
		
				
<tr><td></td><td>
<input type="button" id="axjobUpdate" value="수정!">
<input type="submit" value="수정" onclick="return inCheck()">
                 <input type="reset" value="취소"></td>	
</table>
</form>
<br>
<hr>

<a href="adminf">Home</a><br>
</body>
</html>