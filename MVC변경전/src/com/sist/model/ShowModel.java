package com.sist.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.sist.board.BoardDAO;
import com.sist.board.BoardVO;

public class ShowModel {
	
	  //메인
	  public void MainGalleryData(HttpServletRequest request){
		  
		  request.setAttribute("main_jsp", "../main/content.jsp");
		  
		}
	  
	  //뮤지컬
	  public void MusicalListData(HttpServletRequest request){
		  request.setAttribute("main_jsp", "../main/pages/gallery.jsp");
		  
	  }
	  
	  //연극
	  public void PlayListData(HttpServletRequest request){
		  request.setAttribute("main_jsp", "../main/pages/gallery.jsp");
		  
	  }
	  //콘서트
	  public void ConcertListData(HttpServletRequest request){
		  request.setAttribute("main_jsp", "../main/pages/gallery.jsp");
		  
	  }
	  //발라드
	  public void BalladListData(HttpServletRequest request){
		  request.setAttribute("main_jsp", "../main/pages/gallery.jsp");
		  
	  }
	  //내한공연
	  public void VisitKoreaListData(HttpServletRequest request){
		  request.setAttribute("main_jsp", "../main/pages/gallery.jsp");
		  
	  }
	  //락
	  public void RockListData(HttpServletRequest request){
		  request.setAttribute("main_jsp", "../main/pages/gallery.jsp");
		  
	  }
	  //메탈
	  public void MetalListData(HttpServletRequest request){
		  request.setAttribute("main_jsp", "../main/pages/gallery.jsp");
		  
	  }
	  //페스티벌
	  public void FestivalListData(HttpServletRequest request){
		  request.setAttribute("main_jsp", "../main/pages/gallery.jsp");
		  
	  }
	  //랩
	  public void RapListData(HttpServletRequest request){
		  
		  request.setAttribute("main_jsp", "../main/pages/gallery.jsp");
	  }
	  //힙합
	  public void HiphopListData(HttpServletRequest request){
		  
		  request.setAttribute("main_jsp", "../main/pages/gallery.jsp");
	  }
	  //클래식
	  public void ClassicListData(HttpServletRequest request){
		  
		  request.setAttribute("main_jsp", "../main/pages/gallery.jsp");
	  }
	  //무용
	  public void DanceListData(HttpServletRequest request){
		  
		  request.setAttribute("main_jsp", "../main/pages/gallery.jsp");
	  }
	  //전시
	  public void ExhibitionListData(HttpServletRequest request){
		  
		  request.setAttribute("main_jsp", "../main/pages/gallery.jsp");
	  }
	  //행사
	  public void EventListData(HttpServletRequest request){
		 
		  request.setAttribute("main_jsp", "../main/pages/gallery.jsp");
	  }
	  
	  //마이페이지  
	  public void MyPageNav(HttpServletRequest request) {
		  request.setAttribute("main_jsp", "../main/pages/sidebar-left.jsp");
	  }
	  
	  //고객센터  
	  public void CustomerServiceNav(HttpServletRequest request) {
		  request.setAttribute("main_jsp", "../main/pages/cs/cs_nav.jsp");
	  }
	  
	  //상세페이지
	  public void ShowDetailGallary(HttpServletRequest request) {
		  
		  request.setAttribute("main_jsp", "../main/pages/sidebar-left2.jsp");
	  }
	  
}
