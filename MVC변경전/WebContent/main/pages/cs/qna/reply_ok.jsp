<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="com.sist.board.*"%>
<jsp:useBean id="dao" class="com.sist.board.BoardDAO"/>
<%-- BoardDAO dao=new BoardDAO()
     useBean => 메모리 할당(객체생성)
 --%>

<%-- 사용자 요청값 받기  --%>
<%
   request.setCharacterEncoding("utf-8");
  %>
<jsp:useBean id="vo" class="com.sist.board.BoardVO">
  <jsp:setProperty name="vo" property="*"/>
</jsp:useBean>
<%
   // DB => 데이터를 추가 
   String pno=request.getParameter("pno");
   String strPage=request.getParameter("page");
   dao.boardReply(Integer.parseInt(pno),vo);
   // vo에 존재하는 변수만 받을 수 있다 
   // vo에 없는 변수는 별도로 받아야 한다 => getParameter()
   // form 태그 사용시 주로 사용 
   response.sendRedirect("../../../../main/main3.jsp?mode=15&cs=6&page="+strPage);

   //페이지 변수 추가해봄 확인 필요.
%>