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
function jDetailOpen(){
/*	var url='jdetail';
	window.open(url,"_blank","toolbar=no,menubar=yes,scrollbars=yes,resizable=yes,width=600,height=300");*/
	$('.jobDetail-div').show();
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
function gonggoupdate(){
   $.ajax({
      type : 'Get',
      url : 'bupdatef',
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