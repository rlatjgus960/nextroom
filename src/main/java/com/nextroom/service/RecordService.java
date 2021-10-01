package com.nextroom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nextroom.dao.RecordDao;
import com.nextroom.vo.PrerecordVo;
import com.nextroom.vo.RecordVo;

@Service
public class RecordService {
	
	@Autowired RecordDao recordDao;
	
	//게임 리스트 가져오기
	public List<PrerecordVo> getGameList() {
		
		return recordDao.getGameList();
	}
	
public List<PrerecordVo> getCompleteList() {
		
		return recordDao.getCompleteList();
	}
	
	
	//기록 입력하기 
	public int RecordAdd(RecordVo recordVo,List<String> members) {
		
		System.out.println("서비스"+recordVo+" 멤버 "+members);
		
		//유저넘버 갖고오기
		int count =recordDao.selectUserNo(members,recordVo);
		
		//prerecord gamestate 완료로 바꾸기
		recordDao.updateState(recordVo);
		
		return count;
		
	}
	
	//기록완료 데이터 가져오기
	
	
}
