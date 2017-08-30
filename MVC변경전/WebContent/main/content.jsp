<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>YOLO가자</title>
<style type="text/css">
	
/* 비디오 시작 */
@import url(https://fonts.googleapis.com/css?family=Roboto:400,300);

// variables
$gray-base :#000;
$font-regular : 'Roboto', sans-serif;

// mixins
@mixin translate($x, $y) {
  -webkit-transform: translate($x, $y);
  -ms-transform: translate($x, $y); // IE9 only
  -o-transform: translate($x, $y);
  transform: translate($x, $y);
}

@mixin background-size($size) {
 -webkit-background-size: $size;
    -moz-background-size: $size;
    -o-background-size: $size;
    background-size: $size ;
}
 .fullscreen-bg {
  position: fixed; 
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
   overflow: hidden;
   z-index: -100;
     &::before {
        content: "";
        position: absolute;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        background: rgba($gray-base, .5);
        z-index: 1;
    } 
}

.fullscreen-bg__video {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;   
}

.home-content {
    width: 100%;
     /* position: absolute; */ 
    left: 50%;
    top: 50%;
    z-index: 999; 
    text-align: center;
    @include translate(-50%, -50%); 
     /* h1 {
        font-size:48px;
        color: white;
      padding:0 10px;
        small {
          font:300 18px  $font-regular ;
          color: white;  
          display: block;
          margin: 10px 0;
        }        
    }    */
}	

@media (min-aspect-ratio: 16/9) {
  .fullscreen-bg__video {
    height: 300%;
    top: -100%;
  }
}

@media (max-aspect-ratio: 16/9) {
  .fullscreen-bg__video {
    width: 300%;
    left: -100%;
  }
}

@media (max-width: 767px) {
  .fullscreen-bg {
    background: url('images/demo/backgrounds/header_back.jpg') center center / cover no-repeat;
    @include background-size(cover);
  }

  .fullscreen-bg__video {
    display: none;
  }
}
/* 비디오 끝 */	
div #pageintro .basicslider .slides li img{
	height: 300px;
	vertical-align: top;
}

ul.slides > li > article> ul > li{
	display: inline-block;
}

</style>
</head>
<body>
<!-- bgded overlay  -->
<div class="bgded overlay fullscreen-bg">
	<video loop muted autoplay poster="images/demo/backgrounds/header_back.jpg" class="fullscreen-bg__video">
    <source src="https://themusicbed.s3.amazonaws.com/site-assets/videos/home-guest.mp4" type="video/mp4">
	<!-- add .ogv and .webm to cover all compatible devices  -->
  	</video>
</div>
<!-- content1 slide banner start -->
  <div id="pageintro" class="hoc clear home-content"> 
    <!-- ################################################################################################ -->
    <div class="flexslider basicslider">
    	<br>
    	<br>
    	<br>
    	
      <ul class="slides" position="center">
      	<li>
      		<article>
	            <h3 class="heading">나의 예매 및 관심 리스트</h3>
	            <ul>
	            	<li><p>관심 리스트</p>
	            		<footer><a class="btn inverse" href="#">예매하기</a></footer>
	            	</li>
	            	<li><p>예매 리스트</p>
	           			 <footer><a class="btn inverse" href="#">예매내역</a></footer>
	           		</li>
	            </ul>            
            </article>  	
      	</li>
      	<li>
      		<article>
	            <h3 class="heading">예매 오픈 공지</h3>
	            <p>Orci nam nec dolor dapibus dignissim tortor</p>
	            <footer><a class="btn inverse" href="#">더보기</a></footer>
            </article>  
      	</li>      
        <li>
        	
	        <img src="images/demo/backgrounds/Capture1.JPG">
	       
        <!--<article>
             <p>Egestas</p>
            <h3 class="heading">Elementum dictum</h3>
            <p>Cursus mauris vitae ligula accumsan sed</p>
            <footer>
            	검색용도
              <form class="group" method="post" action="#">
                <fieldset>
                  <legend>Sign-Up:</legend>
                  <input type="email" value="" placeholder="Email Here&hellip;">
                  <button class="fa fa-sign-in" type="submit" title="Submit"><em>Submit</em></button>
                </fieldset>
              </form>
            </footer>
          </article> -->
        </li>
        <li>
        	
        	<img src="images/demo/backgrounds/Capture2.JPG">
          <!-- <article>
            <p>Pulvinar</p>
            <h3 class="heading">Viverra iaculis</h3>
            <p>Orci nam nec dolor dapibus dignissim tortor</p>
            <footer><a class="btn inverse" href="#">Facilisis etiam</a></footer>
          </article> -->
        </li>
        <li>
        	<img src="images/demo/backgrounds/Capture3.JPG">
          <!-- <article>
            <p>Maximus</p>
            <h3 class="heading">Tincidunt viverra</h3>
            <p>Sed feugiat tellus quisque vehicula convallis</p>
            <footer><a class="btn" href="#">Efficitur convallis</a></footer>
          </article> -->
        </li>
      </ul>
    </div>
    <!-- ################################################################################################ -->
  </div>
  <!-- ################################################################################################ -->

<!-- content1 slide banner end -->
<!-- End Top Background Image Wrapper -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->

<!-- content2 start -->

<div class="wrapper row3 coloured">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div id="introblocks">
    
      <!-- ################################################################################################ -->
      <div id="gallery">
        <figure>
          <header class="heading"><b>장르별 공연 순위 출력</b></header>
          <ul class="nospace clear">
            <li class="one_quarter first"><a href="main3.jsp?mode=3"><img src="images/demo/gallery/01.png" alt=""></a></li>
            <li class="one_quarter"><a href="#"><img src="images/demo/gallery/01.png" alt=""></a></li>
            <li class="one_quarter"><a href="#"><img src="images/demo/gallery/01.png" alt=""></a></li>
            <li class="one_quarter"><a href="#"><img src="images/demo/gallery/01.png" alt=""></a></li>
            <li class="one_quarter first"><a href="#"><img src="images/demo/gallery/01.png" alt=""></a></li>
            <li class="one_quarter"><a href="#"><img src="images/demo/gallery/01.png" alt=""></a></li>
            <li class="one_quarter"><a href="#"><img src="images/demo/gallery/01.png" alt=""></a></li>
            <li class="one_quarter"><a href="#"><img src="images/demo/gallery/01.png" alt=""></a></li>
            <li class="one_quarter first"><a href="#"><img src="images/demo/gallery/01.png" alt=""></a></li>
            <li class="one_quarter"><a href="#"><img src="images/demo/gallery/01.png" alt=""></a></li>
            <li class="one_quarter"><a href="#"><img src="images/demo/gallery/01.png" alt=""></a></li>
            <li class="one_quarter"><a href="#"><img src="images/demo/gallery/01.png" alt=""></a></li>
            <li class="one_quarter first"><a href="#"><img src="images/demo/gallery/01.png" alt=""></a></li>
            <li class="one_quarter"><a href="#"><img src="images/demo/gallery/01.png" alt=""></a></li>
            <li class="one_quarter"><a href="#"><img src="images/demo/gallery/01.png" alt=""></a></li>
            <li class="one_quarter"><a href="#"><img src="images/demo/gallery/01.png" alt=""></a></li>
          </ul>
          <figcaption>Gallery Description Goes Here</figcaption>
        </figure>
      </div>
      <!-- ################################################################################################ -->
      <!-- ################################################################################################ -->
      
      <!-- ################################################################################################ -->
    </div>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>
<!-- content2 end -->

<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->




</body>
</html>