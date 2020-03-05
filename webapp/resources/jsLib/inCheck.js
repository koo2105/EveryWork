// idCheck
function idCheck() {
	var id=$('#id').val();
	if (id.length<5) {
		$('#iMessage').html('ID 는 5 글자 이상 입력하세요 ~~');	
		$('#id').focus();
		return false;
	} else if (id.replace(/[a-z.0-9]/gi,'').length>0) {
		// 영문자 와 숫자 확인 정규식
		$('#iMessage').html('ID 는 영문자 와 숫자 로만 입력하세요 ~~');	
		$('#id').focus();
		return false;
	} else {
		$('#iMessage').html('');	
		return true;
	};
} // idCheck()

// pwCheck
function pwCheck() {
	var password=$('#password').val();	
	var pLength=password.length ; 
	if (password.length<5) {
		$('#pMessage').html('Password 는 5 글자 이상 입력하세요 ~~');	
		$('#password').focus();
		return false;
	}else if (password.replace(/[!-*]/gi,'').length >= pLength ) {
		$('#pMessage').html('Password는 특수문자를 반드시 1개 이상 입력하세요 ~~');	
		$('#password').focus();
		return false;
	}else if (password.replace(/[0-9.!-*]/gi,'').length>0) {
		$('#pMessage').html('Password는 숫자와 특수문자 로만 입력하세요 ~~');	
		$('#password').focus();
		return false;
	}else {
		$('#pMessage').html('');
		return true;
	} 
} // pwCheck()

function pwCheck2() {
	var pw1 = $('#password').val();
	var pw2 = $('#password2').val();
	if(pw1!=pw2){
		$('#pwMessage').html('비밀번호가 일치하지 않습니다.');
	}else $('#pMessage').html('');
}//pwCheck2()



// nmCheck
function nmCheck() {
	var name=$('#name').val();
	if (name.length<2) {
		$('#nMessage').html('Name 은 2 글자 이상 입력하세요 ~~');
		$('#name').focus();
		return false;
	}else if (name.replace(/[a-z.가-힇]/gi,'').length>0) {
		$('#nMessage').html('Name 은 한글 또는 영문으로만 입력하세요 ~~');
		$('#name').focus();
		return false;
	}else {
		$('#nMessage').html('');	
		return true;
	} 
} // nmCheck()

//bdCheck
// => 년.월.일 을 입력했는지..
//    yyyy-mm-dd : length 10
function bdCheck() {
	var birthd=$('#birthd').val();
	if (birthd.length!=10) {
		$('#bMessage').html('생일을  YYYY-MM-DD 정확하게 입력하세요 ~~~');
		$('#birthd').focus();
		return false;
	}else {
		$('#bMessage').html('');	
		return true;
	}
} // bdCheck()






