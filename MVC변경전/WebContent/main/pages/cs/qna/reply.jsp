<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
    
<%--
 	//MVC아래 $로 변경한 후 해제 테스트 
 	<jsp:useBean id="model" class="com.sist.model.CustomerServiceModel"/>
	<%
	model.QnAReplytData(request);
	%> 
 --%>
 
    <%
    	//값 두개 받을 것.
    	//MVC변경전
    	String strNo=request.getParameter("no");
    	String strPage=request.getParameter("page");
	
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
    
    <p>
    <form method="post" action="../main/pages/cs/qna/reply_ok.jsp">
    <table id="table_content" width=600>
     <tr>
      <th width=30% align=right>이름</th>
      <td width=70% align=left>
      
       <input type=text name=name size=13 id="name">
       <input type="hidden" name=pno value="<%=strNo%>">
       <!-- 시퀀스라 아직 번호가 결정되지 않음. -->
       <input type="hidden" name=page value="<%=strPage%>">

      </td>
      
     </tr>
     <tr>
      <th width=30% align=right>제목</th>
      <td width=70% align=left>
       <input type=text name=subject size=40>
      </td>
     </tr>
     <tr>
      <th width=30% align=right>내용</th>
      <td width=70% align=left>
       <textarea rows="10" cols="45" name=content></textarea>
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
        <input type=submit value=답글>
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



