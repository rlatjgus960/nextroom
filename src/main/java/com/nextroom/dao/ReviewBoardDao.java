package com.nextroom.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nextroom.vo.PartyVo;
import com.nextroom.vo.ReviewBoardVo;

@Repository
public class ReviewBoardDao {

	@Autowired
	private SqlSession sqlSession;
	
	//2021.09.30 by 원호
	//후기게시판 리스트
	public List<ReviewBoardVo> reviewBoardList(String keyword){
		System.out.println("[Dao.reviewBoardList]");
		
		//서비스에서 넘어온 리스트 -> sqlSession으로 토스
		List<ReviewBoardVo> reviewBoardList = sqlSession.selectList("reviewBoard.reviewBoardList",keyword);
		System.out.println(reviewBoardList);
		
		
		return reviewBoardList;
	}
	
	
	//2021.09.28 by 원호
	//리뷰게시판 글 등록
	public int ReviewInsert(ReviewBoardVo reviewBoardVo) {
		System.out.println("[Dao.ReviewInsert]");
		System.out.println("[Dao Vo정보]" + reviewBoardVo);
		

		return sqlSession.insert("reviewBoard.reviewBoardInsert", reviewBoardVo);
		
	}
	
	
	
	//2021.09.29 by 원호
	//sido사용 cafeNo, cafeName 가져오기
	public List<ReviewBoardVo> getCafeList(String sido){
		System.out.println("[Dao.getCafeList]");
		System.out.println("[Dao에서 시도 내놔]" + sido);
		
		List<ReviewBoardVo> cafeList = sqlSession.selectList("reviewBoard.cafeListSelect",sido);
		
		System.out.println("[Dao 카페 리스트]" + cafeList);
		
		return cafeList;
	}
	
	
	//2021.09.29 by 원호
	//cafeNo로 themeNo, themeName 가져오기
	public List<ReviewBoardVo> getThemeList(int cafeNo) {
		System.out.println("[Dao.getThemeList]");
		System.out.println("[Dao에서 카페번호 내놔봐]: " + cafeNo);
		
		List<ReviewBoardVo> themeList = sqlSession.selectList("reviewBoard.themeListSelect", cafeNo);
		
		System.out.println("Dao 테마리스트: " + themeList);
		
		return themeList;
	}
}
