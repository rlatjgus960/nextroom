package com.nextroom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/board")
@Controller
public class Board {
	
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
	
	
	//쪽지 보내기
	@RequestMapping("/massageForm")
	public String massageForm() {
		System.out.println("massageForm");
		return "board/massageForm";
	}
}
