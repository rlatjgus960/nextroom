package com.nextroom.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nextroom.vo.PartyVo;
import com.nextroom.vo.RecordVo;
import com.nextroom.vo.ReserveVo;

@Repository
public class MypageDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	//21-10-11 by 대니
	// 마이페이지 파티관리
	public List<PartyVo> mypagePartyManage(int userNo, int startRnum, int endRnum, String partyJoinSelect) {
		
		Map<String, Object> partyManageListMap = new HashMap<String, Object>();
		
		partyManageListMap.put("userNo", userNo);
		partyManageListMap.put("startRnum", startRnum);
		partyManageListMap.put("endRnum", endRnum);
		partyManageListMap.put("partyJoinSelect", partyJoinSelect);
		
		
		return sqlSession.selectList("mypage.mypagePartyManage", partyManageListMap);
	}
	
	
	//21-10-11 by 대니
	//페이징 갯수와 페이징버튼을 위한 전체게시물갯수
	public int partyJoinTotalCount(int userNo, String partyJoinSelect) {
		
		Map<String, Object> totalCountMap = new HashMap<String, Object>();
		
		totalCountMap.put("userNo", userNo);
		totalCountMap.put("partyJoinSelect", partyJoinSelect);
		
		return sqlSession.selectOne("mypage.partyJoinTotalCount", totalCountMap);
	}
	
	/**************************************************************************************/
	//결제내역 페이지 - reserve 테이블 정보 list 가져오기
	public List<ReserveVo> getReserveList(int userNo) {
		System.out.println("[MypageDao.getReserveList]");
		
		List<ReserveVo> reserveVo = sqlSession.selectList("mypage.selectReserveList", userNo);
		
		return reserveVo;
	}
	
	public ReserveVo getReserveInfo(int reserveNo) {
		System.out.println("[MypageDao.getReserveInfo]");
		
		ReserveVo reserveVo = sqlSession.selectOne("mypage.selectReserveInfo",reserveNo);
		
		return reserveVo;
	}
	
	public List<RecordVo> getMyRecordList(int gameNo) {
		System.out.println("[MypageDao.getMyRecordList]");
		
		List<RecordVo> recordList = sqlSession.selectList("mypage.selectRecordList", gameNo);
		
		return recordList;
	}
	
	public List<ReserveVo> getTeamPlayer(int reserveNo) {
		System.out.println("[MypageDao.getMyRecordList]");
		
		List<ReserveVo> teamPlayerList = sqlSession.selectList("mypage.selectPlayerList", reserveNo);
		
		return teamPlayerList;
	}
	
	public ReserveVo idCheck(String id) {
		System.out.println("[MypageDao.idCheck]");
		
		return sqlSession.selectOne("mypage.idCheck", id);
	}
	
	public int idUpdateDelete(Map<String,Object> idMap) {
		System.out.println("[MypageDao.idUpdateDelete]");
		
		sqlSession.delete("mypage.deleteReservePeople", idMap);
		
		return sqlSession.insert("mypage.insertReservePeople", idMap);
	}
	
	public int idUpdate(Map<String,Object> idMap) {
		System.out.println("[MypageDao.idUpdate]");
		
		
		return sqlSession.insert("mypage.insertReservePeople", idMap);
	}
	/**************************************************************************************/
	
	
	
}
