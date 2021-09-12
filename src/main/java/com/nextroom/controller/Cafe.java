package com.nextroom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class Cafe {
	

	@RequestMapping("/cafe")
	public String cafe_main() {
	   System.out.println("cafe");
	   return "cafe/cafe_main";
	}
	
	@RequestMapping("/cafe_detail")
	public String cafe_detail() {
	   System.out.println("cafe_detail");
	   return "cafe/cafe_detail";
	}

}
