package com.nextroom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/party")
@Controller
public class Party {
	
	//파티 리스트
	@RequestMapping("/partyList")
	public String partyList() {
		System.out.println("partyList");
		return "party/partyList";
	}
	
	//파티 읽기폼
	@RequestMapping("/partyRead")
	public String partyRead() {
		System.out.println("partyRead");
		return "party/partyRead";
	}
	
}
