package com.nextroom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/reserve")
@Controller
public class Reserve {
	
	
	//예약 기본폼
	@RequestMapping("/reserveBaseForm")
	public String reserveBaseForm() {
		System.out.println("reserveBaseForm");
		return "reserve/reserveBaseForm";
	}
	
	
	//예약 정보
	@RequestMapping("/reserveInfoForm")
	public String reserveInfoForm() {
		System.out.println("reserveInfoForm");
		return "reserve/reserveInfoForm";
	}
	
	//예약 결제폼
	@RequestMapping("/reservePayForm")
	public String reservePayForm() {
		System.out.println("reservePayForm");
		return "reserve/reservePayForm";
	}
	
	//예약 완료
	@RequestMapping("/reserveComplete")
	public String reserveComplete() {
		System.out.println("reserveComplete");
		return "reserve/reserveComplete";
	}

}
