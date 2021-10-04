package com.nextroom.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nextroom.service.RankService;
import com.nextroom.vo.RatingVo;

@RequestMapping("/rank")
@Controller
public class RankController {
	
	@Autowired
	RankService rankService;
	
	@RequestMapping("/user")
	public String user(Model model) {
		System.out.println("[유저랭크 컨트롤러]");
		
		List<RatingVo> rankList = rankService.getRankList();
		
		System.out.println(rankList);
		
		model.addAttribute("rankList", rankList);
		
		return "rank/user";
	}

	@RequestMapping("/theme")
	public String theme() {
		System.out.println("[테마랭크 컨트롤러]");
		return "rank/theme";
	}

	@RequestMapping("/detail/{nickName}")
	public String detail(@PathVariable("nickName") String nickName) {
		System.out.println("[유저상세 컨트롤러]");
		return "rank/detail";
	}

}
