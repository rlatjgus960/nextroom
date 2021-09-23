package com.nextroom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/admin")
public class Admin {
	
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
	
	//관리자페이지 기록관리
	@RequestMapping("/record")
	public String record() {
	   System.out.println("record");
	   return "admin/record";
	}
	
	//관리자페이지 기록수정
	@RequestMapping("/recordModify")
	public String recordModify() {
	   System.out.println("recordModify");
	   return "admin/recordModify";
	}
	
	//관리자페이지 카페수정폼
	@RequestMapping("/cafeModifyForm")
	public String cafeModifyForm() {
	   System.out.println("cafeModifyForm");
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
