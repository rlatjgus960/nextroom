package com.nextroom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/rank")
@Controller
public class Rank {
	
	@RequestMapping("/user")
	public String user() {
		System.out.println("user rank");
		return "rank/user";
	}
	
	@RequestMapping("/theme")
	public String theme() {
		System.out.println("user theme");
		return "rank/theme";
	}
	
	@RequestMapping("/detail")
	public String detail() {
		System.out.println("user detail");
		return "rank/detail";
	}

}
