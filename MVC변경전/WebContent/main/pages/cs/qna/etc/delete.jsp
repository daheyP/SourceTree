<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%--
	//MVC아래 $로 변경한 후 해제 테스트 
 <jsp:useBean id="model" class="com.sist.model.CustomerServiceModel"/>
<%
	model.QnADeleteData(request);
%>   
 --%> 
   <%
    	//값 두개 받을 것.
    	//MVC변경전
    	String curNo=request.getParameter("no");
    	String curPage=request.getParameter("page");
		
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="table.css">

</head>
<body>
	<center>
		<h3>삭제하기</h3>
		<form method="post" action="../main/pages/cs/qna/delete_ok.jsp">
		<table id="table_content" width=260>
			<tr>
				<th width=35%>비밀번호</th>
				<td width=65% align="left">
					<input type="password" name=pwd size=20>
					 <input type="hidden" name=no value="<%=curNo%>">
				       <!-- 시퀀스라 아직 번호가 결정되지 않음. -->
				       <input type="hidden" name=page value="<%=curPage%>">
								
				</td>
			</tr>
			<tr>
		       <td colspan="2" align=center>
		        <input type=submit value=삭제>
		        <input type=button value=취소 
		        onclick="javascript:history.back()">
		       </td>
		    </tr>
		</table>
		</form>
	</center>
</body>
</html>