package com.sist.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.sist.board.BoardDAO;
import com.sist.board.BoardVO;

public class ShowModel {
	
	  //����
	  public void MainGalleryData(HttpServletRequest request){
		  
		  request.setAttribute("main_jsp", "../main/content.jsp");
		  
		}
	  
	  //������
	  public void MusicalListData(HttpServletRequest request){
		  request.setAttribute("main_jsp", "../main/pages/gallery.jsp");
		  
	  }
	  
	  //����
	  public void PlayListData(HttpServletRequest request){
		  request.setAttribute("main_jsp", "../main/pages/gallery.jsp");
		  
	  }
	  //�ܼ�Ʈ
	  public void ConcertListData(HttpServletRequest request){
		  request.setAttribute("main_jsp", "../main/pages/gallery.jsp");
		  
	  }
	  //�߶��
	  public void BalladListData(HttpServletRequest request){
		  request.setAttribute("main_jsp", "../main/pages/gallery.jsp");
		  
	  }
	  //���Ѱ���
	  public void VisitKoreaListData(HttpServletRequest request){
		  request.setAttribute("main_jsp", "../main/pages/gallery.jsp");
		  
	  }
	  //��
	  public void RockListData(HttpServletRequest request){
		  request.setAttribute("main_jsp", "../main/pages/gallery.jsp");
		  
	  }
	  //��Ż
	  public void MetalListData(HttpServletRequest request){
		  request.setAttribute("main_jsp", "../main/pages/gallery.jsp");
		  
	  }
	  //�佺Ƽ��
	  public void FestivalListData(HttpServletRequest request){
		  request.setAttribute("main_jsp", "../main/pages/gallery.jsp");
		  
	  }
	  //��
	  public void RapListData(HttpServletRequest request){
		  
		  request.setAttribute("main_jsp", "../main/pages/gallery.jsp");
	  }
	  //����
	  public void HiphopListData(HttpServletRequest request){
		  
		  request.setAttribute("main_jsp", "../main/pages/gallery.jsp");
	  }
	  //Ŭ����
	  public void ClassicListData(HttpServletRequest request){
		  
		  request.setAttribute("main_jsp", "../main/pages/gallery.jsp");
	  }
	  //����
	  public void DanceListData(HttpServletRequest request){
		  
		  request.setAttribute("main_jsp", "../main/pages/gallery.jsp");
	  }
	  //����
	  public void ExhibitionListData(HttpServletRequest request){
		  
		  request.setAttribute("main_jsp", "../main/pages/gallery.jsp");
	  }
	  //���
	  public void EventListData(HttpServletRequest request){
		 
		  request.setAttribute("main_jsp", "../main/pages/gallery.jsp");
	  }
	  
	  //����������  
	  public void MyPageNav(HttpServletRequest request) {
		  request.setAttribute("main_jsp", "../main/pages/sidebar-left.jsp");
	  }
	  
	  //������  
	  public void CustomerServiceNav(HttpServletRequest request) {
		  request.setAttribute("main_jsp", "../main/pages/cs/cs_nav.jsp");
	  }
	  
	  //��������
	  public void ShowDetailGallary(HttpServletRequest request) {
		  
		  request.setAttribute("main_jsp", "../main/pages/sidebar-left2.jsp");
	  }
	  
}
