<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>EveryWork</title>
<link rel="stylesheet" type="text/css" href="resources/jsLib/navBar.css">
<link rel="stylesheet" type="text/css" href="resources/jsLib/blogStyle.css">
<style>


</style>
</head>
<body>

<!-- top nav -->
<nav>
	<div class="nav-container">
		<div class= "nav-item nav-item-left nav-logo"><a href="home"><b>EveryWork</b></a></div>
		<div class= "nav-item nav-item-left nav-recruit"><a href="jobMain">채용공고</a></div>
		<div class= "nav-item nav-item-left nav-resume"><a href="resumeForm">자기소개서</a></div>
		<div class= "nav-item nav-item-left nav-spec"><a href="specForm">이력서</a></div>
		<div class= "nav-item nav-item-left nav-blog"><a href="blog">자소서연구소</a></div>
		<c:if test="${loginID!=null}">
		<div class= "nav-item nav-item-right nav-login-icon"><a href="#"><img src="./resources/img/login_icon.png" height="25px"></a>
		</div><!-- end nav-login-icon -->
		</c:if>
		<c:if test="${loginID==null}">
		<div class= "nav-item nav-item-right nav-join"><a href="joinForm">회원가입</a></div>
		<div class= "nav-item nav-item-right nav-login"><a href="#">로그인</a></div>
		</c:if>
		</div>
</nav>



   <div class="mb-container">
       <div class="menu-container"> <!-- 메뉴 div -->
	      <div class="category-title">
	      <h3>Category</h3>
	      </div>
	         <ul>
	            <li><a href="blog" class="blog-All"><span>전체보기</span></a></li>
	            <li><a href="useEW" class="blog-subtitle"><span>EveryWork활용하기</span></a></li>
	            <li><a href="resumeWell" class="blog-subtitle"><span>자소서 잘 쓰는 법</span></a></li>
	            <li><a href="EWNews" class="blog-subtitle"><span>EveryWork 소식</span></a></li>
	          
	         </ul>
	    </div>
      
      
      <div class="blog-content-right">
    	<div class="blog-post-container">
  	<div class="category-name">
  	<c:if test="${sl.lab_cat=='1'}">
  	EveryWork활용하기
  	</c:if>
  	<c:if test="${sl.lab_cat=='2'}">
	자소서 잘 쓰는 법
  	</c:if>
  	<c:if test="${sl.lab_cat=='3'}">
  	EveryWork 소식
  	</c:if>
 	</div>
  	<div class="post">
    <div class="title">
     ${sl.lab_title}
    </div>
    <div class="info">
      <div class="date">
      ${sl.lab_date}

      </div>
      <div class="count">
      	조회수 :   ${sl.lab_count}

      </div>
    </div>
	
	<div class="content">
    ${sl.lab_content}
    </div>
    </div>
    </div>
    
   
	<script type="text/javascript" charset="utf-8">
  	var category_id = 2 -0;
	</script>

  </div>
  </div>
 	
</body>
</html>
 