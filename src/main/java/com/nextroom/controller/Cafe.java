package com.nextroom.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nextroom.service.CafeService;
import com.nextroom.vo.CafeVo;
import com.nextroom.vo.PriceVo;

@RequestMapping("/cafe")
@Controller
public class Cafe {
	
	@Autowired
	private CafeService cafeService;
	

	//카페 메인
	@RequestMapping(value="/", method = { RequestMethod.GET, RequestMethod.POST })
	public String cafeMain(HttpSession session, Model model) {
	   System.out.println("cafe/main");
	   	   
	   List<CafeVo> cafeList = cafeService.getCafeList();
	   System.out.println(cafeList);
	   model.addAttribute("cafeList", cafeList);
	   
	   return "cafe/cafeMain";
	}
	
	//카페 상세페이지
	@RequestMapping(value="/{cafeNo}", method = { RequestMethod.GET, RequestMethod.POST })
	public String cafeDetail(@PathVariable("cafeNo") int cafeNo, Model model) {
	   System.out.println("cafeDetail");
	   
	   
	   Map<Object, Object> detailMap = cafeService.getCafeDetail(cafeNo);
	   
	   
	   model.addAttribute("detailMap", detailMap);
	   
	   
	   return "cafe/cafeDetail";
	}
	
	//테마 메인
	@RequestMapping(value="/theme", method = { RequestMethod.GET, RequestMethod.POST })
	public String themeMain() {
	   System.out.println("themeMain");
	   return "theme/themeMain";
	}
	
	//테마 상세페이지
	@RequestMapping(value="/themeDetail", method = { RequestMethod.GET, RequestMethod.POST })
	public String themeDetail() {
	   System.out.println("themeDetail");
	   return "theme/themeDetail";
	}
	
	
}
