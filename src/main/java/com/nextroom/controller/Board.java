package com.nextroom.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nextroom.service.ReviewBoardService;
import com.nextroom.vo.ReviewBoardVo;
import com.nextroom.vo.UserVo;

@RequestMapping("/board")
@Controller
public class Board {
	
	@Autowired
	private ReviewBoardService reviewBoardService;
	
	//자유게시판
	@RequestMapping("/freeCommunity")
	public String freeCommunity() {
		System.out.println("freeCommunity");
		return "board/freeCommunity";
	}
	
	
	//글 읽기
	@RequestMapping("/readForm")
	public String readForm() {
		System.out.println("readForm");
		return "board/readForm";
	}
	
	
	
	//글쓰기
	@RequestMapping("/writeForm")
	public String writeForm() {
		System.out.println("writeForm");
		return "board/writeForm";
	}
	
	
	//후기글쓰기폼
	@RequestMapping("/reviewWriteForm")
	public String reviewWriteForm() {
		System.out.println("reviewWriteForm");
		return "board/reviewWriteForm";
	}
	
	
	//후기글쓰기
	@RequestMapping(value = "/reviewWrite", method = {RequestMethod.GET, RequestMethod.POST})
	public String reviewWriteForm(@ModelAttribute ReviewBoardVo reviewBoardVo, HttpSession session) {
		System.out.println("Controller.reviewWrite");
		
		//세션에서 정보가져옴
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		
		//vo에 세션에서 가져온 no담기
		int no = authUser.getUserNo();
		reviewBoardVo.setUserNo(no);
		
		//reviewBoardService.write(reviewBoardVo);
		
		return "redirect:/board/reviewWriteForm";
	}
	
	
	//쪽지 보내기
	@RequestMapping("/massageForm")
	public String massageForm() {
		System.out.println("massageForm");
		return "board/massageForm";
	}
}
