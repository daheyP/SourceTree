<%@page import="com.sist.change.csChange"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.change.*"%>
 <jsp:useBean id="model" class="com.sist.change.csChange"/>
 
<%--  <%
    
    String cs=request.getParameter("cs");
    if(cs==null) cs="0";
    int m = Integer.parseInt(cs);
   // String jsp_cs=csChange.change_cs(m);
    //MVC변경전 소스
%> --%>
<%
	model.csMainChange(request);
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
	<br>
	<br>
	<br>
	<br>
	<br>
	
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
    <div class="sidebar one_quarter first"> 
      <!-- ################################################################################################ -->
      <h6>Customer Service</h6>
      <nav class="sdb_holder">
        <ul>
          <li><a href="main3.jsp?mode=15&cs=0">공지사항</a>
          	<ul>
              <li><a href="main3.jsp?mode=15&cs=1">티켓 공지사항</a></li>
              <li><a href="main3.jsp?mode=15&cs=2">시스템 공지사항</a></li>
            </ul>
          </li>
          <li><a href="main3.jsp?mode=15&cs=3">자주 묻는 질문 FAQ</a>
          
          </li>
          <li><a href="main3.jsp?mode=15&cs=6">1:1 문의</a>
          	<ul>
           
           </ul>
          
          </li>          
        </ul>
      </nav>
    </div>
   <div class="content three_quarter"> 

 
	<jsp:include page="${cs_main}"></jsp:include>
     
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