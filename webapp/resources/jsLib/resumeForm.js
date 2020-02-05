/**
 * Functions to add/remove class on div.ta-container to emulate focus removed from textarea by CSS line 37 (outline:none)
 */
function setFocus(ta_container) {
  
  ta_container.classList.add('hasfocus')
  
}
function removeFocus(ta_container) {
  
  ta_container.classList.remove('hasfocus')
  
}

/**
 * Function to enable or disable #submitbtn
 * #submitbtn will be disabled if any of the textareas have data-over set 
 * to true due to exceeding the value specified in data-maxchars
 */
function setSubmitBtn() {
  
  var tas = theform.querySelectorAll('.ta')
  var disabled = false
  tas.forEach(function(ta) {
    
    if (ta.getAttribute('data-over') == 'true') {
      disabled = true
    }
    
  })
    
  if (disabled) {
    theform.querySelector('#submitbtn').disabled = true
  } else {
    theform.querySelector('#submitbtn').disabled = false
  }
  
}

/**
 * Function to count the characters in .ta and update .ta_container.statusbar
 * @param  {Obj} ta_container - the .ta-container element
 * @param  {Obj} ta - the .ta textarea element
 * @param  {Integer} maxLength - the max number of characters allowed in the .ta textarea element
 */
function countChars(ta_container, ta, maxLength) {
  
  var numChars = ta.value.length
  
  ta_container.querySelector('.charcount').innerHTML = numChars + '/' + maxLength
  ta_container.querySelector('.remaining').innerHTML = Math.abs( maxLength - numChars )
  
  if ( numChars > maxLength ) {
    
    ta_container.querySelector('.remaining-label').classList.add( 'over' )
    ta_container.querySelector('.remaining-label').innerHTML = 'Over by:'
    ta_container.querySelector('.remaining').classList.add( 'over' )
    ta.style.color = 'hsl(0, 80%, 60%)'
    ta.setAttribute('data-over', 'true')
    setSubmitBtn()
    
  } else {
    
    ta_container.querySelector('.remaining-label').classList.remove( 'over' )
    ta_container.querySelector('.remaining-label').innerHTML = 'Remaining:'
    ta_container.querySelector('.remaining').classList.remove( 'over' )
    ta.style.color = 'hsl(0, 0%, 50%)'
    ta.setAttribute('data-over', 'false')
    setSubmitBtn()
    
  }
  
}

/**
 * Initialisation function
 */
function initialise() {
  
  var ta_containers = theform.querySelectorAll('.ta-container')
  
  ta_containers.forEach( function(ta_container) {
    
    var ta = ta_container.querySelector('.ta')
    var maxLength = ta.getAttribute('data-maxchars')
    var numChars = ta.value.length
    
    ta_container.querySelector('.charcount').innerHTML = numChars + '/' + maxLength
    ta_container.querySelector('.remaining').innerHTML = maxLength - numChars
    
    ta.addEventListener( 'input', function() {
      countChars(ta_container, ta, maxLength)
    })
    
    ta.addEventListener( 'focus', function(){
      setFocus(ta_container)
    })
    
    ta.addEventListener( 'blur',  function(){
      removeFocus(ta_container)
    })
    
  })
  
}


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


/* Let's go! */
initialise()






