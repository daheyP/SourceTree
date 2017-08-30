package com.sist.model;

import javax.servlet.http.HttpServletRequest;


public class MyPageModel {
	
	 public void HeartListData(HttpServletRequest request) {
		//���� ���ɸ���Ʈ
		 
		  request.setAttribute("my_main", "sidebar-left2.jsp");
	  }
	  
	  
	 
	 public void HeartDetailData(HttpServletRequest request){
		 //���� ���ɸ���Ʈ ���뺸��
		 request.setAttribute("my_main", "gallery.jsp");
		 
		}
	 
	  public void ReservationListData(HttpServletRequest request){
		//���� ���� ����Ʈ
		
		  request.setAttribute("my_main", "gallery.jsp");
		  
	  }
	  
	  public void ReservationDetailData(HttpServletRequest request){
		 //���� ���� ���뺸��
		  
		  request.setAttribute("my_main", "gallery.jsp");
	  }
	  
	  public void MyQnAListData(HttpServletRequest request){
		//���� ���� ����
		  request.setAttribute("my_main", "gallery.jsp");
	  }
	  
	  public void MyQnADetailData(HttpServletRequest request){
		//���� ���� ���� ���뺸��
		  request.setAttribute("my_main", "gallery.jsp");
	  }
	  
	  public void MyInfoData(HttpServletRequest request){
		 //ȸ������ ����
		  
		  request.setAttribute("my_main", "gallery.jsp");
	  }
	  
	  public void MyDeleteData(HttpServletRequest request){
		  //ȸ��Ż��
		  request.setAttribute("my_main", "gallery.jsp");
	  }
}
