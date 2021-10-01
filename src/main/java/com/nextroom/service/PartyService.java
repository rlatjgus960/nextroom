package com.nextroom.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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
		
		//셀렉트키로 가져온 PARTYNO와 USERNO로 파티참여리스트 INSERT
		int userNo = partyVo.getUserNo();
		int partyNo = partyVo.getPartyNo();
		PartyVo partyDetailList = new PartyVo();
		partyDetailList.setUserNo(userNo);
		partyDetailList.setPartyNo(partyNo);
		
		partyDao.addPartyDetail(partyDetailList);
		
		
	
		return count;
	}
	
	
	//21-10-01 by 대니
	//파티등록 리스트 목록 출력하기
	public Map<String, Object> getPartyList() {
		
		//파티리스트 전체 출력
		List<PartyVo> partyList = partyDao.getPartyList();
		
		System.out.println("파티서비스-파티리스트: " + partyList);
		
//		//cafeNo 뽑아서 필요한 정보가져오기
//		List<PartyVo> getCafeNoList = new ArrayList<PartyVo>();
//		
//		for(int i=0; i<partyList.size(); i++) {
//			int cafeNo = partyList.get(i).getCafeNo();
//			
//			getCafeNoList = partyDao.getCafeNoList(cafeNo);
//			
//			
//			
//		}
//		System.out.println("cafeNo로 가져온 정보리스트: " + getCafeNoList);
		
		
		return null;
		
		
	}
	
	
}
