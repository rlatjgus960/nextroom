package com.nextroom.controller;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.nextroom.service.CafeService;
import com.nextroom.vo.CafeVo;
import com.nextroom.vo.UserVo;


@Controller
@RequestMapping("/admin")
public class Admin {
	
	@Autowired
	private CafeService cafeService;
	
	//관리자페이지 예약확인
	@RequestMapping("/reserve")
	public String adminReserve() {
		System.out.println("reserve");
		return "admin/reserve";
	}
	
	//관리자페이지 예약관리
	@RequestMapping("/reserveTime")
	public String reserveTime() {
		System.out.println("reserveTime");		
		return "admin/reserveTime";
	}
	
	
	//관리자페이지 카페수정폼
	@RequestMapping("/cafeModifyForm")
	public String cafeModifyForm(HttpSession session, Model model) {
	   System.out.println("cafeModifyForm");
	   
	   int cafeNo = ((UserVo)session.getAttribute("authUser")).getCafeNo();
	   System.out.println(cafeNo);
	   
	   CafeVo cafeVo = cafeService.getCafe(cafeNo);

	   model.addAttribute("cafeVo", cafeVo);
	   
	   return "admin/cafeModifyForm";
	}
	
	//관리자페이지 테마리스트
	@RequestMapping("/themeList")
	public String themeList() {
	   System.out.println("themeList");
	   return "admin/themeList";
	}
	
	//관리자페이지 테마삭제폼
	@RequestMapping("/themeDeleteForm")
	public String themeDeleteForm() {
	   System.out.println("themeDeleteForm");
	   return "admin/themeDeleteForm";
	}
	
	//관리자페이지 테마수정폼
	@RequestMapping("/themeModifyForm")
	public String themeModifyForm() {
	   System.out.println("themeModifyForm");
	   return "admin/themeModifyForm";
	}
	
	//관리자페이지 테마추가
	@RequestMapping("/addTheme")
	public String addTheme() {
	   System.out.println("addTheme");
	   return "admin/addTheme";
	}
	
	
}
