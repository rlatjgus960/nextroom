package com.nextroom.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nextroom.service.CafeService;
import com.nextroom.vo.CafeVo;

@RequestMapping("/cafe")
@Controller
public class Cafe {
	
	@Autowired
	private CafeService cafeService;
	

	@RequestMapping(value="/", method = { RequestMethod.GET, RequestMethod.POST })
	public String cafeMain(HttpSession session, Model model) {
	   System.out.println("cafe/main");
	   	   
	   List<CafeVo> cafeList = cafeService.getCafeList();
	   System.out.println(cafeList);
	   model.addAttribute("cafeList", cafeList);
	   
	   return "cafe/cafeMain";
	}
	
	@RequestMapping(value="/{cafeNo}", method = { RequestMethod.GET, RequestMethod.POST })
	public String cafeDetail(@PathVariable("cafeNo") int cafeNo ) {
	   System.out.println("cafeDetail");
	   
	   
	   cafeService.getCafe(cafeNo);
	   //카페 상세페이지에 출력할 정보들 가져와야하는데 말입니다? 
	   //카페vo에 다 담아서 가져올지
	   //테마vo에 싹 담고 두개로 가져올지 근데 이거 두번 어트리뷰트가 되던가?
	   //아니면 테마도 가격이랑 시간표 따로 vo만들어서 조각조각 가져올지..... 역시 조인시켜서 테마vo하나로 싹 담아야되려나? 흠
	   
	   return "cafe/cafeDetail";
	}
	
	@RequestMapping(value="/theme", method = { RequestMethod.GET, RequestMethod.POST })
	public String themeMain() {
	   System.out.println("themeMain");
	   return "theme/themeMain";
	}
	
	@RequestMapping(value="/themeDetail", method = { RequestMethod.GET, RequestMethod.POST })
	public String themeDetail() {
	   System.out.println("themeDetail");
	   return "theme/themeDetail";
	}
	
}
