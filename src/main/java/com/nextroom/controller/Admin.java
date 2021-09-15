package com.nextroom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Admin {
	@RequestMapping("/adminRecord")
	public String cafe_main() {
	   System.out.println("cafe");
	   return "admin/admin_Record";
	}
}
