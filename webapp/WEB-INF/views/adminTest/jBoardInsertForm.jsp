<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form>
		<textarea rows="13" cols="40" id="jformArea"></textarea>
		<button type="submit" onclick="submitContents()">전송</button>
	</form>
	
	<script src="resources/jsLib/js/service/HuskyEZCreator.js" charset="utf-8"></script>
	<script src="resources/jsLib/jquery-3.2.1.min.js"></script>
	
	<script type="text/javascript">
	var oEditors = [];
		
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
	function submitContents(){
		oEditors.getById["class_tutorIntroduce"].exec("UPDATE_CONTENTS_FIELD",[]);
	}
	</script>
</body>
</html>