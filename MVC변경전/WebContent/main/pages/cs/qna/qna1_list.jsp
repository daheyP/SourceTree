<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*"%>
<%@ page import="com.sist.board.*,java.text.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:useBean id="dao" class="com.sist.board.BoardDAO"/>
<%--  <jsp:useBean id="model" class="com.sist.model.CustomerServiceModel"/>
<%
	model.QnABoardListData(request);
%>
아래 for문 해결한 후 해제해야함.
 --%>
 <%
 //MVC변경전 소스
   String strPage=request.getParameter("page");
   if(strPage==null)
	   strPage="1";
   int curpage=Integer.parseInt(strPage);
   List<BoardVO> list=dao.boardListData(curpage);
   int totalpage=dao.boardTotalPage();
   int count=dao.boardRowCount();
   count=count-((curpage*10)-10);
   request.setAttribute("totalpage", totalpage);
   request.setAttribute("curpage", curpage);
%>

<!DOCTYPE html>

<html>
<head>
<title>Brickary | Pages | Sidebar Left</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>

<script type="text/javascript">
$(function(){ //window.onload=function(){}
	$('.dataTr').click(function(){
		//onclick대신  click
		var no=$(this).attr("no");//본인이 클릭한 줄을 this라고 한다. attr("속성값")
		var page=$(this).attr("page");
		//alert("no="+no+",page="+page);
		location.href="main3.jsp?mode=15&cs=8&no="+no+"&page="+page;
		//request가 사라지면서 페이지를 기억하지 못하기 때문에 넘겨준다.
		
	});
});
</script>
</head>
<body id="top">
	
  	<img src="../main/pages/cs/qna/image/hands-up.PNG" style="width:50px; height:50px;">
      
  	 &nbsp;<b style="font-size: 30px; vertical-align: center"> 1 : 1  문의 게시판</b>
  	
      <br>
      <br>
      <div class="scrollable">
	    <p>
	    <table id="table_content" width=600>
	    	<tr>
	    		<td align="left">
	    		<a href="main3.jsp?mode=15&cs=7">
	    			<img src="../main/pages/cs/qna/image/pencil.png" style="width:30px; height:30px;">
	    		</a>
	    		</td>
	    	</tr>
	    </table>
        <table id="table_content" width=600>
		     <tr>
		     
        		
        	
          	   <th width=10%>번호</th>
		       <th width=45%>제목</th>
		       <th width=15%>이름</th>
		       <th width=20%>작성일</th>
		       <th width=10%>조회수</th>
		       	<!--<td colspan="1" align="left" style="width: 20px;height: 20px"> 
					 카테고리
			    	<select>
			   			<option>예매</option>
			   			<option>결제</option>
			   			<option>배송</option>
			   			<option>회원</option>
			   			<option>기타</option>
			   		</select>
			   	 
				</td>-->
		     </tr>
        	
    <%
           
        String msg="관리자가 삭제한 게시물입니다";
        String s="";
      
        for(BoardVO vo:list)
        { 
        	if(vo.getSubject().equals(msg))
        		s=""; //삭제시 링크가 걸리지 않도록한다.
        	else
        		s="dataTr";
        	
        %>
        
<%-- //우선순위   
      <c:set var="s" value=""></c:set>
        <c:forEach var="vo" items="${bList}">
         <c:if test=${vo.getSubject() == msg}>
        	<c:set var="s" value=""></c:set>
        
         </c:if>
         
         <c:otherwise>
        	 <c:set var="s" value="dataTr"></c:set>
        
        	${s="dataTr"}
         
         </c:otherwise>
        </c:forEach>
       --%>  
<%-- 	<c:set var="msg" value="${msg }"/>
	<c:set var="link" value=""/>
        <c:forEach var="vo" items="${bList }">
        	
        	<c:when test="${vo.getSubject()}==msg">
        		<c:set var="link" values=""/>		
        	</c:when>
        	<c:otherwise>
        		<c:set var="link" values="dataTr"/>		
        	</c:otherwise>
        </c:forEach>
       	  
  class="${link }"
  
       	   --%> 
  
          <tr class="<%=s %>" no="<%=vo.getNo() %>" page="<%=curpage%>" 
          style="cursor: pointer; ">
           <td width=10% align=center><%=count--%></td>
           <td width=45% align=left>
           <%
       			if(vo.getGroup_tap()>0){
       				for(int i=0;i<vo.getGroup_tap();i++){
       					out.println("&nbsp&nbsp");
       					//for문갯수만큼 공백
       				}
       				%>
       					<img src="../main/pages/cs/qna/image/icon_reply.gif">
       				<%
       			}
       		%>
           <%=vo.getSubject() %>
           <%
           	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
           String today=sdf.format(new Date());
           String dbday=sdf.format(vo.getRegrate());
           if(today.equals(dbday)){
        	   %>
        	  <sup> <img src="../main/pages/cs/qna/image/icon_new (2).gif"> </sup> <!-- 위첨자 약간 위로 올라가게 함. -->
        	   <%
           }
           %>
           </td>
       		
           <td width=15% align=center><%=vo.getName() %></td>
           <td width=20% align=center><%=vo.getRegrate().toString() %></td>
           <td width=10% align=center><%=vo.getHit() %></td>
           
          </tr>
     <%
        }
     %>
        </table>
      <table id="table_content" width=600>
    	<tr>
    		<td align="right">
    		<!-- 	
    		<center>
    		<img src="../main/pages/cs/qna/image/begin.gif">
    			<img src="../main/pages/cs/qna/image/prev.gif">   
    			<img src="../main/pages/cs/qna/image/next.gif">
    		<img src="../main/pages/cs/qna/image/end.gif">
    		</center>
    		 -->
    		 <a href="main3.jsp?mode=15&cs=6&page=${curpage>1?curpage-1:curpage }">이전<img src="../main/pages/cs/qna/image/begin.gif"></a>&nbsp;
             <a href="main3.jsp?mode=15&cs=6&page=${curpage<totalpage?curpage+1:curpage }"><img src="../main/pages/cs/qna/image/end.gif">다음</a>&nbsp;&nbsp;
             ${curpage } page / ${totalpage } pages
            
    		<!-- &nbsp;&nbsp; -->
    		
    		<%-- 
    		<%= curpage %> page/ <%= totalpage %> pages
    		 --%>
    		</td>
    	</tr>
    </table>

      </div>
    
   <div class="clear"></div>

<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="../layout/scripts/jquery.min.js"></script>
<script src="../layout/scripts/jquery.backtotop.js"></script>
<script src="../layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>