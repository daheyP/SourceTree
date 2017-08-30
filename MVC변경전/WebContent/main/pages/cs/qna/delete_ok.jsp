<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="com.sist.board.*"%>
<jsp:useBean id="dao" class="com.sist.board.BoardDAO"/>
  <%--엠프티태그 --%>
<%--   
  <%
	  String curNo=request.getParameter("no");
	  String curPage=request.getParameter("page");
	  String pwd=request.getParameter("pwd");
	  
	  //DB연동
	  boolean bCheck=dao.boardDelete(Integer.parseInt(curNo), pwd);
	  //이동 2가지 back()-false .. list.jsp- true
	  if(bCheck==true){
		  response.sendRedirect("../../../../main/main3.jsp?mode=15&cs=6&page="+curPage);
	  }else{			//../main/pages/cs/qna/qna1_list.jsp?page="+strPage
		  %>
		  <script>
		  	alert("비밀번호가 틀립니다.");
		  	history.back();
		  </script>
		  <%
	  }
	  
	  
   %> --%>
<%
	//요청값받기 => request
		String strNo=request.getParameter("no"); //db에 넘겨야함
		String strPage=request.getParameter("page"); //이동용
		String pwd=request.getParameter("pwd");//db에 넘겨야함.
		
	//데이터베이스 연동 => DAO연결
	/*	위 의 useBean이 대체 
	BoardDAO dao=new BoardDAO();
	 */
		boolean bCheck=dao.boardDelete(Integer.parseInt(strNo), pwd);
	
			
	//화면이동 => response
	if(bCheck==true){
	//list이동		
	%>
	<script type="text/javascript">
		alert("게시물을 삭제하시겠습니까?");
		
	</script>
	<%
	  response.sendRedirect("../../../../main/main3.jsp?mode=15&cs=6&page="+strPage);
	  
	}else{
	//content이동
	%>
	<script type="text/javascript">
	alert("비밀번호가 틀립니다.");
	history.back();
	
	</script>
	<%
	}
%>
     
