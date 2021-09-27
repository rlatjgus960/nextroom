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
	//sido로 카페리스트가져오기
	public List<PartyVo> getCafeList(String sido) {
		System.out.println("서비스구간 시도: " + sido);
		
		List<PartyVo> cafeList = partyDao.getCafeList(sido);
		
		
		return cafeList;
	}
	
}
