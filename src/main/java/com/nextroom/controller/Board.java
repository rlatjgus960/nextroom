package com.nextroom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Board {
	
	@RequestMapping("/community")
	public String hello() {
		System.out.println("board");
		return "board/freeCommunity";
	}

}
