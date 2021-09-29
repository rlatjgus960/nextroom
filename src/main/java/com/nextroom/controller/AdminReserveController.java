package com.nextroom.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nextroom.service.AdminReserveService;
import com.nextroom.vo.AdminReserveVo;

@Controller
@RequestMapping(value="/admin/reserve")

public class AdminReserveController {
	
	@Autowired
	private AdminReserveService adminService;
	
	//관리자페이지 예약관리
	@RequestMapping("/timeManage/{cafeNo}")
	public String timeManage(Model model, @PathVariable("cafeNo") int cafeNo,
							@RequestParam(value="themeNo", required = false, defaultValue="-1") int themeNo) {
		System.out.println("timeManage");
		
		//테마 정보
		List<AdminReserveVo> adminThemeList = adminService.getTheme(cafeNo);
		//System.out.println(adminThemeList);
		
		//테마별 시간정보
		List<AdminReserveVo> themeTimeList = adminService.getTime(themeNo);
		//System.out.println(themeTimeList);
		
		model.addAttribute("themeList", adminThemeList);
		model.addAttribute("timeList", themeTimeList);
		model.addAttribute("cafeNo", cafeNo);
		model.addAttribute("themeNo", themeNo);
		
		return "admin/reserveTime";
	}
	
	
	//예약 수정 페이지
	@ResponseBody
	@RequestMapping("/timeModify")
	public int timeModify(@ModelAttribute AdminReserveVo adminVo) {
		System.out.println("timeModify");
		System.out.println(adminVo);
		//cafeNo, themeNo, themeTimeNo, reserveDate, reserveTime
		
		int count = adminService.timeModify(adminVo);
		System.out.println(count);
		
		return count;
	}
	
	
	
	

}
