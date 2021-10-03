package com.nextroom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/rank")
@Controller
public class RankController {

	@RequestMapping("/user")
	public String user() {
		System.out.println("[유저랭크 컨트롤러]");
		return "rank/user";
	}

	@RequestMapping("/theme")
	public String theme() {
		System.out.println("[테마랭크 컨트롤러]");
		return "rank/theme";
	}

	@RequestMapping("/detail")
	public String detail() {
		System.out.println("[유저상세 컨트롤러]");
		return "rank/detail";
	}

}
