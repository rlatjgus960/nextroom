package com.nextroom.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nextroom.service.ReserveService;
import com.nextroom.vo.ReserveVo;

@RequestMapping(value="/reserve")
@Controller
public class ReserveController {
	
	@Autowired
	private ReserveService reserveService;
	
	//예약 기본폼
	@RequestMapping("/reserveBaseForm")
	public String reserveBaseForm() {
		System.out.println("reserveBaseForm");
		return "reserve/reserveBaseForm";
	}
	
	//지역별 카페리스트
	@ResponseBody
	@RequestMapping("/getCafe")
	public List<ReserveVo> getCafe(@RequestParam("sidoDetail") String sidoDetail) {
		System.out.println("getCafe");
		
		List<ReserveVo> cafeList = reserveService.getCafeList(sidoDetail);
		
		return cafeList;
	}
	
	//카페별 테마리스트
	@ResponseBody
	@RequestMapping("/getTheme")
	public List<ReserveVo> getTheme(@RequestParam("cafeNum") int cafeNum) {
		System.out.println("getTheme");
		
		List<ReserveVo> themeList = reserveService.getTheme(cafeNum);
		
		return themeList;
	}
	
	//테마별 시간리스트
	@ResponseBody
	@RequestMapping("/getTime")
	public List<ReserveVo> getTime(@RequestParam("themeNo") int themeNo,
									@RequestParam("reserveDate") String reserveDate) {
		System.out.println("getTheme");
		
		Map<String, Object> tMap = new HashMap<String, Object>();
		tMap.put("themeNo", themeNo);
		tMap.put("reserveDate", reserveDate);
		
		List<ReserveVo> themeList = reserveService.getTime(tMap);
		
		return themeList;
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
