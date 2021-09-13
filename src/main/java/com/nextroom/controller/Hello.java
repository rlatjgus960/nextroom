package com.nextroom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Hello {

	@RequestMapping("/hello")
	public String hello() {
		System.out.println("hello");
		return "user/mypage_main";
	}

	///////// 유저랭킹///////////
	@RequestMapping("/rankUser")
	public String rankUser() {
		System.out.println("hello");
		return "rank/rank_user";
	}

	//////// 테마랭킹////////////
	@RequestMapping("/rankTheme")
	public String rankTheme() {
		System.out.println("hello");
		return "rank/rank_theme";
	}

	////////개인상세////////////
	@RequestMapping("/userProfile")
	public String userProfile() {
		System.out.println("hello");
		return "rank/user_detail";
	}
	////////파티 리스트//////////
	@RequestMapping("/party")
	public String party() {
		System.out.println("hello");
		return "party/party_list";
	}
	
	////////파티 읽기폼//////////
	@RequestMapping("/partyRead")
	public String partyRead() {
		System.out.println("hello");
		return "party/party_read";
	}
	////////예약 기본폼//////////
	@RequestMapping("/reserveBaseForm")
	public String reserveBaseForm() {
		System.out.println("reserveBaseForm");
		return "reserve/reserveBaseForm";
	}
	
	////////예약 정보폼//////////
	@RequestMapping("/reserveInfoForm")
	public String reserveInfoForm() {
		System.out.println("reserveInfoForm");
		return "reserve/reserveInfoForm";
	}
	
	////////예약 결제폼//////////
	@RequestMapping("/reservePayForm")
	public String reservePayForm() {
		System.out.println("reservePayForm");
		return "reserve/reservePayForm";
	}
	////////예약 완료폼//////////
	@RequestMapping("/reserveComplete")
	public String reserveComplete() {
		System.out.println("reserveComplete");
		return "reserve/reserveComplete";
	}

}