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
	                조건 <input type="text" name="jc_div" id="jc_div" maxlength="80" />
	                직무 <input type="text" name="jc_part" id="jc_part" maxlength="900" />
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
    	  <a href="#delete"  onclick="attachdelete('qadd`+cnt2+`')"><img width="15px" src="resources/img/gonggo-.png"></a>
      </li>`;
      $("#selfq"+cnt).append(str);
      cnt2++;
}

$(function (){//진짜로 아닐수도 잇음
	$('#axjobUpdate').click(function(){
//		var allData = $('#jobopenUpdate').serialize();

			var jobopen_id=$('#jobopen_id').val();
			var jobopen_pimg=$('#jobopen_pimg').val();
			var jobopen_pimgf=$('#jobopen_pimgf').val();
			var jobopen_company=$('#jobopen_company').val();
			var jobopen_link=$('#jobopen_link').val();
			var jobopen_sdate=$('#jobopen_sdate').val();
			var jobopen_edate=$('#jobopen_edate').val();
			var jc_div=$('#jc_div').val();
			var jc_part=$('#jc_part').val();
			var jobqa_q=$('#jobqa_q').val();
			var jobopen_cimg=$('#jobopen_cimg').val();
			var jobopen_cimgf=$('#jobopen_cimgf').val();


		$.ajax({
			type : 'post',
			data :{
				jobopen_id : jobopen_id,
				jobopen_pimg:jobopen_pimg,
				jobopen_pimgf:jobopen_pimgf,
				jobopen_company:jobopen_company,
				jobopen_link:jobopen_link,
				jobopen_sdate:jobopen_sdate,
				jobopen_edate:jobopen_edate,
				jc_div:jc_div,
				jc_part:jc_part,
				jobqa_q:jobqa_q,
				jobopen_cimg:jobopen_cimg,
				jobopen_cimgf:jobopen_cimgf
			},
			processData:false, 
			contentType:false,
			url : 'bupdate',
			success : function(result) {
				$('#adminArea').html(result);
			}
		});	
	}
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
      <c:forEach var="cl" items="${clist}" varStatus="clvs">
			<li id="conadd${clvs.index}">
	                조건 <input type="text" name="jc_div" id="jc_div" value="${cl.jc_div}" maxlength="80">
	                직무 <input type="text" name="jc_part" id="jc_part" value="${cl.jc_part}" maxlength="900">
	        <a href="#delete" class="plus-button" onclick="attachdelete('conadd${clvs.index}')">삭제</a>
	        <div id="selfq${clvs.index}">
		       
				<c:forEach var="qal" items="${qalist}" varStatus="qavs">
					<c:if test="${cl.jc_id==qal.jc_id}">
						<li id="qadd${qavs.index}">
						문항 <input type="text" name="jobqa_q" id="jobqa_q" value="${qal.jobqa_q}" maxlength="80">
						<a href="#delete" onclick="attachdelete('qadd${qavs.index}')"><img width="15px" src="resources/img/gonggo-.png"></a>
					</c:if>
				</c:forEach>
			
		
			<input type="hidden" name="jobqa_q" id="jobqa_q" value="end">
	        <div class="txts">
           <a href="#" onclick="selfqadd('${clvs.index}'); return false;"><img width="15px" src="resources/img/gonggo+.png"></a>
		</div>
		
	</c:forEach>
     </div>
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
<input type="button" id="axjobUpdate('${Detail.jobopen_id}')" value="수정!">
<input type="submit" value="수정" onclick="return inCheck()">
                 <input type="reset" value="취소"></td>	
</table>
</form>
<br>
<hr>

<a href="adminf">Home</a><br>
</body>
</html>