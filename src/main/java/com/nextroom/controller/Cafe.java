package com.nextroom.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nextroom.service.CafeService;
import com.nextroom.vo.CafeVo;
import com.nextroom.vo.ThemeSearchVo;

@RequestMapping("/cafe")
@Controller
public class Cafe {

	@Autowired
	private CafeService cafeService;

	// 카페 메인
	// 페이징
	@ResponseBody
	@RequestMapping(value = "/getCafeList", method = { RequestMethod.GET, RequestMethod.POST })
	public List<CafeVo> cafeMain(@RequestParam(value = "region", required = false, defaultValue = "전국") String region,
			@RequestParam(value = "startNum") int startNum) {
		System.out.println("cafe/getCafeList");
		System.out.println(startNum);

		List<CafeVo> cafeList = cafeService.cafeList(region, startNum);
		System.out.println(cafeList);

		return cafeList;
	}

	@RequestMapping(value = "", method = { RequestMethod.GET, RequestMethod.POST })
	public String cafeMain(HttpSession session, Model model,
			@RequestParam(value = "region", required = false, defaultValue = "전국") String region) {
		System.out.println("cafe/main");

		List<CafeVo> cafeList = cafeService.getCafeList(region);
		System.out.println(cafeList);
		model.addAttribute("cafeList", cafeList);

		return "cafe/cafeMain";
	}

	// 카페 상세페이지
	@RequestMapping(value = "/{cafeNo}", method = { RequestMethod.GET, RequestMethod.POST })
	public String cafeDetail(@PathVariable("cafeNo") int cafeNo, Model model) {
		System.out.println("cafeDetail");

		System.out.println(cafeNo);
		Map<Object, Object> detailMap = cafeService.getCafeDetail(cafeNo);

		model.addAttribute("detailMap", detailMap);

		return "cafe/cafeDetail";
	}

	// 테마 메인
	@RequestMapping(value = "/theme", method = { RequestMethod.GET, RequestMethod.POST })
	public String themeMain(Model model, @ModelAttribute ThemeSearchVo themeSearchVo) {
		System.out.println("themeMain");
		model.addAttribute("themeList", cafeService.themeSearchList(themeSearchVo));
		model.addAttribute("top10Theme", cafeService.get10Theme());
		System.out.println("top10Theme : " + cafeService.get10Theme());
		
		return "theme/themeMain";
	}
	
	// ajax 테마 검색
	@ResponseBody
	@RequestMapping(value = "/themeSearch", method = { RequestMethod.GET, RequestMethod.POST })
	public List<CafeVo> themeSearch(@RequestBody ThemeSearchVo themeSearchVo) {
		System.out.println("themeSearch");
		System.out.println("테마검색 themeSearchVo : "+themeSearchVo);
		
		return cafeService.themeSearchList(themeSearchVo);
	}

	// 페이징
	@ResponseBody
	@RequestMapping(value = "/getThemeList", method = { RequestMethod.GET, RequestMethod.POST })
	public List<CafeVo> getThemeList(
			@RequestParam(value = "keyword", required = false, defaultValue = "") String keyword,
			@RequestParam(value = "startNum") int startNum) {
		System.out.println("cafe/getThemeList");
		System.out.println(startNum);

		List<CafeVo> themeList = cafeService.getApiThemeList(keyword, startNum);
		System.out.println(themeList);

		return themeList;
	}

	// 테마 상세페이지
	@RequestMapping(value = "/theme/{themeNo}", method = { RequestMethod.GET, RequestMethod.POST })
	public String themeDetail(@PathVariable("themeNo") int themeNo, Model model) {
		System.out.println("themeDetail");

//	   Map<Object, Object> themeMap = cafeService.getTheme(themeNo);
//	   model.addAttribute("themeMap", themeMap);

		model.addAttribute("themeVo", cafeService.getOneTheme(themeNo));
		model.addAttribute("timeList", cafeService.getOneTime(themeNo));
		model.addAttribute("priceList", cafeService.getOnePrice(themeNo));
		model.addAttribute("reviewList", cafeService.getReviewList(themeNo));

		return "theme/themeDetail";
	}

}
