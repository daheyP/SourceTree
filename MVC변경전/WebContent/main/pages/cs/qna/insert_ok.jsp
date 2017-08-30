<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="com.sist.board.*"%>
    <jsp:useBean id="dao" class="com.sist.board.BoardDAO"/>
     <%
     	request.setCharacterEncoding("utf-8");
  
     %>
	<jsp:useBean id="vo" class="com.sist.board.BoardVO">
	  <jsp:setProperty name="vo" property="*"/>
	</jsp:useBean>
  
    <%
    	//DB => 데이터를 추가
    	dao.boardInsert(vo);
    	
    	//vo에존재하는 변수만 받을 수있다.
    	//vo에 없는 변수는 별도로 받아야 한다. => getParameter()
    	//form태그 사용시 주로 사용.
    	response.sendRedirect("../../../../main/main3.jsp?mode=15&cs=6");
    	//../main/pages/cs/qna/qna1_list.jsp?page="+strPage
    %>
     
