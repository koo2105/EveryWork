function movecal(year, month){
	$.ajax({
		type:'Get',
		url:'calendar',
		data:{
			year:year,
			month:month
		},
		success: function(result){
			$('#calendar-div').html(result);
		}
	});//ajax
}
function filtering(){
	$('#filtering-container').toggle();
}

function jDetailOpen(jobopen_id){
	$.ajax({
		type:'Post',
		url:'jobopenDetail',
		data:{
		jobopen_id:jobopen_id,
		
		},
		success: function(result){
			//$('.jobDetail-div').html(result);
			$('.jobDetail-div').html(result);
		}
	});//ajax
	
	
/*	var url='jdetail';
	window.open(url,"_blank","toolbar=no,menubar=yes,scrollbars=yes,resizable=yes,width=600,height=300");*/
	$('.jobDetail-div').show();
}


//jabMain checkBox
$(document).ready(function(){
    //최상단 체크박스 클릭
    $("#checkall1").click(function(){
        //클릭되었으면
        if($("#checkall1").prop("checked")){
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
            $("input[name=chk1]").prop("checked",true);
            //클릭이 안되있으면
        } else{
            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
            $("input[name=chk1]").prop("checked",false);
        }
        
    });
});

$(document).ready(function(){
	//최상단 체크박스 클릭
	$("#checkall2").click(function(){
		//클릭되었으면
		if($("#checkall2").prop("checked")){
			//input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
			$("input[name=chk2]").prop("checked",true);
			//클릭이 안되있으면
		} else{
			//input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
			$("input[name=chk2]").prop("checked",false);
		}
		
	});
});

$(document).ready(function(){
	//최상단 체크박스 클릭
	$("#checkall3").click(function(){
		//클릭되었으면
		if($("#checkall3").prop("checked")){
			//input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
			$("input[name=chk3]").prop("checked",true);
			//클릭이 안되있으면
		} else{
			//input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
			$("input[name=chk3]").prop("checked",false);
		}
		
	});
});








function caloptionClose(){
	$('.calendar-option').hide();
}

function caloptionOpen(){
	$('.calendar-option').toggle();
}
function jDetailClose(){
	$('.jobDetail-div').hide();
}

function answerOpen(){
		$('.answer-div').show();
	}

function answerClose(){
		$('.answer-div').hide();
	}

function adverOpen(){
	$('.adver-div').show();
}
function adverClose(){
	$('.adver-div').hide();
}


function bloginsertf(){
	$.ajax({
		type : 'Get',
		url : 'bloginsertf',
		success : function(result) {
			$('#adminArea').html(result);
		}
	});
}

function blogupdatef(){
	$.ajax({
		type : 'Get',
		url : 'blogupdatef',
		success : function(result) {
			$('#adminArea').html(result);
		}
	});
}

function gonggoinsert(){
	   $.ajax({
	      type : 'Get',
	      url : 'binsertf',
	      success : function(result) {
	         $('#adminArea').html(result);
	      }
	   });
	}
//01-30추가
function gonggoupdate(jobopen_id){
   $.ajax({
      type : 'Get',
      url : 'bupdatef',
  	  data:{
		jobopen_id:jobopen_id
		},
      success : function(result) {
         $('#adminArea').html(result);
      }
   });
}

function mlogin(){
	   $('#login-div').toggle();
	}

function mInfo(){
	   $('#mInfo-div').toggle();
	}

function pwCheck() {
	var pw1 = $('#password').val();
	var pw2 = $('#password2').val();
	if(pw1!=pw2){
		$('#pMessage').html('비밀번호가 일치하지 않습니다.');
	}else $('#pMessage').html('');
}







$(function(){
	
}); //ready



// ready