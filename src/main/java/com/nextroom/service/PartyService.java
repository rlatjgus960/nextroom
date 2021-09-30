package com.nextroom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nextroom.dao.PartyDao;
import com.nextroom.vo.PartyVo;

@Service
public class PartyService {

	@Autowired PartyDao partyDao;
	
	//21-09-26 by 대니
	//sido로 카페No, 카페이름가져오기
	public List<PartyVo> getCafeList(String sido) {
		System.out.println("서비스구간 시도: " + sido);
		
		List<PartyVo> cafeList = partyDao.getCafeList(sido);
		
		
		return cafeList;
	}
	
	
	//21-09-27 by 대니
	//cafeNo로 테마NO, 테마이름가져오기
	public List<PartyVo> getThemeList(int cafeNo) {
		System.out.println("서비스구간 카페: " + cafeNo);
		
		List<PartyVo> themeList = partyDao.getThemeList(cafeNo);
		
		
		return themeList;
	}
	
	
	//21-09-28 by 대니
	//themeNo로 시간표 가져오기
	public List<PartyVo> getThemeTimeList(int themeNo) {
		System.out.println("서비스구간 테마No: " + themeNo);
		
		List<PartyVo> themeTimeList = partyDao.getThemeTimeList(themeNo);
		
		
		return themeTimeList;
	}
	
	
	//21-09-29 by 대니
	//파티등록폼에서 넘어온 정보로 파티리스트 인서트!
	public int addPartyList(PartyVo partyVo) {
		System.out.println("PartyService.addPartyList()");
		System.out.println(partyVo);
		
		int count = partyDao.addPartyList(partyVo);
		System.out.println("인서트후: " + partyVo);
		
		
		return count;
	}
	
	
}
