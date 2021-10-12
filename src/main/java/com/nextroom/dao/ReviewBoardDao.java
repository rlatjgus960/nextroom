package com.nextroom.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.nextroom.vo.FreeBoardImgVo;
import com.nextroom.vo.FreeBoardVo;
import com.nextroom.vo.ReviewBoardVo;

@Repository
public class ReviewBoardDao {

	@Autowired
	private SqlSession sqlSession;
	
	
	//2021.10.01 by 원호
	//전체 게시물 갯수 구하기
	public int selectTotalCnt(String keyword) {
		System.out.println("[Dao.selectTotalCnt]");
		
		
		
		return sqlSession.selectOne("reviewBoard.selectTotalCnt",keyword);
	}
	
	//2021.09.30 by 원호
	//후기게시판 리스트
	public List<ReviewBoardVo> reviewBoardList(String keyword,int startRnum, int endRnum){
		System.out.println("[Dao.reviewBoardList]");
		
		
		Map<String, Object> pMap = new HashMap<String, Object>();
		
		pMap.put("startRnum", startRnum);
		pMap.put("endRnum", endRnum);
		pMap.put("keyword", keyword);
		System.out.println(pMap);
		
		return sqlSession.selectList("reviewBoard.reviewBoardList",pMap);
	}
	
	//2021.10.10 by 원호
	//후기게시판 리스트
	public List<ReviewBoardVo> reviewBoardHot(String keyword,int startRnum, int endRnum){
		System.out.println("[Dao.reviewBoardList]");
		
		
		Map<String, Object> pMap = new HashMap<String, Object>();
		
		pMap.put("startRnum", startRnum);
		pMap.put("endRnum", endRnum);
		pMap.put("keyword", keyword);
		System.out.println(pMap);
		
		return sqlSession.selectList("reviewBoard.reviewBoardHot",pMap);
	}
	
	//2021.09.30 by 원호
	//후기게시판 리스트
	public List<ReviewBoardVo> reviewBoardLike(String keyword,int startRnum, int endRnum){
		System.out.println("[Dao.reviewBoardList]");
		
		Map<String, Object> pMap = new HashMap<String, Object>();
		
		pMap.put("startRnum", startRnum);
		pMap.put("endRnum", endRnum);
		pMap.put("keyword", keyword);
		System.out.println(pMap);
		
		return sqlSession.selectList("reviewBoard.reviewBoardLike",pMap);
	}
	
	
	//2021.09.28 by 원호
	//리뷰게시판 글 등록
	public int ReviewInsert(ReviewBoardVo reviewBoardVo) {
		System.out.println("[Dao.ReviewInsert]");
		System.out.println("[Dao Vo정보]" + reviewBoardVo);
		

		return sqlSession.insert("reviewBoard.reviewBoardInsert", reviewBoardVo);
		
	}
	
