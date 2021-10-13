package com.nextroom.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nextroom.vo.PartyVo;
import com.nextroom.vo.RatingVo;
import com.nextroom.vo.ThemeRankVo;
import com.nextroom.vo.UserHistoryVo;

@Repository
public class RankDao {

	@Autowired
	SqlSession sqlSession;

	public RatingVo selectRating(int userNo) {

		System.out.println("[랭크다오]-정보읽기");

		RatingVo ratingVo = sqlSession.selectOne("rank.selectRating", userNo);

		return ratingVo;
	}

	public int updateRating(RatingVo ratingVo) {

		return sqlSession.update("rank.updateRating", ratingVo);
	}

	public List<RatingVo> selectRankList() {

		return sqlSession.selectList("rank.selectRankList");
	}

	// 21-10-04
	// PartyRead Rank 가져오기 by 대니
	public PartyVo partySelectRating(int userNo) {

		return sqlSession.selectOne("rank.partySelectRating", userNo);
	}

	// 21-10-04
	// userNo로 현재순위,닉네임,프로필 가져오기 by 대니
	public PartyVo partySelectRankList(int userNo) {

		return sqlSession.selectOne("rank.partySelectRankList", userNo);
	}

	public RatingVo selectUserStat(int userNo) {

		return sqlSession.selectOne("rank.selectUserStat", userNo);
	}

	public List<UserHistoryVo> selectUserHistory(int userNo,int startRnum,int endRnum) {
		
		Map<String,Object> rankMap = new HashMap<String,Object>();
		
		rankMap.put("userNo", userNo);
		rankMap.put("startRnum", startRnum);
		rankMap.put("endRnum", endRnum);
		
		return sqlSession.selectList("rank.selectUserHistory", rankMap);
	}

	public int selectUserNo(String nickName) {

		if (sqlSession.selectOne("rank.selectUserNo", nickName) == null
				|| sqlSession.selectOne("rank.selectUserNo", nickName).equals("")) {
			System.out.println("오휴오휴ㅗ후후후후후후후ㅜ");
			
			return -1;
		}

		else {
			return sqlSession.selectOne("rank.selectUserNo", nickName);
		}
	}
	
	public int selectTotalCnt(int userNo) {
		
		return sqlSession.selectOne("rank.selectTotalCnt", userNo);
	}
	
	public List<ThemeRankVo> selectThemeRankList(String listType){
		System.out.println(listType);
		return sqlSession.selectList("rank.selectThemeRankList",listType);
	}
}
