package com.nextroom.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
	public String login(@ModelAttribute UserVo userVo, @RequestParam(value="rKey", required = false, defaultValue = "") String rKey, HttpSession session) {
		System.out.println("[UserController.login()]");
		
		UserVo authUser = userService.getUser(userVo);
		System.out.println(authUser);
		System.out.println(rKey);
		
		if(authUser != null) { //로그인 성공하면
			System.out.println("[로그인성공]");
			
			if(authUser.getUserType().equals("2")) { // userType 2 -> 업체관리자
				int cafeNo = userService.getCafeNo(userVo);
				System.out.println(cafeNo);
				authUser.setCafeNo(cafeNo);
			}
			
			session.setAttribute("authUser", authUser);
			
			if(("themeReserve").equals(rKey)) {
				return "redirect:/cafe/theme";
			}else if(("cafeReserve").equals(rKey)){
				return "redirect:/cafe/"+authUser.getCafeNo(); 
			}
			else if(("party").equals(rKey)) {
				return "redirect:/party/partyList";
			}
			else{
				return "redirect:/mypage/main"; 
			}
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
	
	//회원가입폼
	@RequestMapping(value = "/joinForm")
	public String joinForm() {
		System.out.println("유컨-가입폼");

		return "user/joinForm";
	}
	
	@RequestMapping(value = "/join")
	public String joinOk(@ModelAttribute UserVo userVo,
						 @RequestParam(value="emailDetail")String emailDetail) {
		
		userVo.setEmail(userVo.getEmail()+"@"+emailDetail);
		System.out.println("유컨-조인 " + userVo);
		
		userService.addUser(userVo);

		return "user/joinSuccess";
	}
	
	@RequestMapping(value = "/joinSuccess")
	public String joinOk() {
		
		

		return "user/joinSuccess";
	}
}
