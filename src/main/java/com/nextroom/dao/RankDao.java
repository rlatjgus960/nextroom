package com.nextroom.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nextroom.vo.RatingVo;

@Repository
public class RankDao {
	
	@Autowired
	SqlSession sqlSession;
	
	public RatingVo selectRating(int userNo) {
		
		System.out.println("[랭크다오]-정보읽기");
		
		RatingVo ratingVo = sqlSession.selectOne("rank.selectRating",userNo);
		
		return ratingVo;
	}
	
	
}
	