<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="com.sist.board.*"%>
    <jsp:useBean id="dao" class="com.sist.board.BoardDAO"/>
<%--     
	//MVC아래 $로 변경한 후 해제 테스트 
 <jsp:useBean id="model" class="com.sist.model.CustomerServiceModel"/>
<%
	model.QnAUpdateData(request);
%> 
--%>
    <%
    //MVC변경전
    	String strNo = request.getParameter("no");
		String strPage = request.getParameter("page");
    	//DB연동
   	BoardVO vo=dao.boardUpdateData(Integer.parseInt(strNo));
    	
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="table.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	/*
	   Selector  : 태그를 제어하는 프로그램 
	   $('td') , $('tr') , $('h3').css("color","red")
	   id => $('#id명')
	   class => $('.class명')
	   
	   Front-END => Node.js , React.js
	   Back-END=> DAO,스프링 ... JSP
	*/
	$('#name').focus();
	// document.getElementById("name");
});
</script>
</head>
<body>
  <center>
    <h3>수정하기</h3>
    <%-- 데이터를 전송  --%>
    <form method=post action="../main/pages/cs/qna/update_ok.jsp"><!-- 값받는 페이지 -->
    <table id="table_content" width=500>
     <tr>
      <th width=30% align=right>이름</th>
      <td width=70% align=left>
       <input type=text name=name size=13 id="name" value="<%=vo.getName()%>">
       <input type="hidden" name=no value="<%=strNo%>">
       <input type="hidden" name=page value="<%=strPage%>">
       
      </td>
      <%--
           C,F => td 정렬 왼쪽
           I => td 정렬 가운데
           table form태그 input데이터만 넘어간다.
       --%>
     </tr>
     <tr>
      <th width=30% align=right>제목</th>
      <td width=70% align=left>
       <input type=text name=subject size=40 value="<%=vo.getSubject()%>">
      </td>
     </tr>
     <tr>
      <th width=30% align=right>내용</th>
      <td width=70% align=left>
       <textarea rows="10" cols="45" name=content><%=vo.getContent()%></textarea>
      </td>
     </tr>
     <tr>
      <th width=30% align=right>비밀번호</th>
      <td width=70% align=left>
       <input type="password" name=pwd size=10>
      </td>
     </tr>
     <tr>
       <td colspan="2" align=center>
        <input type=submit value=글쓰기>
        <input type=button value=취소 
         onclick="javascript:history.back()"
        >
       </td>
     </tr>
    </table>
    </form>
  </center>
</body>
</html>