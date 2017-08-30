<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" import="com.sist.board.*"%>
<%--jsp코딩엔 자바가 들어가선 안된다. --%>
<jsp:useBean id="dao" class="com.sist.board.BoardDAO"/>
<!-- 
com.sist.board.BoardDAO 
class.forName 메모리 할당. 클래스 이름넘겨주고 메모리 할당 할수 있다.
메소드 이름 몰라도 호출 가능.
어노테이션?? // 구분자??
 -->
<%
    String strNo=request.getParameter("no");
    String strPage=request.getParameter("page");
//SetProperty 회원가입같이 값이 많이 넘어올 때 나머지는 getParameter 
 	
    BoardVO vo=dao.boardContentData(
    		   Integer.parseInt(strNo));
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="table.css">
</head>
<body>
  <center>
    <img src="image/qna.jpg" width=600 height=60>
    <p>
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
        <a href="reply.jsp?no=<%=strNo%>&page=<%=strPage%>"><img src="image/btn_reply.gif"></a>
         <a href="update.jsp?no=<%=strNo%>&page=<%=strPage%>"><img src="image/btn_modify.gif"></a>
        <a href="delete.jsp?no=<%=strNo%>&page=<%=strPage%>"><img src="image/btn_delete.gif"></a>
        <a href="list.jsp?page=<%=strPage%>"><img src="image/btn_list.gif"></a>
       </td>
      </tr>
    </table>
  </center>
</body>
</html>












