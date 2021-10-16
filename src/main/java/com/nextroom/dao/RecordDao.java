package com.nextroom.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nextroom.vo.PreRecordVo;
import com.nextroom.vo.RecordVo;

@Repository
public class RecordDao {

	@Autowired
	private SqlSession sqlSession;

	public List<PreRecordVo> getGameList(int cafeNo) {

		return sqlSession.selectList("record.selectGameList",cafeNo);

	}

	public List<String> selectMemberId(int gameNo) {

		return sqlSession.selectList("record.selectIdList", gameNo);
	}

	public List<PreRecordVo> getCompleteList(int cafeNo) {

		return sqlSession.selectList("record.selectCompleteList",cafeNo);

	}

	public PreRecordVo getReadRecordList(int gameNo) {

		return sqlSession.selectOne("record.selectReadRecordList", gameNo);

	}

	public int updateState(RecordVo recordVo) {

		int count = 0;
		count = sqlSession.update("record.updateState", recordVo.getGameNo());
		return count;
	}

	public int selectUserNo(String id) {

		int n = sqlSession.selectOne("record.selectUserNo", id);

		return n;
	}

	public int insertRecord(RecordVo recordVo) {

		return sqlSession.insert("record.insertRecord", recordVo);
	}
	
	public int updateRecord(RecordVo recordVo) {
		
		return sqlSession.update("record.updateRecord", recordVo);
	}

}