	//2021.10.06 by 원호
	//리뷰게시판 이미지 없이 글 등록
	public int ReviewInsert2(ReviewBoardVo reviewBoardVo) {
		System.out.println("[Dao.ReviewInsert2]");
		
		return sqlSession.insert("reviewBoard.reviewBoardInsert2", reviewBoardVo);
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
	
	
	//2021.10.02 by 원호
	//조회수 올리기
	public int hit(int reviewNo) {
		System.out.println("Dao.hit");

		int count = sqlSession.update("reviewBoard.hit", reviewNo);
		System.out.println(count);
		return count;
	}
	
	//2021.10.02 by 원호
	//글 정보 가져오기
	public ReviewBoardVo selectBoard(int reviewNo) {
		System.out.println("Dao.selectBoard");
		
		return sqlSession.selectOne("reviewBoard.selectBoard", reviewNo);
	}
	
	//2021.10.06 by 원호
	//게시글 삭제
	public int reviewDelete(int reviewNo) {
		System.out.println("Dao.reviewDelete");
		
		int count = sqlSession.delete("reviewBoard.reviewDelete", reviewNo);
		
		return reviewNo;
	}
	
	//2021.10.06 by 원호
	//게시글 수정폼
	public ReviewBoardVo reviewModify(int reviewNo) {
		System.out.println("Dao.reviewModify");
		
		return sqlSession.selectOne("reviewBoard.selectBoard", reviewNo);
	}
	
	//2021.10.07 by 원호
	//글 수정
//	public int modify(ReviewBoardVo reviewBoardVo) {
//		System.out.println("Dao.modify");
//		
//		return sqlSession.update("reviewBoard.update",reviewBoardVo);
//	}
	
	public int modify(ReviewBoardVo reviewBoardVo) {
		System.out.println("Dao.modify");
		
		return sqlSession.update("reviewBoard.update",reviewBoardVo);
	}
	
	public int modify2(ReviewBoardVo reviewBoardVo) {
		System.out.println("Dao.modify2");
		
		return sqlSession.update("reviewBoard.update2",reviewBoardVo);
	}
	
//	//2021.10.08 by 원호
//	//추천버튼
//	public int upAndDown(int reviewNo) {
//		System.out.println("Dao.upAndDown");
//		
//		int count = sqlSession.update("reviewBoard.reviewLike", reviewNo);
//		
//		return count;
//	}
//////////////////////////////////////////////////////////
	/*자유게시판*/
	
	//2021.10.07 by 원호
	//자유게시판 글쓰기(이미지 포함)
	public int boardInsert(FreeBoardVo freeBoardVo) {
		System.out.println("[Dao.boardInsert]");
		System.out.println("[Dao Vo정보]" + freeBoardVo);
		

		return sqlSession.insert("reviewBoard.boardInsert", freeBoardVo);
		
	}
	
	//2021.10.10 by 원호
	//자유게시판 멀티 이미지
	public int addMultiImg(FreeBoardImgVo freeBoardImgVo) {
		System.out.println("[Dao.addMultiImg]");
		
		return sqlSession.insert("reviewBoard.addMultiImg", freeBoardImgVo);
	}
	
	//2021.10.07 by 원호
	//자유게시판 이미지 없이 글 등록
	public int boardInsert2(FreeBoardVo freeBoardVo) {
		System.out.println("[Dao.boardInsert2]");
		
		return sqlSession.insert("reviewBoard.boardInsert2", freeBoardVo);
	}
	
	//2021.10.07 by 원호
	//자유게시판 리스트,페이징,검색
	public List<FreeBoardVo> boardList(String keyword,int startRnum, int endRnum){
		System.out.println("[Dao.boardList]");
		
		
		Map<String, Object> pMap = new HashMap<String, Object>();
		
		pMap.put("startRnum", startRnum);
		pMap.put("endRnum", endRnum);
		pMap.put("keyword", keyword);
		System.out.println(pMap);
		
		return sqlSession.selectList("reviewBoard.boardList",pMap);
	}
	
	//2021.10.10 by 원호
	//자유게시판 인기순
	public List<FreeBoardVo> boardHot(String keyword,int startRnum, int endRnum){
		System.out.println("[Dao.boardList]");
		
		
		Map<String, Object> pMap = new HashMap<String, Object>();
		
		pMap.put("startRnum", startRnum);
		pMap.put("endRnum", endRnum);
		pMap.put("keyword", keyword);
		System.out.println(pMap);
		
		return sqlSession.selectList("reviewBoard.boardHot",pMap);
	}
	
	//2021.10.10 by 원호
	//자유게시판 조회순
	public List<FreeBoardVo> boardLike(String keyword,int startRnum, int endRnum){
		System.out.println("[Dao.boardList]");
		
		
		Map<String, Object> pMap = new HashMap<String, Object>();
		
		pMap.put("startRnum", startRnum);
		pMap.put("endRnum", endRnum);
		pMap.put("keyword", keyword);
		System.out.println(pMap);
		
		return sqlSession.selectList("reviewBoard.boardLike",pMap);
	}
	//2021.10.07 by 원호
	//전체 게시물 갯수 구하기
	public int totalCnt(String keyword) {
		System.out.println("[Dao.selectTotalCnt]");
		
		
		
		return sqlSession.selectOne("reviewBoard.totalCnt",keyword);
	}
	
	//2021.10.07 by 원호
	//자유게시판 조회수 올리기
	public int hitup(int boardNo) {
		System.out.println("Dao.hitup");

		int count = sqlSession.update("reviewBoard.hitup", boardNo);
		System.out.println(count);
		return count;
	}
	
	//2021.10.07 by 원호
	//자유게시판 글 정보 가져오기
	public FreeBoardVo freeRead(int boardNo) {
		System.out.println("Dao.freeRead");
		
		return sqlSession.selectOne("reviewBoard.freeRead", boardNo);
	}
	
	//2021.10.08 by 원호
	//자유게시판 게시글 삭제
	public int freeDelete(int boardNo) {
		System.out.println("Dao.freeDelete");
		
		int count = sqlSession.delete("reviewBoard.freeDelete", boardNo);
		
		return boardNo;
	}
	
	//2021.10.10 by 원호
	//게시글 추천
	public int readLike(FreeBoardVo freeBoardVo) {
		System.out.println("다오추천");
		int like = sqlSession.update("reviewBoard.readLike", freeBoardVo);
		System.out.println(like);
		return like;
	}
	
	//2021.10.12 by 원호
	//게시글 비추천
	public int readHate(FreeBoardVo freeBoardVo) {
		System.out.println("다오비추천");
		int hate = sqlSession.update("reviewBoard.readHate", freeBoardVo);
		System.out.println(hate);
		return hate;
	}
	
	//2021.10.12 by 원호
	//자유게시판 게시글 수정폼
	public FreeBoardVo freeModify(int boardNo) {
		System.out.println("Dao.freeModify");
		
		return sqlSession.selectOne("reviewBoard.selectFreeBoard", boardNo);
	}
	
}
