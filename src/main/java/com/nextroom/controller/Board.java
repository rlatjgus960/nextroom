package com.nextroom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Board {
	
	//자유게시판
	@RequestMapping("/community")
	public String hello() {
		System.out.println("board");
		return "board/freeCommunity";
	}
	
	
	//글 읽기
	@RequestMapping("/community_read")
	public String read() {
		System.out.println("read");
		return "board/read";
	}
	
	
	
	//글쓰기
	@RequestMapping("/community_write")
	public String write() {
		System.out.println("read");
		return "board/write";
	}

	
	//쪽지 보내기
	@RequestMapping("/note")
	public String send() {
		System.out.println("note");
		return "board/note";
	}
}
