package com.nextroom.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nextroom.service.PartyService;
import com.nextroom.vo.PartyVo;

@RequestMapping("/party")
@Controller
public class Party {
	
	@Autowired
	private PartyService partyService;
	
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
	
	//21-09-26 by 대니
	//sido로 카페가져오기
	@ResponseBody
	@RequestMapping(value = "/sido", method = {RequestMethod.GET, RequestMethod.POST})
	public List<PartyVo> cafeList(@RequestParam("sido") String sido) {
		
		System.out.println("파티 시도넘어오기: " + sido);
		
		List<PartyVo> cafeList = partyService.getCafeList(sido);
		
		return null;
	}
	
}
