<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">

.row0 {

	position: fixed;
	z-index: 1030;
	left:0; right:0; top:0  
}

.row1 {
 
  position: fixed;
  z-index: 1030;
  top:75px;
	
}

</style>
</head>
<body>

<div class="wrapper row0">	
	

  <div id="topbar" class="hoc clear"> 
    <!-- ################################################################################################ -->
    <div class="fl_left">
      <ul>
      	<li> <form class="group" method="post" action="#">
                <fieldset>
                  <legend>Search</legend>
                  <input type="text" value="" placeholder="Search Here;">
                  <button class="fa fa-sign-in" type="submit" title="Submit"><em>Submit</em></button>
                </fieldset>
              </form>
        </li>
      </ul>
    </div>
    <div class="fl_right">
      <ul>
        <li><a href="main3.jsp"><i class="fa fa-lg fa-home"></i></a></li>
        <li><a href="login-sign-in/login.jsp">로그인</a></li>
        <li><a href="main3.jsp?mode=14">마이페이지</a></li>
        <li><a href="main3.jsp?mode=15">고객센터</a></li>
      </ul>
    </div>
    <!-- ################################################################################################ -->
  </div>
</div>
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- Top Background Image Wrapper -->
<!--  <div class="bgded overlay fullscreen-bg" style="background-image:url('images/demo/backgrounds/header_back.jpg');">
	<video loop muted autoplay poster="images/demo/backgrounds/header_back.jpg" class="fullscreen-bg__video">
    <source src="https://themusicbed.s3.amazonaws.com/site-assets/videos/home-guest.mp4" type="video/mp4">
	add .ogv and .webm to cover all compatible devices 
  	</video> -->
 <div class="bgded overlay" style="background-image:url('images/demo/backgrounds/musicalsample3.PNG');">   
  <!-- ################################################################################################ -->
  <div class="wrapper row1">
    <header id="header" class="hoc clear"> 
      <!-- ################################################################################################ -->
      <div id="logo" class="fl_left">
      
        <h2><a href="main3.jsp"><b>食또樂 YOLO가자</b></a></h2>
      </div>
      <nav id="mainav" class="fl_right">
        <ul class="clear">
          <!-- <li class="active"><a href="main.jsp">Home</a></li>
           --><!-- <li><a class="drop" href="#">Pages</a>
            <ul>
              <li><a href="main3.jsp?mode=1">Gallery</a></li>
              <li><a href="pages/full-width.html">Full Width</a></li>
              <li><a href="pages/sidebar-left.html">Sidebar Left</a></li>
              <li><a href="pages/sidebar-right.html">Sidebar Right</a></li>
              <li><a href="pages/basic-grid.html">Basic Grid</a></li>
            </ul>
          </li> -->
          <li><a class="drop" href="#">뮤지컬/연극</a>
            <ul>
              <li><a href="main3.jsp?mode=1">뮤지컬</a></li>
              <li><a href="main3.jsp?mode=2">연극</a></li>             
            </ul>
          </li>
          <li><a href="#">콘서트</a>
            <ul>
              <li><a href="main3.jsp?mode=3">발라드</a></li>
              <li><a href="main3.jsp?mode=4">내한공연</a></li> 
              <li><a class="drop" href="#">락/메탈</a>
              	<ul>
                  <li><a href="main3.jsp?mode=5">락</a></li>
                  <li><a href="main3.jsp?mode=6">메탈</a></li>
                </ul>
              </li> 
              <li><a href="main3.jsp?mode=7">페스티벌</a></li>
              <li><a class="drop" href="#">랩/힙합</a>
                <ul>
                  <li><a href="main3.jsp?mode=8">랩</a></li>
                  <li><a href="main3.jsp?mode=9">힙합</a></li>
                </ul>
              </li>
            </ul>
          </li>
          <li><a class="drop" href="#">클래식/무용</a>
            <ul>
               <li><a href="main3.jsp?mode=10">클래식</a></li>
               <li><a href="main3.jsp?mode=11">무용</a></li> 
            </ul>
          </li>
          <li><a class="drop" href="#">전시/행사</a>
            <ul>
               <li><a href="main3.jsp?mode=12">전시</a></li>
               <li><a href="main3.jsp?mode=13">행사</a></li> 
            </ul>
          </li>
        </ul>
      </nav>
      <!-- ################################################################################################ -->
    </header>
  </div>




</body>
</html>