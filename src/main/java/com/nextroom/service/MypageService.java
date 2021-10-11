package com.nextroom.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nextroom.dao.MypageDao;
import com.nextroom.vo.PartyVo;

@Service
public class MypageService {
	
	@Autowired
	MypageDao mypageDao;
	
	//21-10-11 by 대니
	// 마이페이지 파티관리
	public Map<String, Object> mypagePartyManage(int userNo) {
		
		List<PartyVo> partyManageList = mypageDao.mypagePartyManage(userNo);
		
		
		return null;
	}
	
	
	
}
