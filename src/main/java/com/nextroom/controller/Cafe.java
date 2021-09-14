package com.nextroom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class Cafe {
	

	@RequestMapping("/cafe")
	public String cafe_main() {
	   System.out.println("cafe");
	   return "cafe/cafeMain";
	}
	
	@RequestMapping("/cafeDetail")
	public String cafe_detail() {
	   System.out.println("cafeDetail");
	   return "cafe/cafeDetail";
	}
	
	@RequestMapping("/theme")
	public String theme_main() {
	   System.out.println("themeMain");
	   return "theme/themeMain";
	}
	
	@RequestMapping("/themeDetail")
	public String themeDetail() {
	   System.out.println("themeDetail");
	   return "theme/themeDetail";
	}

}
