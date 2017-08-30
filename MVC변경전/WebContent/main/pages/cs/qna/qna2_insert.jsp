<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>

<html>
<head>
<title>자주 묻는 질문_새글쓰기</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="../layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">

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
     
     <form method="post" action="../main/pages/cs/qna/insert_ok.jsp">
    <table id="table_content" width=600>
    <tr>
        		<th>카테고리</th>
        		<td>
        			<select>
			   			<option>예매</option>
			   			<option>결제</option>
			   			<option>배송</option>
			   			<option>회원</option>
			   			<option>기타</option>
			   		</select>
			   	</td>
        	</tr>
     <tr>
      <th width=30% align=right>작성자</th><!-- 후에 vo값으로 id받아와야 할 듯. -->
      <td width=70% align=left>
       <input type=text name=name size=13 id="name">
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
       <td colspan="2" align="center" >
        <input type=submit value=글쓰기 style="display: inline;">
        <input type=button value=취소  style="display: inline;"
         onclick="javascript:history.back()"
        >
       </td>
     </tr>
    </table>
   </form>

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