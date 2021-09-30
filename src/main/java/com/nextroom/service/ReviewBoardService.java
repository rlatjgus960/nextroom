package com.nextroom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nextroom.dao.ReviewBoardDao;
import com.nextroom.vo.PartyVo;
import com.nextroom.vo.ReviewBoardVo;

@Service
public class ReviewBoardService {
	
	@Autowired
	private ReviewBoardDao reviewBoardDao;
	
	
	//리스트
	public List<ReviewBoardVo> list(String keyword){
		System.out.println("[Service.list]");
		
		//컨트롤러에서 넘어온 키워드 다오로 가자
		List<ReviewBoardVo> reviewBoardList=reviewBoardDao.reviewBoardList(keyword);
		System.out.println(reviewBoardList);
		
		//
		return reviewBoardList;
	}
	
	//2021.09.30 by 원호
	//후기게시판 리스트
	public List<ReviewBoardVo> reviewList(String keyword){
		System.out.println("Service.reviewList");
		
		//컨트롤러에서 넘어온 키워드 -> Dao로 보냄
		List<ReviewBoardVo> reviewList = reviewBoardDao.reviewBoardList(keyword);
		System.out.println("[Service Vo 정보]:" + reviewList);
		
		return reviewList;
	}
	
	//2021.09.28 by 원호
	//후기게시판 글 등록
	public int reviewWrite(ReviewBoardVo reviewBoardVo) {
		System.out.println("Service.reviewWrite");
		System.out.println("[Service Vo정보]" + reviewBoardVo);
		
		return reviewBoardDao.ReviewInsert(reviewBoardVo);
	}
	
	
	//2021.09.29 by 원호
	//sido사용 cafeNo, cafeName 가져오기
	public List<ReviewBoardVo> getCafeList(String sido){
		System.out.println("Servie.getCafeList");
		System.out.println("Servie에서 sido 내놔" + sido);
		
		List<ReviewBoardVo> cafeList = reviewBoardDao.getCafeList(sido);
		
		return cafeList;
	}
	
	//2021.09.29 by 원호
	//cafeNo로 테마NO, 테마이름가져오기
	public List<ReviewBoardVo> getThemeList(int cafeNo) {
		System.out.println("Servie.getCafeList");
		System.out.println("Servie.getCafeList: " + cafeNo);
		
		List<ReviewBoardVo> themeList = reviewBoardDao.getThemeList(cafeNo);
		
		
		return themeList;
	}

}
