package com.nextroom.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nextroom.vo.RatingVo;

@Repository
public class RankDao {
	
	@Autowired
	SqlSession sqlSession;
	
	public RatingVo selectRating(RatingVo ratingVo) {
		
		
		ratingVo = sqlSession.selectOne("rank.selectRating",ratingVo);
		
		return ratingVo;
	}
	
	
}
	