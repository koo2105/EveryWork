<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Blog Insert Form</title>
	<script src="resources/jsLib/js/service/HuskyEZCreator.js" charset="utf-8"></script>
	<script src="resources/jsLib/jquery-3.2.1.min.js"></script>
	<script>
	var oEditors = [];
	 $(function(){
				nhn.husky.EZCreator.createInIFrame({ oAppRef : oEditors,
				elPlaceHolder : "jformArea",
				sSkinURI : "seditor",
				fCreator : "createSEditor2",
				htParams : {
					bUseToolbar : true,
					bUseVerticalResizer : true,
					bUseModeChanger : true
				}
			
			});
	 })// ready
	 function submitContents(){
			oEditors.getById["class_tutorIntroduce"].exec("UPDATE_CONTENTS_FIELD",[]);
		}
	</script>
</head>
<body>
<h1>** 자소서연구소 글 수정 **

</h1>
	<form action="#" method="post" id="#" enctype="multipart/form-data">
	<table width=573>
	<tr><td>제목</td>
	<td><input type="text" name="bititle" id="bititle" size="50"><br></td></tr>
	<tr><td>메인사진</td>
	<td><input type="file" name = "mainimg" id="mainimg"><br></td></tr>
	</table>
		<textarea rows="13" cols="40" id="jformArea"></textarea>
		<button type="submit" onclick="submitContents()">전송</button>
	</form>

</body>
</html>