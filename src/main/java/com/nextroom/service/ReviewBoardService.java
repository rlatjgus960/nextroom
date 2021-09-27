package com.nextroom.service;

import org.springframework.stereotype.Service;

import com.nextroom.vo.ReviewBoardVo;

@Service
public class ReviewBoardService {
	
	
	//후기게시판 글 등
	public int reviewWrite(ReviewBoardVo reviewBoardVo) {
		System.out.println("Service.reviewWrite");
		
		return 1;
	}

}
