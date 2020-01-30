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
$(function(){
	
})
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




// ready