package com.sist.change;

import javax.servlet.http.HttpServletRequest;
import com.sist.change.csChange;
import com.sist.change.jspChange;
import com.sist.model.CustomerServiceModel;

public class csChange {
	
	
	public void csMainChange(HttpServletRequest request){
		
		CustomerServiceModel cs = new CustomerServiceModel();
		
		String mode=request.getParameter("cs");
		

		if(mode==null)
			mode="0";
		int content=Integer.parseInt(mode);
		switch(content) {
		
		case 0: //공지사항
			cs.NoticeBoardListData(request);
			break;
		case 1:
			//Notice
			break;
		case 2:
			//Notice
			break;
		case 3:
			//FAQ
			break;
		case 4:
			//FAQ
			break;
		case 5:
			//FAQ
			break;
		case 6:
			cs.QnABoardListData(request);
			break;
		case 7:
			cs.QnAInsertData(request);
			break;
		case 8:
			cs.QnABoardDetailData(request);
			break;
		case 9:
			//성령
			break;
		case 10:
			//누리
			break;
		case 11:
			cs.QnADeleteData(request);
			break;
		case 12:
			cs.QnAUpdateData(request);
			break;
		case 13:
			cs.QnAReplytData(request);
			break;
				
			
		}

	
	}
}
