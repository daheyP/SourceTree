package com.sist.board;
/*
 *   1) inline View : 페이지 나누기 ==> 고급 SQL
 *   2) SQL조립 => 순서 
 *   3) 파생 => 댓글 (Ajax)  
 */
import java.util.*;
import java.util.Date;

import com.sist.board.*;
import com.sun.org.apache.regexp.internal.recompile;

import java.sql.*;
public class BoardDAO {
  private Connection conn;
  private PreparedStatement ps;
  private final String URL="jdbc:oracle:thin:@localhost:1521:ORCL";
  public BoardDAO()
  {
	  try
	  {
		  Class.forName("oracle.jdbc.driver.OracleDriver");
	  }catch(Exception ex)
	  {
		  System.out.println(ex.getMessage());
	  }
  }
  public void getConnection()
  {
	  try
	  {
		  conn=DriverManager.getConnection(URL,"scott","tiger");
	  }catch(Exception ex)
	  {
		  System.out.println(ex.getMessage());
	  }
  }
  public void disConnection()
  {
	  try
	  {
		  if(ps!=null) ps.close();
		  if(conn!=null) conn.close();
	  }catch(Exception ex)
	  {
		  System.out.println(ex.getMessage());
	  }
  }
  // 기능 
//&오라클에서 스캐너로 이해됨. and 로 할 것
  // 1. 목록  & and  & ^ ? &name => ubuntu gnome
  public List<BoardVO> boardListData(int page)
  {
	  List<BoardVO> list=new ArrayList<BoardVO>();
	  try
	  {
		  getConnection();
          int rowSize=10;
          int start=(rowSize*page)-(rowSize-1);
          // 1 11 21 31.....
          int end=rowSize*page;
	//화면출력 REGRATE
          String sql="SELECT no,subject,name,regrate,hit,group_tap,num "
        		    +"FROM (SELECT no,subject,name,regrate,hit,group_tap,rownum as num "
        		    +"FROM (SELECT no,subject,name,regrate,hit,group_tap "
        		    +"FROM replyBoard ORDER BY group_id DESC,group_step ASC)) "
        		    +"WHERE num BETWEEN "+start+" AND "+end;
          ps=conn.prepareStatement(sql);
          ResultSet rs=ps.executeQuery();
          while(rs.next())
          {
        	  BoardVO vo=new BoardVO();
        	  vo.setNo(rs.getInt(1));
        	  vo.setSubject(rs.getString(2));
        	  vo.setName(rs.getString(3));
        	  vo.setRegrate(rs.getDate(4));
        	  vo.setHit(rs.getInt(5));
        	  vo.setGroup_tap(rs.getInt(6));
        	  list.add(vo);
          }
          rs.close();
	  }catch(Exception ex)
	  {
		  System.out.println("boardListData"+ex.getMessage());
	  }
	  finally
	  {
		  disConnection();
	  }
	  return list;
  }
  //데이터추가
  public void boardInsert(BoardVO vo) {
	  try {
		  //DB연결
		  getConnection();
		  //SQL문장 전송
		  String sql="INSERT INTO replyBoard(no,name,subject,content,pwd,group_id) "
				    +"VALUES(rb_no_seq.nextval,?,?,?,?,(SELECT NVL(MAX(group_id)+1,1) FROM replyBoard))";
		  //나머지는 디폴트값 적용.
		  
		  ps=conn.prepareStatement(sql);
			 //물음표에 값채우기
		  //사용자 요펑데이터를 채워서  insert를 처리
		  ps.setString(1, vo.getName());
		  ps.setString(2, vo.getSubject());
		  ps.setString(3, vo.getContent());
		  ps.setString(4, vo.getPwd());
		  ps.executeUpdate();
		  //=>commit()	  
		  
	  }catch(Exception ex)
	  {
		  System.out.println("boardInsert"+ex.getMessage());
	  }
	  finally
	  {
		  disConnection();
	  }
  }
  // 2. 내용기능
  public BoardVO boardContentData(int no) {
	  
	  BoardVO vo = new BoardVO();
	  
	  try {
		  getConnection();
		  String sql="UPDATE replyBoard SET hit=hit+0.5 WHERE no=?";
		  ps=conn.prepareStatement(sql);
		  ps.setInt(1, no);
		  ps.executeUpdate();
		  ps.close();
		  
		  sql="SELECT no,name,subject,content,regrate,hit FROM replyBoard WHERE no=?";
		  ps=conn.prepareStatement(sql);
		  ps.setInt(1, no);
		  ResultSet rs=ps.executeQuery();
		  rs.next();
		  vo.setNo(rs.getInt(1));
		  vo.setName(rs.getString(2));
		  vo.setSubject(rs.getString(3));
		  vo.setContent(rs.getString(4));
		  vo.setRegrate(rs.getDate(5));
		  vo.setHit(rs.getInt(6));
		  rs.close();
		  
	  }catch(Exception ex)
	  {
		  System.out.println("boardContentData"+ex.getMessage());
	  }
	  finally
	  {
		  disConnection();
	  }
	  return vo;
  }
  // 3. 찾기
  // 4. 수정
  public BoardVO boardUpdateData(int no)
  {
	  // ROW,튜플,레코드 ==> ~VO
	  BoardVO vo=new BoardVO();
	  try
	  {
		  // 연결
		  getConnection();
		  // SQL
		 
		  String sql="SELECT no,name,subject,content,regrate,hit "
			 +"FROM replyboard "
			 +"WHERE no=?";
		  ps=conn.prepareStatement(sql);
		  ps.setInt(1, no);
		  ResultSet rs=ps.executeQuery();
		  rs.next();
		  vo.setNo(rs.getInt(1));
		  vo.setName(rs.getString(2));
		  vo.setSubject(rs.getString(3));
		  vo.setContent(rs.getString(4));
		  vo.setRegrate(rs.getDate(5));
		  vo.setHit(rs.getInt(6));
		  
		  rs.close();
		  
	  }catch(Exception ex)
	  {
		  System.out.println("boardUpdateData"+ex.getMessage());
	  }
	  finally
	  {
		  // 해제
		  disConnection();
	  }
	  return vo;
 
  }
  public boolean boardUpdate(BoardVO vo)
  {
	  boolean bCheck=false;
	  try
	  {
		  // 10,00
		  getConnection();
		  String sql="SELECT pwd FROM replyBoard "
				    +"WHERE no=?";
		  ps=conn.prepareStatement(sql);
		  ps.setInt(1, vo.getNo());
		  ResultSet rs=ps.executeQuery();
		  rs.next();
		  String db_pwd=rs.getString(1);
		  rs.close();
		  if(db_pwd.equals(vo.getPwd()))
		  {
			  bCheck=true;
			  // 수정 
			  sql="UPDATE replyBoard SET "
			     +"name=?,subject=?,content=? "
				 +"WHERE no=?";
			  ps=conn.prepareStatement(sql);
			  ps.setString(1, vo.getName());
			  ps.setString(2, vo.getSubject());
			  ps.setString(3, vo.getContent());
			  ps.setInt(4, vo.getNo());
			  ps.executeUpdate();
		  }
		  else
		  {
			 bCheck=false; 
		  }
	  }catch(Exception ex)
	  {
		  ex.printStackTrace();//몇번째줄에 에러가 났는지 알려준다. 디버깅.
		  System.out.println("boardUpdate"+ex.getMessage());
	  }
	  finally
	  {
		  disConnection();
	  }
	  return bCheck;
  }
  // 5. 삭제
  	// 9개의 쿼리문장 필요.
  public boolean boardDelete(int no,String pwd)
  {
	  boolean bCheck=false;
	  try
	  {
		  getConnection();
		  String sql="SELECT pwd FROM replyBoard "
				    +"WHERE no=?";
		  ps=conn.prepareStatement(sql);
		  ps.setInt(1, no);
		  ResultSet rs=ps.executeQuery();
		  rs.next();
		  String db_pwd=rs.getString(1);
		  rs.close();
		  if(db_pwd.equals(pwd))
		  {
			  bCheck=true;
			  sql="SELECT root,depth FROM replyBoard "
				 +"WHERE no=?";
			  ps=conn.prepareStatement(sql);
			  ps.setInt(1, no);
			  rs=ps.executeQuery();
			  rs.next();
			  int root=rs.getInt(1);
			  int depth=rs.getInt(2);
			  rs.close();
			  if(depth==0)
			  {
				  // 삭제
				  sql="DELETE FROM replyBoard "
					 +"WHERE no=?";
				  ps=conn.prepareStatement(sql);
				  ps.setInt(1, no);
				  ps.executeUpdate();
				//삭제완료
				  
				  //delete 시에만 수행되도록 위치 조정.....
				if(root!=0)
				  {
					  sql="UPDATE replyBoard SET "
					     +"depth=depth-1 "
					     +"WHERE no=?";
					  ps=conn.prepareStatement(sql);
					  ps.setInt(1, root);//root갑소시켜서 저장
					  ps.executeUpdate();
					  
					  /*  
					  
					  //자동 삭제 //관리자가 삭제하는 것이 아니라.
					  sql="SELECT depth FROM replyBoard WHERE no=?";
					  String msg="관리자가 삭제한 게시물입니다";
					  ps=conn.prepareStatement(sql);
					  ps.setInt(1, root);
					  rs =ps.executeQuery();
					  rs.next();
					  int root_depth=rs.getInt(1);
					  rs.close();
					  if(root_depth==0) {
						  sql="DELETE FROM replyBoard WHERE no=? AND subject=?";
						  ps=conn.prepareStatement(sql);
						  ps.setInt(1, root);
						  ps.setString(2, msg);
						  ps.executeUpdate();
					  }
				  }*/
			  }
				  
			  }
			  else
			  {
				// 수정 
				  String msg="관리자가 삭제한 게시물입니다";
				//ps는 한번에 하나만 보낼수있다 sql여러문장 쓸수 없다.
				  
				  sql="UPDATE replyBoard SET "
				     +"subject=?,content=? "
					 +"WHERE no=?";
				  ps=conn.prepareStatement(sql);
				  ps.setString(1, msg);
				  ps.setString(2, msg);
				  ps.setInt(3, no);
				  ps.executeUpdate();
			  }
			  
			  /////이곳에 원래 위치함....
		  }  
	  }catch(Exception ex)
	  {
		  System.out.println(ex.getMessage());
	  }
	  finally
	  {
		  disConnection();
	  }
	  return bCheck;
  }
  // 6. 답변 
  public void boardReply(int pno, BoardVO vo) {
	  try {
		  getConnection();
		  //conn.setAutoCommit(false);
		  //conn.commit();
		  /*
		   		private int no; => 시퀀스 사용 seq
				private String name;
				private String subject;
				private String content;
				private String pwd;
				======================> 사용자 입력
				private Date regrate;
				======================> SYSDATE
				private int hit;
				======================> 0 초기화
				private int group_id; ★
				private int group_step; ★
				private int group_tap; ★
				private int root; ★
				=======================> 클릭한 게시물에서 받는다.
				private int depth; // 아직 게시물이 아니기에  0으로 간다.
		   */
		  //상위 게시물의 group_id,step,tab
		  String sql="SELECT group_id,group_step,group_tap FROM replyBoard WHERE no=?";
		  ps=conn.prepareStatement(sql);
		  ps.setInt(1, pno);
		  ResultSet rs=ps.executeQuery();
		  rs.next();
		  int gi=rs.getInt(1);
		  int gs=rs.getInt(2);
		  int gt=rs.getInt(3);
		  
		  rs.close();
		  /*           group_id group_step group_tab depth
		   *   AAAAA      100       0          0       4
		   *    =>JJJJJ                                0
		   *    =>PPPPP   100       1          1       0
		   *    =>KKKKK   100       2          1       0
		   *    =>BBBBB   100       3          1       3
		   *     =>UUUUU  100       4          2       0
		   *     =>OOOOO  100       5          2       0
		   *     =>CCCCC  100       6          2       1
		   *      =>DDDDD 100       7          1       0
		   *       
		   *   
		   *     
		   *   DDDDD
		   *              101       0          0
		   */
		  sql="UPDATE replyBoard SET group_step=group_step+1 WHERE group_id=? and group_step>?";
		  ps=conn.prepareStatement(sql);
		  ps.setInt(1, gi);
		  ps.setInt(2, gs);
		  ps.executeQuery();
		  ps.close();
		  
		  sql="INSERT INTO replyBoard(no,name,subject,content,pwd,group_id,group_step,group_tap,root) "
				    +"VALUES(rb_no_seq.nextval,?,?,?,?,?,?,?,?)";
		  //나머지는 디폴트값 적용.
		  
		  ps=conn.prepareStatement(sql);
			 //물음표에 값채우기
		  //사용자 요펑데이터를 채워서  insert를 처리
		  ps.setString(1, vo.getName());
		  ps.setString(2, vo.getSubject());
		  ps.setString(3, vo.getContent());
		  ps.setString(4, vo.getPwd());
		  ps.setInt(5, gi);
		  ps.setInt(6, gs+1);//
		  ps.setInt(7, gt+1);//칸간격
		  ps.setInt(8, pno);//루트
		  
		  ps.executeUpdate();
		  //=>commit()	  
		  ps.close();
		  
		  sql="UPDATE replyBoard SET depth=depth+1 WHERE no=?";
		  ps=conn.prepareStatement(sql);
		  ps.setInt(1, pno);
		  ps.executeUpdate();
		  
		  
		  
	}catch(Exception ex)
	  {
		  System.out.println("boardReply"+ex.getMessage());
	  }
	  finally
	  {
		  disConnection();
	  }
  }
  // 7. 총페이지
  public int boardTotalPage() {
	  int total=0;
	  try {
		  getConnection();
		  String sql="SELECT CEIL(COUNT(*)/10) FROM replyBoard";
		  ps=conn.prepareStatement(sql);
		  ResultSet rs=ps.executeQuery();
		  rs.next();
		  total=rs.getInt(1);
		  rs.close();
		  
	  }catch(Exception ex)
	  {
		  System.out.println("boarTotalPage"+ex.getMessage());
	  }
	  finally
	  {
		  disConnection();
	  }
	  return total;
	  
  }
  // 8. count
  public int boardRowCount() {
	  int total=0;
	  try {
		  getConnection();
		  String sql="SELECT COUNT(*) FROM replyBoard";
		  ps=conn.prepareStatement(sql);
		  ResultSet rs=ps.executeQuery();
		  rs.next();
		  total=rs.getInt(1);
		  rs.close();
		  
	  }catch(Exception ex)
	  {
		  System.out.println("boarTotalPage"+ex.getMessage());
	  }
	  finally
	  {
		  disConnection();
	  }
	  return total;
	  
  }
}








