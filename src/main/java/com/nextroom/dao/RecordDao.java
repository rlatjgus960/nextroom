package com.nextroom.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nextroom.vo.PreRecordVo;
import com.nextroom.vo.ReadRecordVo;
import com.nextroom.vo.RecordVo;

@Repository
public class RecordDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public List<PreRecordVo> getGameList() {
		
		return sqlSession.selectList("record.selectGameList");
		
	}
	public List<String> selectMemberId(int gameNo){
		
		return sqlSession.selectList("record.selectIdList",gameNo);
	}
	
	public List<PreRecordVo> getCompleteList() {
		
		return sqlSession.selectList("record.selectCompleteList");
		
	}
	
	public PreRecordVo getReadRecordList(int gameNo) {
		
		return sqlSession.selectOne("record.selectReadRecordList", gameNo);
		
	}
	
	
	public int updateState(RecordVo recordVo) {
		
		int count= 0;
		count = sqlSession.update("record.updateState", recordVo.getGameNo());
		return count;
	}
	
	
	
	public int selectUserNo(List<String> members,RecordVo recordVo) {
		
		int count = 0;
		
		for(int i =0;i<members.size();i++) {
			String id = members.get(i);
			
			//아이디 찾기 
			System.out.println(id);
			
			int n = sqlSession.selectOne("record.selectUserNo",id);
			
			System.out.println(n);
			
			recordVo.setUserNo(n);
			
			count = sqlSession.insert("record.insertRecord",recordVo);
			
			System.out.println(count);
		}
		
		return count;
	}
	
	
	
}
