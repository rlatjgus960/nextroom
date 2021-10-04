package com.nextroom.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nextroom.vo.PartyVo;
import com.nextroom.vo.RatingVo;

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
	
	public List<RatingVo> selectRankList(){
		
		return sqlSession.selectList("rank.selectRankList");
	}
	
	
	//21-10-04
	//PartyRead Rank 가져오기 by 대니
	public PartyVo partySelectRating(int userNo) {
		
		return sqlSession.selectOne("rank.partySelectRating", userNo);
	}
	
	//21-10-04
	//userNo로 현재순위,닉네임,프로필 가져오기 by 대니
	public PartyVo partySelectRankList(int userNo) {
		
		return sqlSession.selectOne("rank.partySelectRankList", userNo);
	}
	
}
