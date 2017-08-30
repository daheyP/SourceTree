<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.change.myChange"%>
 
<jsp:useBean id="model" class="com.sist.change.myChange"/>
    <%
    	model.myMainChange(request);
    %>
<!DOCTYPE html>
<html>
<head>
<title>Brickary | Pages | Sidebar Left</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">

<div class="wrapper row3">
	
  <main class="hoc container clear"> 
  
  <div class="sidebar one_quarter first"> 
     
     <br>
      <br>
      <br>
      <br>
      
      <h6>MY PAGE</h6>
      <nav class="sdb_holder">
        <ul>
          <li><a href="main3.jsp?mode=14&mp=0">관심 리스트</a></li>
          <li><a href="main3.jsp?mode=14&mp=2">예매 리스트</a></li>
          <li><a href="main3.jsp?mode=14&mp=4">나의 문의 내역</a></li>
          <li><a href="main3.jsp?mode=14&mp=6">회원정보 수정</a></li>          
          <li><a href="main3.jsp?mode=14&mp=7">회원탈퇴</a></li>
          
        </ul>
      </nav>
	</div>
 	<div class="content three_quarter"> 
    
    <%-- <%
     	pageContext.include("sidebar-left2.jsp"); //cs_jsp 로 만들어야할 듯..jspchange
     %> --%>
  	<jsp:include page="${my_main}"></jsp:include>
    </div>
    
    <div class="clear"></div>
  </main>
</div>

<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="../layout/scripts/jquery.min.js"></script>
<script src="../layout/scripts/jquery.backtotop.js"></script>
<script src="../layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>