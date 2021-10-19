package com.nextroom.controller;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nextroom.service.CafeService;
import com.nextroom.service.RankService;
import com.nextroom.vo.CafeVo;
import com.nextroom.vo.RatingVo;
import com.nextroom.vo.ThemeRankVo;

@RequestMapping("/rank")
@Controller
public class RankController {

	@Autowired
	RankService rankService;
	@Autowired
	CafeService cafeService;

	@RequestMapping("/user")
	public String userRank(Model model) {
		System.out.println("[유저랭크 컨트롤러]");

		List<RatingVo> rankList = rankService.getRankList();

		System.out.println(rankList);

		model.addAttribute("rankList", rankList);

		return "rank/user";
	}

	@RequestMapping("/theme")
	public String themeRank(Model model,
			@RequestParam(value = "List", required = false, defaultValue = "rating") String listType) {
		System.out.println("[테마랭크 컨트롤러]");

		List<CafeVo> tList = cafeService.get10Theme();
		List<ThemeRankVo> rankList = rankService.getThemeRankList(listType);


		System.out.println("티리스트"+tList);
		
		model.addAttribute("rankList", rankList);
		model.addAttribute("tList", tList);
		
		return "rank/theme";
	}

	@RequestMapping("/detail")
	public String userDetail(Model model,
			@RequestParam(value = "nickName", required = false, defaultValue = "-1") String nickName,
			@RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage) {

		System.out.println(nickName + crtPage);

		if (nickName.equals(null) || nickName.equals("") || nickName.equals("-1")) {
			System.out.println("[오류오류오류오류오류오류오류오류]");

			return "rank/searchNull";
		} else {
			System.out.println("[유저 컨트롤러]");

			Map<String, Object> detailMap = rankService.getUserDetail(nickName, crtPage);
			if (detailMap != null) {
				model.addAttribute("detailMap", detailMap);
				return "rank/detail";
			} else {
				return "rank/searchNull";
			}
		}
	}

	/*
	 * @RequestMapping("/{id}") public String userDetailforID(@PathVariable String
	 * id) throws UnsupportedEncodingException { System.out.println("주소창바로입력" + id);
	 * 
	 * String encodedId = URLEncoder.encode(id, "UTF-8");
	 * 
	 * return "redirect:/rank/detail?nickName=" + encodedId; }
	 */

	@ResponseBody
	@RequestMapping("/theme/getThemeList")
	public List<ThemeRankVo> themeRankList(
			@RequestParam(value = "List", required = false, defaultValue = "rating") String listType) {

		System.out.println("아약스 리스트 가져오기" + listType);

		List<ThemeRankVo> themeRankList = rankService.getThemeRankList(listType);

		return themeRankList;
	}

	@ResponseBody
	@RequestMapping(value = "/getNicknameList")
	public List<String> getNicknameList(Locale locale, Model model) {

		List<String> nicknameList = rankService.getNicknameList();
		System.out.println("닉네임 아약스");
		System.out.println(nicknameList);
		// Gson gson = new Gson();

		return nicknameList;
	}
	

}
