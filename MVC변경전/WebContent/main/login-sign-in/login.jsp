<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>로그인/회원가입</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>

      <link rel="stylesheet" href="css/style.css">

  
</head>

<body>
  <div class="logmod" >
  <div class="logmod__wrapper">
   <a href="../main3.jsp"><span class="logmod__close">Close</span></a> 
    <div class="logmod__container">
      <ul class="logmod__tabs">
        <li data-tabtar="lgm-2"><a href="#">로그인</a></li>
        <li data-tabtar="lgm-1"><a href="#">회원가입</a></li>
      </ul>
      <div class="logmod__tab-wrapper">
      <div class="logmod__tab lgm-1">
        <div class="logmod__heading">
          <span class="logmod__heading-subtitle"><strong>食또樂  YOLO가자에 오신것을 환영합니다.</strong></span>
        </div>
        <div class="logmod__form">
          <form accept-charset="utf-8" action="#" class="simform">
            <div class="sminputs">
              <div class="input full">
                <label class="string optional" for="user-name">아이디 *</label>
                <input class="string optional" maxlength="255" id="user-email" placeholder="아이디" type="email" size="50" />
              </div>
            </div>
            <div class="sminputs">
              <div class="input string optional">
                <label class="string optional" for="user-pw">비밀번호 *</label>
                <input class="string optional" maxlength="255" id="user-pw" placeholder="비밀번호" type="text" size="50" />
              </div>
              <div class="input string optional">
                <label class="string optional" for="user-pw-repeat">비밀번호 확인 *</label>
                <input class="string optional" maxlength="255" id="user-pw-repeat" placeholder="비밀번호 확인" type="text" size="50" />
              </div>
            </div>
            <div class="simform__actions">
              <a href="../main3.jsp"><input class="sumbit" name="commit" type="sumbit" value="회원가입 완료" /></a>
              <span class="simform__actions-sidetext"> <a class="special" href="#" target="_blank" role="link">로그인으로 이동</a></span>
            </div> 
          </form>
        </div> 
<!--         <div class="logmod__alter">
          <div class="logmod__alter-container">
            <a href="#" class="connect facebook">
              <div class="connect__icon">
                <i class="fa fa-facebook"></i>
              </div>
              <div class="connect__context">
                <span>Create an account with <strong>Facebook</strong></span>
              </div>
            </a>
              
            <a href="#" class="connect googleplus">
              <div class="connect__icon">
                <i class="fa fa-google-plus"></i>
              </div>
              <div class="connect__context">
                <span>Create an account with <strong>Google+</strong></span>
              </div>
            </a>
          </div>
        </div> -->
      </div>
      <div class="logmod__tab lgm-2">
        <div class="logmod__heading">
          <span class="logmod__heading-subtitle" > <strong>반갑습니다. 아이디와 비밀번호를 입력하세요.</strong></span>
        </div> 
        <div class="logmod__form">
          <form accept-charset="utf-8" action="#" class="simform">
            <div class="sminputs">
              <div class="input full">
                <label class="string optional" for="user-name">아이디 *</label>
                <input class="string optional" maxlength="255" id="user-email" placeholder="아이디" type="email" size="50" />
              </div>
            </div>
            <div class="sminputs">
              <div class="input full">
                <label class="string optional" for="user-pw">비밀번호 *</label>
                <input class="string optional" maxlength="255" id="user-pw" placeholder="비밀번호" type="password" size="50" />
              <!--   						<span class="hide-password">Show</span>
               -->
               </div>
            </div>
            <div class="simform__actions">
              <a href="../main3.jsp"><input class="sumbit" name="commit" type="sumbit" value="로그인" /></a>
              <span class="simform__actions-sidetext"><a class="special" role="link" href="#">비밀번호를 잊어버리셨나요?</a></span>
            </div> 
          </form>
        </div> 
       <!--  <div class="logmod__alter">
          <div class="logmod__alter-container">
            <a href="#" class="connect facebook">
              <div class="connect__icon">
                <i class="fa fa-facebook"></i>
              </div>
              <div class="connect__context">
                <span>Sign in with <strong>Facebook</strong></span>
              </div>
            </a>
            <a href="#" class="connect googleplus">
              <div class="connect__icon">
                <i class="fa fa-google-plus"></i>
              </div>
              <div class="connect__context">
                <span>Sign in with <strong>Google+</strong></span>
              </div>
            </a>
          </div>
        </div> -->
          </div>
      </div>
    </div>
  </div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>

</body>
</html>
