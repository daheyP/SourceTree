package com.sist.change;

import javax.servlet.http.HttpServletRequest;

import com.sist.model.MyPageModel;

public class myChange {
		
	public void myMainChange(HttpServletRequest request) {
		
		MyPageModel mp= new MyPageModel();
		
		String mode=request.getParameter("mp");
		
		if(mode==null)
			mode="0";
		
		int content=Integer.parseInt(mode);
		
		switch(content) {
		
		case 0: //���� ���ɸ���Ʈ
			mp.HeartListData(request);
			break;
		case 1:
			//���� ���ɸ���Ʈ ���뺸��
			mp.HeartDetailData(request);
			break;
		case 2:
			//���� ���� ����Ʈ
			mp.ReservationListData(request);
			break;
		case 3:
			//���� ���� ���뺸��
			mp.ReservationDetailData(request);
			break;
		case 4:
			//���� ���� ����
			mp.MyQnAListData(request);
			break;
		case 5:
			//���� ���� ���� ���뺸��
			mp.MyQnADetailData(request);
			break;
		case 6:
			//ȸ������ ����
			mp.MyInfoData(request);
			break;
		case 7:
			//ȸ��Ż��
			mp.MyDeleteData(request);
			break;
		
		
			
		}

	
		
	}
}
