package com.nextroom.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
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
	//sido로 카페No, 카페이름가져오기
	@ResponseBody
	@RequestMapping(value = "/sido", method = {RequestMethod.GET, RequestMethod.POST})
	public List<PartyVo> cafeList(@RequestParam("sido") String sido) {
		
		System.out.println("파티 시도넘어오기: " + sido);
		
		List<PartyVo> cafeList = partyService.getCafeList(sido);
		
		return cafeList;
	}
	
	
	//21-09-27 by 대니
	//cafeNo로 테마NO, 테마이름가져오기
	@ResponseBody
	@RequestMapping(value = "/cafe", method = {RequestMethod.GET, RequestMethod.POST})
	public List<PartyVo> themeList(@RequestParam("cafeNo") int cafeNo) {
		
		System.out.println("컨트롤러 파티 카페넘버 넘어오기: " + cafeNo);
		
		List<PartyVo> themeList = partyService.getThemeList(cafeNo);
		
		return themeList;
	}
	
	
	//21-09-28 by 대니
	//themeNo로 시간표 가져오기
	@ResponseBody
	@RequestMapping(value = "/theme", method = {RequestMethod.GET, RequestMethod.POST})
	public List<PartyVo> themeTimeList(@RequestParam("themeNo") int themeNo) {
		
		System.out.println("컨트롤러 파티 테마넘버 넘어오기: " + themeNo);
		
		List<PartyVo> themeTimeList = partyService.getThemeTimeList(themeNo);
		
		return themeTimeList;
	}
	
	
	//21-09-28 by 대니
	//파티등록폼에서 넘어온 정보로 파티리스트 인서트!
	@RequestMapping(value= "/partyWrite", method = {RequestMethod.GET, RequestMethod.POST})
	public String partyWrite(@ModelAttribute PartyVo partyVo) {
		System.out.println("파티등록INSERT: " + partyVo);
		
		
		return null;
	}
	
}
