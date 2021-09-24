package com.nextroom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/user")

public class UserController {
	
	@RequestMapping("/login")
	public String login() {
		System.out.println("login");
		return "user/loginForm";
	}
}
