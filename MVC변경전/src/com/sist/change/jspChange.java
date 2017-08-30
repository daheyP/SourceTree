package com.sist.change;

import javax.servlet.http.HttpServletRequest;

import com.sist.model.ShowModel;

public class jspChange {
	
	public void HeaderChange(HttpServletRequest request) {
			
		ShowModel sm= new ShowModel();
		String mode=request.getParameter("mode");
		  
		 // 기능 분리 
		   if(mode==null)
			   mode="0";
		   int index=Integer.parseInt(mode);
		   
		   switch(index){
		   
		   case 0: //메인 순위리스트
			   sm.MainGalleryData(request);
			   return;
		   case 1://뮤지컬
			   sm.MusicalListData(request);
			   break;
		   case 2://연극
			   sm.PlayListData(request);
			   break;
		   case 3://발라드
			   sm.BalladListData(request);
			   break;
		   case 4://내한 공연
			   sm.VisitKoreaListData(request);
			   break;
		   case 5://락
			   sm.RockListData(request);
			   break;
		   case 6://메탈
			   sm.MetalListData(request);
			   break;   
		   case 7://페스티벌
			   sm.FestivalListData(request);
			   break;
		   case 8://랩
			   sm.RapListData(request);
			   break;
		   case 9://힙합
			   sm.HiphopListData(request);
			   break;
		   case 10://클래식
			   sm.ClassicListData(request);
			   break;
		   case 11://무용
			   sm.DanceListData(request);
			   break;
		   case 12://전시
			   sm.ExhibitionListData(request);
			   break;
		   case 13://행사
			   sm.EventListData(request);
			   break;
		   case 14://마이페이지
			   sm.MyPageNav(request);
			   break;
		   case 15://고객센터
			   sm.CustomerServiceNav(request);
			   break;
		   case 16://상세페이지
			   sm.ShowDetailGallary(request);
			   break;
		   }
			
	}
}



	   
