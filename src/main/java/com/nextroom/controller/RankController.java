package com.nextroom.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.nextroom.service.RankService;
import com.nextroom.vo.RatingVo;

@RequestMapping("/rank")
@Controller
public class RankController {

	@Autowired
	RankService rankService;

	@RequestMapping("/user")
	public String userRank(Model model) {
		System.out.println("[유저랭크 컨트롤러]");

		List<RatingVo> rankList = rankService.getRankList();

		System.out.println(rankList);

		model.addAttribute("rankList", rankList);

		return "rank/user";
	}

	@RequestMapping("/theme")
	public String themeRank() {
		System.out.println("[테마랭크 컨트롤러]");
		return "rank/theme";
	}

	@RequestMapping("/detail")
	public String userDetail(Model model,
			@RequestParam(value = "nickName", required = false, defaultValue = "-1") String nickName) {

		System.out.println(nickName);

		if (nickName.equals(null) || nickName.equals("") || nickName.equals("-1")) {
			System.out.println("[오류오류오류오류오류오류오류오류]");

			return "rank/searchNull";
		} else {
			System.out.println("[유저 컨트롤러]");

			Map<String, Object> detailMap = rankService.getUserDetail(nickName);
			if (detailMap != null) {
				model.addAttribute("detailMap", detailMap);
				return "rank/detail";
			} else {
				return "rank/searchNull";
			}
		}
	}

}
