package com.nextroom.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	//themeNo, cafeNo로 시간표 가져오기  --->>***수정해야함
	@ResponseBody
	@RequestMapping(value = "/theme", method = {RequestMethod.GET, RequestMethod.POST})
	public List<PartyVo> themeTimeList(@ModelAttribute PartyVo partyVo) {
		
		System.out.println("컨트롤러 파티 테마넘버 넘어오기: " + partyVo);
		
		List<PartyVo> themeTimeList = partyService.getThemeTimeList(partyVo);
		
		return themeTimeList;
	}
	
	
	//21-09-29 by 대니
	//파티등록폼에서 넘어온 정보로 파티리스트 인서트!
	@RequestMapping(value = "partyWrite", method = {RequestMethod.GET, RequestMethod.POST})
	public String partyWrite(@ModelAttribute PartyVo partyVo) {
		System.out.println("파티등록INSERT: " + partyVo);
		
		int count = partyService.addPartyList(partyVo);
		
		System.out.println("컨트롤러자바인서트: " + count);
		
		return "redirect:/party/partyList";
	}
	
	
	//21-10-01~21-10-02 by 대니
	//파티등록 리스트 목록 출력하기
//	@RequestMapping(value = "/partyList", method = {RequestMethod.GET, RequestMethod.POST})
//	public String partyList(Model model) {
//		System.out.println("파티컨트롤러: partyList");
//		
//		List<PartyVo> partyList = partyService.getPartyList();
//		
//		model.addAttribute("partyList", partyList);
//		
//		return "party/partyList";
//	}
	
	
	//21-10-08 by 대니
	//파티등록 리스트 목록 출력하기(페이징 + 검색)
	@RequestMapping(value = "/partyList", method = {RequestMethod.GET, RequestMethod.POST})
	public String partyList(Model model,
							@RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage,
							@RequestParam(value = "keyword", required = false, defaultValue = "") String keyword,
							@RequestParam(value = "partyView", required = false, defaultValue = "") String partyView) {
		System.out.println("파티컨트롤러: partyList");
		System.out.println("씨알티페이지: " + crtPage);
		System.out.println("키워드: " + keyword);
		System.out.println("파티뷰: " + partyView);
		Map<String, Object> partyAllListMap = partyService.getPartyList(crtPage, keyword, partyView);
		
		model.addAttribute("partyAllListMap", partyAllListMap);
		
		return "party/partyList";
	}
	
	
	//21-10-03 by 대니
	//리스트에서 넘어온 파티No로 partyRead에 정보 뿌려주기
	@RequestMapping(value= "/partyRead", method = {RequestMethod.GET, RequestMethod.POST})
	public String partyRead(@RequestParam("partyNo") int partyNo, Model model) {
		System.out.println("파티리드 컨트롤러 pNo: " + partyNo);
		
		Map<String, Object> pReadMap = partyService.getPartyReadList(partyNo);
		
		System.out.println("파티컨트롤러구간 맵이다: " + pReadMap);
		
		model.addAttribute("pReadMap", pReadMap);
		
		return "party/partyRead";
	}
	
	
	//21-10-05 by 대니
	//partyRead에서 파티삭제를 위한 partyNo 받기
	@ResponseBody
	@RequestMapping(value="/partyDelete", method = {RequestMethod.GET, RequestMethod.POST})
	public int partyDelete(@RequestParam("partyNo") int partyNo) {
		System.out.println("파티삭제위한 파티NO: " + partyNo);
		
		int count = partyService.partyDelete(partyNo);
		
		return count;
	}
	
	
	//21-10-05 by 대니
	//partyRead에서 참여자가 참여신청을 눌렀을 경우
	@ResponseBody
	@RequestMapping(value = "/addPartyApplicant", method = {RequestMethod.GET, RequestMethod.POST})
	public boolean addPartyApplicant(@ModelAttribute PartyVo partyVo) {
		System.out.println("참가자 파티참여: " + partyVo);
		
		boolean result = partyService.addPartyApplicant(partyVo);
		
		return result;
	}
	
	
	//21-10-06 by 대니
	//partyRead에서 참여자가 참가취소를 눌렀을 경우
	@ResponseBody
	@RequestMapping(value = "/cancelPartyApplicant", method = {RequestMethod.GET, RequestMethod.POST})
	public boolean cancelPartyApplicant(@ModelAttribute PartyVo partyVo) {
		System.out.println("참가자 참가취소: " + partyVo);
		
		boolean result = partyService.cancelPartyApplicant(partyVo);
		
		return result;
	}
	
	
	//21-10-06 by 대니
	//방장이 대기자 O버튼을 눌렀을 경우
	@ResponseBody
	@RequestMapping(value = "/agreeMember", method = {RequestMethod.GET, RequestMethod.POST})
	public boolean agreeMember(@ModelAttribute PartyVo partyVo) {
		System.out.println("어그리멤버: " + partyVo);
		
		boolean result = partyService.agreeMember(partyVo);
		
		return result;
	}
	
	
	//21-10-06 by 대니
	//방장이 partyDetail에서 멤버취소를 눌렀을 경우
	@ResponseBody
	@RequestMapping(value = "/exceptDetailMember", method = {RequestMethod.GET, RequestMethod.POST})
	public boolean exceptDetailMember(@ModelAttribute PartyVo partyVo) {
		
		System.out.println("파티디테일 멤버추방: " + partyVo);
		
		boolean result = partyService.exceptDetailMember(partyVo);
		
		return result;
		
	}
	
	
	//21-10-07 by 대니
	//방장이 자신의 파티에서 모집완료 버튼을 클릭했을경우
	@ResponseBody
	@RequestMapping(value = "/partyComplete", method = {RequestMethod.GET, RequestMethod.POST})
	public boolean partyComplete(@ModelAttribute PartyVo partyVo) {
		
		System.out.println("모집완료버튼을 클릭했을때: " + partyVo);
		
		boolean result = partyService.partyCompleteUdate(partyVo);
		
		return result;
	}
	
	//21-10-07 by 대니
	//방장이 자신의 파티에서 모집중 버튼을 클릭했을경우
	@ResponseBody
	@RequestMapping(value = "/partyWorking", method = {RequestMethod.GET, RequestMethod.POST})
	public boolean partyWorking(@ModelAttribute PartyVo partyVo) {
		
		System.out.println("모집중버튼을 클릭했을때: " + partyVo);
		
		boolean result = partyService.partyWorkingUdate(partyVo);
		
		return result;
	}
	
	
	//21-10-08 by 대니
	//방장이 예약하기 버튼을 클릭했을때
	@ResponseBody
	@RequestMapping(value = "/partyReserveCheck", method = {RequestMethod.GET, RequestMethod.POST})
	public boolean partyReserveCheck(@ModelAttribute PartyVo partyVo) {
		
		System.out.println("예약하기 버튼클릭: " + partyVo);
		
		boolean result = partyService.partyReserveCheck(partyVo);
		
		System.out.println(result);
		
		return result;
	}
	
	
	//21-10-10 by 대니
	//방장이 모집완료된 파티의 예약하기를 눌렀을 경우
	@ResponseBody
	@RequestMapping(value = "/partyReserve", method = {RequestMethod.GET, RequestMethod.POST})
	public String partyReserve(@ModelAttribute PartyVo partyVo, Model model) {
		
		System.out.println("모집완료된 예약하기버튼: " + partyVo);
		
		
		Map<String, Object> partyReserveInfo = partyService.partyReserve(partyVo);
		
		model.addAttribute("partyReserveInfo", partyReserveInfo);
		
		return null;
	}
	
	
}
