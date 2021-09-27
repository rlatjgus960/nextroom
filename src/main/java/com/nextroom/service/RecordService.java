package com.nextroom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nextroom.dao.RecordDao;
import com.nextroom.vo.RecordVo;

@Service
public class RecordService {
	
	@Autowired RecordDao recordDao;
	
		public void RecordAdd(RecordVo recordVo,List<String> members) {
			
			System.out.println("서비스"+recordVo+" 멤버 "+members);
			
			List<Integer> memberNo = recordDao.selectUserNo(members);
			
			recordDao.insertRecord(memberNo,recordVo);
			
		}
	
}
