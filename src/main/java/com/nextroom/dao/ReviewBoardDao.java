package com.nextroom.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nextroom.vo.ReviewBoardVo;

@Repository
public class ReviewBoardDao {

	@Autowired
	private SqlSession sqlSession;
	
	//게시판 리스트
	public List<ReviewBoardVo> reviewBoardList(String keyword){
		System.out.println("[Dao.reviewBoardList]");
		
		//서비스에서 넘어온 리스트 -> sqlSession으로 토스
		List<ReviewBoardVo> reviewBoardList = sqlSession.selectList("reviewBoard.reviewBoardList",keyword);
		System.out.println(reviewBoardList);
		
		
		return null;
	}
}
