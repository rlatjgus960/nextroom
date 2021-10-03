package com.nextroom.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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
import com.nextroom.vo.UserVo;

@Controller
@RequestMapping(value="/admin/reserve")

public class AdminReserveController {
	
	@Autowired
	private AdminReserveService adminService;
	
	//관리자페이지 예약관리
	@RequestMapping("/timeManage/{cafeNo}")
	public String timeManage(Model model, @PathVariable("cafeNo") int cafeNo,
							@RequestParam(value="themeNo", required = false, defaultValue="-1") int themeNo,
							@RequestParam(value="reserveDate", required = false, defaultValue="-1") String reserveDate,
							HttpSession session) {
		System.out.println("timeManage");
		
		//테마 정보
		List<AdminReserveVo> adminThemeList = adminService.getTheme(cafeNo);
		//System.out.println(adminThemeList);
		
		UserVo userVo = (UserVo)session.getAttribute("authUser");
		
		if(userVo != null) {
			if(userVo.getCafeNo() == cafeNo) {
				//System.out.println(reserveDate.equals("-1"));
				if(!reserveDate.equals("-1")) {
					Map<String, Object> rMap = new HashMap<String, Object>();
					rMap.put("reserveDate", reserveDate);
					rMap.put("themeNo", themeNo);
					
					//테마별 시간정보
					//System.out.println(reserveDate);
					List<AdminReserveVo> themeTimeList = adminService.getTime(rMap);
					//System.out.println(themeTimeList);
					model.addAttribute("timeList", themeTimeList);
				}
				
				
				model.addAttribute("themeList", adminThemeList);
				model.addAttribute("cafeNo", cafeNo);
				model.addAttribute("themeNo", themeNo);
				model.addAttribute("reserveDate", reserveDate);
				
				return "admin/reserveTime";
			}
		}
		return "mypage/main";
		
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
	
	
	//예약확인 페이지
	@RequestMapping("/reserveConfirm/{cafeNo}")
	public String reserveConfirm(Model model, @PathVariable("cafeNo") int cafeNo,
								@RequestParam(value="themeNo", required = false, defaultValue="-1") int themeNo,
								@RequestParam(value="reserveDate", required = false, defaultValue="-1") String reserveDate,
								HttpSession session) {
		System.out.println("reserveConfirm");
		
		System.out.println(reserveDate);
		//테마 정보
		List<AdminReserveVo> adminThemeList = adminService.getTheme(cafeNo);
		//System.out.println(adminThemeList);
		
		UserVo userVo = (UserVo)session.getAttribute("authUser");
		
		if(userVo != null) {
			
			if(userVo.getCafeNo() == cafeNo) {
				if(themeNo == -1 || "-1".equals(reserveDate) ) {
					//모든 예약정보 뿌리기
					List<AdminReserveVo> themeReserveList = adminService.getResevInfo(cafeNo);
					model.addAttribute("themeReserveList", themeReserveList);
				}
				
				//System.out.println(reserveDate.equals("-1"));
				if(!reserveDate.equals("-1")) {
					Map<String, Object> rMap = new HashMap<String, Object>();
					rMap.put("reserveDate", reserveDate);
					rMap.put("themeNo", themeNo);
					
					//테마별 예약정보
					List<AdminReserveVo> themeReserveList = adminService.getResevInfo(rMap);
					model.addAttribute("themeReserveList", themeReserveList);
					System.out.println("themeReserveList : " + themeReserveList);
					
					
				}
				
				
				model.addAttribute("themeList", adminThemeList);
				model.addAttribute("cafeNo", cafeNo);
				model.addAttribute("themeNo", themeNo);
				model.addAttribute("reserveDate", reserveDate);
				
				return "admin/reserve";
			}
		}
		
		return "mypage/main";
	}
	
	
	//관리자 예약확인 모달페이지
	@ResponseBody
	@RequestMapping("/reserveModal")
	public AdminReserveVo reserveModal(@RequestParam("reserveNo") int reserveNo) {
		System.out.println("modal");
		
		AdminReserveVo reserveModalVo = adminService.getReserveDetailInfo(reserveNo);
		System.out.println(reserveModalVo);
		
		return reserveModalVo;
	}
	
	//예약취소
	@ResponseBody
	@RequestMapping("/delReserve")
	public int delReserve(@RequestParam("reserveNo") int reserveNo) {
		System.out.println("delReserve");
		
		int count = adminService.delReserve(reserveNo);
		System.out.println(count);
		
		return count;
	}
	
	
	//입실확인
	@ResponseBody
	@RequestMapping("/checkIn")
	public int checkIn(@ModelAttribute AdminReserveVo adminVo) {
		System.out.println("checkIn");
		
		int count = adminService.checkIn(adminVo);
		//System.out.println(count);
		
		return count;
	}
	
	

}
