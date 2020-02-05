<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>** Spring [새글 등록] _ inCheck **</title>
<link rel="stylesheet" type="text/css" href="resources/jsLib/admin.css">
<script src="resources/jsLib/jquery-3.2.1.min.js"></script>

<script>


var cnt =0;
function attachAddr(){
	  const str = `<li id=conadd`+cnt+`>
	                조건 <input type="text" name="jc_div" id="jc_div" maxlength="80" />
	                직무 <input type="text" name="jc_part" id="jc_part" maxlength="900" />
	        <a href="#delete" class="plus-button" onclick="attachdelete('conadd`+cnt+`')">삭제</a>
	        <div id=selfq`+cnt+`>
	        
	        </div>
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

var cnt2=0;
function selfqadd(cnt){
	const str =`<li id=qadd`+cnt2+`>
      문항 <input type="text" name="jobqa_q" id="jobqa_q" maxlength="80" />
    	  <a href="#delete" onclick="attachdelete('qadd`+cnt2+`')"><img width="15px" src="resources/img/gonggo-.png"></a>
      </li>`;
      $("#selfq"+cnt).append(str);
      cnt2++;
}
</script>
</head>
<body>
<h2>** 새 공고 등록 **</h2>
<form action="jobopeninsert" method="post">
<table>
<tr height="40"><td class="admin-title">I D</td>
	<td><input type="text" name="admin_id" id="admin_id" value="${adloginID}" readonly="readonly"></td></tr>
<tr height="40"><td class="admin-title">pro_Image</td>
		<td><input type="file" name="jobopen_pimg" id="jobopen_pimg" ><br>
		<img src="" class="select_img"/></td>
<tr height="40"><td class="admin-title">Company</td>
	<td><input type="text" name="jobopen_company" id="jobopen_company"><br>
		<span id="cMessage" class="eMessage"></span></td></tr>
<tr height="40"><td class="admin-title">Company_link</td>
	<td><input type="url" name="jobopen_link" id="jobopen_link"><br>
		<span id="cMessage" class="eMessage"></span></td></tr>
<tr height="40"><td class="admin-title">Date</td>
	<td><input type="date" name="jobopen_sdate" id="jobopen_sdate">
		<span id="dMessage" class="eMessage"></span>
		~ <input type="date" name="jobopen_edate" id="jobopen_edate">
		<span id="dMessage" class="eMessage"></span></td></tr>
<tr height="40"><td class="admin-title">Content</td>
      <td class="left">
      <div id="con">
      
      </div>
      <li class="cbox">
          <div class="txts">
              <a href="#" onclick="attachAddr(); return false;" class="plus-button">추가</a>
          </div>
      </li>
      </td>
  </tr>		
		
<!-- <tr height="20"><td bgcolor="yellow" >Content</td>
	<td><textarea rows="5" cols="50" name="content">조건</textarea><br>
	<textarea rows="5" cols="50" name="content">직무</textarea>
	<a href="#" class="plus-button">+</a>
	</td></tr> -->
<tr height="40"><td class="admin-title" >Image</td>
		<td><input type="file" id="jobopen_cimgf" name="jobopen_cimgf"><br>
		<img src="" class="select_img"/>
<tr><td></td><td><input type="submit" value="등록" onclick="return inCheck()">
                 <input type="reset" value="취소"></td>	
</table>
</form>
<br>
<hr>

<a href=adminhome>adminHome</a><br>
</body>
</html>