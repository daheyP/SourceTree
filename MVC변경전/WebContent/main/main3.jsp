<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.change.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <jsp:useBean id="model" class="com.sist.change.jspChange"/>
    
<%
    model.HeaderChange(request);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0
1 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>YOLO가자</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">

</head>
<body id="top">
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
  
	<%
    pageContext.include("header.jsp"); 
    %>
	    
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->
  <!-- ################################################################################################ -->

<!-- content1 slide banner end -->
<%--
    pageContext.include("content.jsp"); 

--%>

	 <jsp:include page="${main_jsp}"></jsp:include>
        
	
<!-- content4 end -->

<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- footer start -->
	<%
    pageContext.include("footer.jsp"); 
    %>
<!-- footer end -->

<!-- ################################################################################################ -->
<!-- ################################################################################################ -->
<!-- ################################################################################################ -->

<!-- to top button ^ -->

<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="layout/scripts/jquery.min.js"></script>
<script src="layout/scripts/jquery.backtotop.js"></script>
<script src="layout/scripts/jquery.mobilemenu.js"></script>
<script src="layout/scripts/jquery.flexslider-min.js"></script>
</body>
</html>