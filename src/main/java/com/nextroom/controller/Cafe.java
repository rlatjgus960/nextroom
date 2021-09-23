package com.nextroom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/cafe")
@Controller
public class Cafe {
	

	@RequestMapping("/")
	public String cafeMain() {
	   System.out.println("cafe");
	   return "cafe/cafeMain";
	}
	
	@RequestMapping("/cafeDetail")
	public String cafeDetail() {
	   System.out.println("cafeDetail");
	   return "cafe/cafeDetail";
	}
	
	@RequestMapping("/theme")
	public String themeMain() {
	   System.out.println("themeMain");
	   return "theme/themeMain";
	}
	
	@RequestMapping("/themeDetail")
	public String themeDetail() {
	   System.out.println("themeDetail");
	   return "theme/themeDetail";
	}

}
