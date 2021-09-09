package com.nextroom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Hello {

	@RequestMapping("/hello")
	public String hello() {
		System.out.println("hello");
		return "user/mypage_main";
	}
	
	
	@RequestMapping("/rank")
	public String rank() {
		System.out.println("hello");
		return "user/userrank";
	}

}
