<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.sist.board.*"%>
<jsp:useBean id="dao" class="com.sist.board.BoardDAO"/>
<jsp:useBean id="model" class="com.sist.model.CustomerServiceModel"/>

<%
	//MVC변경전
    String curNo=request.getParameter("no");
    String curPage=request.getParameter("page");
    BoardVO vo=dao.boardContentData(Integer.parseInt(curNo));
%>

<%-- 
	//아래 <%eh $변환 필요.
	<%
	model.QnABoardDetailData(request);
	%> 
--%>
<!DOCTYPE html>

<html>
<head>
<title>자주 묻는 질문_새글쓰기</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
 var i=0;
 $(function(){ // window.onload
	 $('#delBtn').click(function(){
		 if(i==0)
		 {
			$('#del').show();
		    i=1;	 
		 }
		 else
		 {
			 $('#del').hide();
			 i=0;
		 }
	 });
 });
</script>
</head>
<body id="top">

    <div class="content three_quarter"> 
      <!-- ################################################################################################
       -->
      <div class="scrollable">
	<img src="../main/pages/cs/qna/image/hands-up.PNG" style="width:50px; height:50px;">
      
  	 &nbsp;<b style="font-size: 30px; vertical-align: center"> 1 : 1  문의 게시판</b>
  	     <br>
      <br>
    <table id="table_content" width=600>
     <tr>
       <th width=20%>번호</th>
       <td width=30% align=center><%=vo.getNo() %></td>
       <th width=20%>작성일</th>
       <td width=30% align=center><%=vo.getRegrate().toString() %></td>
     </tr>
     <tr>
       <th width=20%>이름</th>
       <td width=30% align=center><%=vo.getName() %></td>
       <th width=20%>조회수</th>
       <td width=30% align=center><%=vo.getHit() %></td>
     </tr>
     <tr>
       <th width=20%>제목</th>
       <td colspan="3" align=left><%=vo.getSubject() %></td>
     </tr>
     <tr>
       <td colspan="4" align="left" valign="top" height=200>
        <%=vo.getContent() %>
       </td>
     </tr>
    </table>
    
     <table id="table_content" width=600>
      <tr>
       <td align=right>
        <a href="main3.jsp?mode=15&cs=13&no=<%=curNo%>&page=<%=curPage%>"><img src="../main/pages/cs/qna/image/btn_reply.gif"></a>
         <a href="main3.jsp?mode=15&cs=12&no=<%=curNo%>&page=<%=curPage%>"><img src="../main/pages/cs/qna/image/btn_modify.gif"></a>
        <%--
         <a href="main3.jsp?mode=15&cs=11&no=<%=curNo%>&page=<%=curPage%>"><img src="../main/pages/cs/qna/image/btn_delete.gif"></a>
         --%>
        <a href="#" id="delBtn"><img src="../main/pages/cs/qna/image/btn_delete.gif"></a>
        
        <a href="main3.jsp?mode=15&cs=6&page=<%=curPage%>"><img src="../main/pages/cs/qna/image/btn_list.gif"></a>
       </td>
      </tr>
      <tr id="del" style="display:none">
        <td align=right>
        <form method="post" action="../main/pages/cs/qna/delete_ok.jsp">
      	  비밀번호:<input type="password" name=pwd size=10>
         <input type="hidden" name=no value="<%=vo.getNo()%>">
         <input type="hidden" name=page value="<%=curPage%>">
        <input type=submit value="삭제">
        </form>
        </td>
      </tr>
    </table>
    
     

  
      </div>
      <!-- ################################################################################################ -->
    </div>
    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
<a id="backtotop" href="#top"><i class="fa fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="../layout/scripts/jquery.min.js"></script>
<script src="../layout/scripts/jquery.backtotop.js"></script>
<script src="../layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>