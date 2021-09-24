package com.nextroom.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nextroom.service.UserService;
import com.nextroom.vo.UserVo;

@Controller
@RequestMapping(value="/user")

public class UserController {
	
	@Autowired
	private UserService userService;
	
	
	//로그인폼
	@RequestMapping("/loginForm")
	public String loginForm() {
		System.out.println("[UserController.loginForm()]");
		
		return "user/loginForm";
	}
	
	//로그인
	@RequestMapping(value="/login")
	public String login(@ModelAttribute UserVo userVo, HttpSession session) {
		System.out.println("[UserController.login()]");
		
		UserVo authUser = userService.getUser(userVo);
		System.out.println(authUser);
		
		if(authUser != null) { //로그인 성공하면
			System.out.println("[로그인성공]");
			session.setAttribute("authUser", authUser);
			return "redirect:/mypage/main"; 
		} else { //로그인 실패하면
			System.out.println("[로그인실패]");
			return "redirect:/user/loginForm";
		}
	}
	
	//로그아웃
	@RequestMapping(value="logout")
	public String logout(HttpSession session) {
		System.out.println("[UserController.logout()]");
		
		session.removeAttribute("authUser");
		session.invalidate();
		
		return "redirect:/user/loginForm";
	}
}
