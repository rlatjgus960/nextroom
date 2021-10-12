package com.nextroom.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nextroom.dao.MypageDao;
import com.nextroom.dao.PartyDao;
import com.nextroom.vo.PartyVo;

@Service
public class MypageService {
	
	@Autowired
	MypageDao mypageDao;
	
	@Autowired
	PartyDao partyDao;
	
	//21-10-11 by 대니
	// 마이페이지 파티관리
	public Map<String, Object> mypagePartyManage(int userNo, int crtPage, String partyJoinSelect) {

		////////////////////////////////////////////
		//리스트 가져오기
		////////////////////////////////////////////
		
		int listCnt = 5;
		
		//crtPage 계산(- 값일때 1page 처리)
		crtPage = (crtPage > 0) ? crtPage : (crtPage = 1); //삼항연산자; 아래랑 같은 논리
		
//		if(crtPage > 0) {
//			//crtPage = crtPage;
//		} else {
//			crtPage = 1;
//		}
		
		
		//시작번호 계산하기
		int startRnum = (crtPage-1) * listCnt + 1;
		
		//끝번호 계산하기
		int endRnum = crtPage * listCnt;		
		
		//파티관리 리스트 출력
		List<PartyVo> partyManageList = mypageDao.mypagePartyManage(userNo, startRnum, endRnum, partyJoinSelect);
		
		//cafeNo 뽑아서 필요한 정보가져오기
		for(int i=0; i<partyManageList.size(); i++) {
			int cafeNo = partyManageList.get(i).getCafeNo();
			
			PartyVo partyVo = new PartyVo();
			
			partyVo = (PartyVo) partyDao.getCafeNoList(cafeNo);
			
			String sidoDetail = partyVo.getSidoDetail();
			String cafeName = partyVo.getCafeName();
			
			partyManageList.get(i).setSidoDetail(sidoDetail);
			partyManageList.get(i).setCafeName(cafeName);
		
			
		//cafeNo와 themeNo 뽑아서 필요한 정보가져오기
			int themeNo = partyManageList.get(i).getThemeNo();
			
			PartyVo cafeThemeVo = new PartyVo(cafeNo, themeNo);
			
			partyVo = (PartyVo) partyDao.getCafeThemeNoList(cafeThemeVo);
			System.out.println("테마카페노로 가져온 정보들: " + partyVo);
			
			String themeName = partyVo.getThemeName();
			String themeImg = partyVo.getThemeImg();
			
			partyManageList.get(i).setThemeName(themeName);
			partyManageList.get(i).setThemeImg(themeImg);
			
		//partyNo로 유저카운트 가져오기
			int partyNo = partyManageList.get(i).getPartyNo();
			
			partyVo = (PartyVo) partyDao.getPartyNoList(partyNo);
			
			int userCount = partyVo.getUserCount();
			
			partyManageList.get(i).setUserCount(userCount);
			
			System.out.println("파티관리: " + partyManageList);
		}
		
		//맵으로 리턴
		Map<String, Object> mypagePartyManage = new HashMap<String, Object>();
		
		mypagePartyManage.put("partyManageList", partyManageList);
		
		return mypagePartyManage;
		
		
		
		
		
		
		
	}
	
	
	
}
