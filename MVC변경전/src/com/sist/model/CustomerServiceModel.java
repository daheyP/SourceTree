package com.sist.model;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import com.sist.board.BoardDAO;
import com.sist.board.BoardVO;

public class CustomerServiceModel {

	
			//������ ó��ȭ�� ���ø� ���� ���� ���� �޼ҵ�
		 public void NoticeBoardListData(HttpServletRequest request) {
		  
		  request.setAttribute("cs_main", "notice/notice1_list.jsp");
		 
		 }
		
		  public void QnABoardListData(HttpServletRequest request){
			  
			  String page=request.getParameter("page");
			  if(page==null)
				  page="1";
			  int strpage=Integer.parseInt(page);
			  BoardDAO dao = new BoardDAO();
			  List<BoardVO> bList=dao.boardListData(strpage);
			  int totalpage=dao.boardTotalPage();
			  int count=dao.boardRowCount();
			   count=count-((strpage*10)-10);
			  String msg="관리자가 삭제한 게시물입니다";
			  request.setAttribute("count", count);
			  request.setAttribute("msg", msg);
			  request.setAttribute("bList", bList);
			  request.setAttribute("strpage", strpage);
			  request.setAttribute("totalpage", totalpage);
			  request.setAttribute("cs_main", "qna/qna1_list.jsp");
			  
			}
		 
		  
		  public void QnABoardDetailData(HttpServletRequest request){
			  
			  String curNo=request.getParameter("no");
			  BoardDAO dao=new BoardDAO();
			  BoardVO vo=dao.boardContentData(Integer.parseInt(curNo));
			
			  String page=request.getParameter("page");
			 
			 int curPage=Integer.parseInt(page);
			 request.setAttribute("curPage", curPage);
			 request.setAttribute("curNo",curNo );
			 request.setAttribute("vo", vo);
			 
			 request.setAttribute("cs_main", "qna/qna3_content.jsp");
			  
			  
		
		  }
		  
		  public void QnAInsertData(HttpServletRequest request) {
			  
			  request.setAttribute("cs_main", "qna/qna2_insert.jsp");
				
			 }
		  public void QnAInsert_Ok(HttpServletRequest request) {
			  
			  
		  }
		  
		  public void QnADeleteData(HttpServletRequest request) {
			  String curNo=request.getParameter("no");
			  
			  String curPage=request.getParameter("page");
			 
			 /* int curPage=Integer.parseInt(page);
			*/
			 request.setAttribute("curPage", curPage);
			 request.setAttribute("curNo",curNo );
			 
			 request.setAttribute("cs_main", "qna/delete.jsp");
				
			 }
		  public void QnADelete_Ok(HttpServletRequest request) {
			  
			  
		  }
		  
		  public void QnAUpdateData(HttpServletRequest request) {
			  
			 String strNo = request.getParameter("no");
			 String strPage = request.getParameter("page");
			 BoardDAO dao=new BoardDAO();
			 BoardVO vo=dao.boardUpdateData(Integer.parseInt(strNo));
		     request.setAttribute("strNo", strNo);
		     request.setAttribute("strPage", strPage);
		     request.setAttribute("vo", vo);
		     
			 request.setAttribute("cs_main", "qna/update.jsp");
				
			 }
		  
		  public void QnAUpdate_Ok(HttpServletRequest request) {
			  
			  
		  }
		  
		  public void QnAReplytData(HttpServletRequest request) {
			  
			  String strNo = request.getParameter("no");
			  String strPage = request.getParameter("page");
				
			  request.setAttribute("strNo", strNo);
			  request.setAttribute("strPage", strPage);
			  
			  request.setAttribute("cs_main", "qna/reply.jsp");
				
			 }
		  
		  public void QnAReply_Ok(HttpServletRequest request) {
			  
			  
		  }


}
