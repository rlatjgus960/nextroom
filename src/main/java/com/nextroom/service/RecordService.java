package com.nextroom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nextroom.dao.RecordDao;
import com.nextroom.vo.PreRecordVo;
import com.nextroom.vo.RecordVo;

@Service
public class RecordService {
	
	@Autowired RecordDao recordDao;
	
	//게임 리스트 가져오기
	public List<PreRecordVo> getGameList() {
		
		return recordDao.getGameList();
	}
	
	public List<String> getMemberList(int gameNo){
		
		List<String> userIdList = recordDao.selectMemberId(gameNo);
		
		System.out.println(userIdList);
		
		return userIdList;
	}
	
	public List<PreRecordVo> getCompleteList() {
		
		List<PreRecordVo> preList = recordDao.getCompleteList();
		
		for(int i =0;i<preList.size();i++) {
			
			int no = preList.get(i).getGameNo();
			System.out.println(no);
			
			PreRecordVo prerecordVo = new PreRecordVo();
			
			prerecordVo = (PreRecordVo) recordDao.getReadRecordList(no);
			
			System.out.println("갔다온 브이오"+prerecordVo);
			
			int cleartime = prerecordVo.getRecordTime();
			
			int min = (int)cleartime/60;
			int sec = cleartime%60;
			System.out.println(min+""+sec);
			String clearTime = min+"분"+" "+sec+"초";
			
			preList.get(i).setClearTime(clearTime);
			preList.get(i).setRecordHints(prerecordVo.getRecordHints());
			preList.get(i).setRecordTime(prerecordVo.getRecordTime());
			preList.get(i).setRecordNo(prerecordVo.getRecordNo());
			
			System.out.println("완성된 브이오"+preList.get(i));
			
		}
		
		return null;
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
