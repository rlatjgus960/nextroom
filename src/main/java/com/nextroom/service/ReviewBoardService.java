package com.nextroom.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nextroom.dao.ReviewBoardDao;
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
	
	
	//후기게시판 글 등록
	public int reviewWrite(ReviewBoardVo reviewBoardVo) {
		System.out.println("Service.reviewWrite");
		
		return 1;
	}

}
