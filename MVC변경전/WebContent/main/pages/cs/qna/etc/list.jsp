<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.util.*"%>
<%@ page import="com.sist.board.*,java.text.*"%>
<jsp:useBean id="dao" class="com.sist.board.BoardDAO"/>
 <!-- 닫기를 반드시 하기. 따옴표도 반드시 붙이기.  안그러면 error-->
    
<%--
     BoardDAO dao=new BoardDAO();
     XML은 반드시 <> 열고닫는 태그 일치.
	     여는태그: <a>
	     닫는태그: </a>
	     단독태그: <a/>
	 XML문법 열고닫음이 명확해야 에러가 나지 않는다.    
	     속성 =========> ML: 태그(Element), 속성(Attribute)
	  <img src=""> : 닫아도 되고 안닫아도 된다.
	  <img src="aaa.jsp">:속성
	  => attr("src")
	  <a href="">aaa</a>
	  => text()
	  => Jsoup, JQuery => DOM Script // 태그를 제어하는 것.
	  저장 매체 3가지 : RDBMS(오라클 대표) , 메모리(금방 지워짐. 변수 ram 휘발성), 파일(영구저장, 파일이 많을수록 연관관계 잡기가 어렵다.)
	  rom 운영체제 영구 저장
	  html은 src="aaaa"  = src=aaaa 값이 붙어있으면 ""안붙여도 상관없다.
	  xml은 무조건 "", 열고닫기 명확
	  
	  <a class="aa bb cc"> class명 3개 씀. .aa .bb .cc선택해야함.
	  table태그 공백이 나오는 순가 class명을 여러개 쓴거다 구별해 주어야함. 
 --%>
<%
   String strPage=request.getParameter("page");
   if(strPage==null)
	   strPage="1";
   int curpage=Integer.parseInt(strPage);
   List<BoardVO> list=dao.boardListData(curpage);
   int totalpage=dao.boardTotalPage();
   int count=dao.boardRowCount();
   count=count-((curpage*10)-10);
   
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="table.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>

<script type="text/javascript">
$(function(){ //window.onload=function(){}
	$('.dataTr').click(function(){
		//onclick대신  click
		var no=$(this).attr("no");//본인이 클릭한 줄을 this라고 한다. attr("속성값")
		var page=$(this).attr("page");
		//alert("no="+no+",page="+page);
		location.href="content.jsp?no="+no+"&page="+page;
		//request가 사라지면서 페이지를 기억하지 못하기 때문에 넘겨준다.
		
	});
});
</script>
</head>
<body>
  <center>
    <img src="image/qna.jpg" width=600 height=60>
    <p>
    <table id="table_content" width=600>
    	<tr>
    		<td align="left">
    		<a href="insert.jsp">
    			<img src="image/btn_write.gif"></a>
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
          <tr class="<%=s %>" no="<%=vo.getNo() %>" page="<%=curpage%>">
           <td width=10% align=center><%=count--%></td>
           <td width=45% align=left>
           <%
       			if(vo.getGroup_tap()>0){
       				for(int i=0;i<vo.getGroup_tap();i++){
       					out.println("&nbsp&nbsp");
       					//for문갯수만큼 공백
       				}
       				%>
       					<img src="image/icon_reply.gif">
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
        	  <sup> <img src="image/icon_new (2).gif"> </sup> <!-- 위첨자 약간 위로 올라가게 함. -->
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
    		<center>
    		<img src="image/begin.gif">
    			<img src="image/prev.gif">  [1] [2] [3] [4] [5]  
    			<img src="image/next.gif">
    		<img src="image/end.gif">
    		</center>
    		<!-- &nbsp;&nbsp; -->
    		
    			<%=curpage %> page/ <%=totalpage %>pages
    			
    		</td>
    	</tr>
    </table>
  </center>
</body>
</html>