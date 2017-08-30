<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="com.sist.board.*"%>
    <jsp:useBean id="dao" class="com.sist.board.BoardDAO"/>
  <%--엠프티태그 --%>
  
  <%
  
  String name=request.getParameter("name");
  String subject=request.getParameter("subject");
  String content=request.getParameter("content");
  String pwd=request.getParameter("pwd");
  String strNo=request.getParameter("no");
  String strPage=request.getParameter("page");
  
	  BoardVO vo=new BoardVO();
	  vo.setNo(Integer.parseInt(strNo));
	   vo.setName(name);
	   vo.setSubject(subject);
	   vo.setContent(content);
	   vo.setPwd(pwd);
	   
	  //DB연동
	    boolean bCheck=dao.boardUpdate(vo);
  //이동 2가지 back()-false .. list.jsp- true
if(bCheck==true){
		   response.sendRedirect("../../../../main/main3.jsp?mode=15&cs=8&no="+strNo
			         +"&page="+strPage);
 }else{
		  %>
		  <script>
		  	alert("비밀번호가 틀립니다.");
		  	history.back();
		  </script>
		  <%
	  }
	  
	  
   %>

     
