package com.nextroom.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nextroom.vo.PartyVo;

@Repository
public class PartyDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	//21-09-26 by 대니
	//sido로 카페No, 카페이름가져오기
	public List<PartyVo> getCafeList(String sido) {
		System.out.println("다오구간시도: " + sido);
		
		List<PartyVo> cafeList = sqlSession.selectList("party.cafeListSelect", sido);
		
		System.out.println("다오구간 카페리스트: " + cafeList);
		
		return cafeList;
	}
	
	
	//21-09-27 by 대니
	//cafeNo로 테마NO, 테마이름가져오기
	public List<PartyVo> getThemeList(int cafeNo) {
		System.out.println("다오구간카페: " + cafeNo);
		
		List<PartyVo> themeList = sqlSession.selectList("party.themeListSelect", cafeNo);
		
		System.out.println("다오구간 테마리스트: " + themeList);
		
		return themeList;
	}
	
	
	//21-09-28 by 대니
	//themeNo로 시간표 가져오기
	public List<PartyVo> getThemeTimeList(int themeNo) {
		System.out.println("다오구간테마NO: " + themeNo);
		
		List<PartyVo> themeTimeList = sqlSession.selectList("party.themeTimeListSelect", themeNo);
		
		System.out.println("다오구간 테마타임리스트: " + themeTimeList);
		
		return themeTimeList;
	}
	
	
	//21-09-29 by 대니
	//파티등록폼에서 넘어온 정보로 파티리스트 인서트!
	public int addPartyList(PartyVo partyVo) {
		System.out.println("partyDao.addPartyList()");
		System.out.println(partyVo);
		
		
		
		//xml 전송
		int count = sqlSession.insert("party.addPartyList", partyVo);
		
		
		return count;
	}
	
	
	//셀렉트키로 가져온 PARTYNO와 USERNO로 파티참여리스트 INSERT
	public void addPartyDetail(PartyVo partyDetailList) {
		System.out.println("파티다오에 참여인원 Vo다: " + partyDetailList);
		
		sqlSession.insert("party.addPartyDetail", partyDetailList);
	}
	
	
	// 21-10-01 by 대니
	// 파티등록 리스트 목록 출력하기
	public List<PartyVo> getPartyList() {
		System.out.println("파티다오의 PartyList 출력구간");
		List<PartyVo> partyList = sqlSession.selectList("party.partyListSelect");
		
		
		return partyList;
	}
	
//	// 21-10-01 by 대니
//	// 파티리스트에서 뽑아낸 cafeNo로 가져오는 정보리스트
//	public List<PartyVo> getCafeNoList(int cafeNo) {
//		
//		List<PartyVo> getCafeNoList = sqlSession.selectList("party.getCafeNoList", cafeNo);
//		
//		
//		
//		return getCafeNoList;
//	}
	
	
	
	
	
	
	
	
	
}
