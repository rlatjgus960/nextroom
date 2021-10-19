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

import com.nextroom.service.ReserveService;
import com.nextroom.vo.ReserveVo;
import com.nextroom.vo.UserVo;

@Controller
@RequestMapping(value="/admin/reserve")

public class AdminReserveController {
	
	@Autowired
	private ReserveService reserveService;
	
	//관리자페이지 예약관리
	@RequestMapping("/timeManage/{cafeNo}")
	public String timeManage(Model model, @PathVariable("cafeNo") int cafeNo,
							@RequestParam(value="themeNo", required = false, defaultValue="-1") int themeNo,
							@RequestParam(value="reserveDate", required = false, defaultValue="-1") String reserveDate,
							HttpSession session) {
		System.out.println("timeManage");
		
		//테마 정보
		List<ReserveVo> adminThemeList = reserveService.getThemeForReserve(cafeNo);
		
		List<ReserveVo> disableThemeList = reserveService.getDisableTheme(cafeNo);
		System.out.println(disableThemeList);
		
		adminThemeList.addAll(disableThemeList);
		
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
					List<ReserveVo> themeTimeList = reserveService.getTime(rMap);
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
	public int timeModify(@ModelAttribute ReserveVo adminVo) {
		System.out.println("timeModify");
		System.out.println(adminVo);
		//cafeNo, themeNo, themeTimeNo, reserveDate, reserveTime
		
		int count = reserveService.timeModify(adminVo);
		System.out.println(count);
		
		return count;
	}
	
	
	//예약확인 페이지
	@RequestMapping("/reserveConfirm/{cafeNo}")
	public String reserveConfirm(Model model, @PathVariable("cafeNo") int cafeNo,
								@RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage,
								@RequestParam(value="themeNo", required = false, defaultValue="-1") int themeNo,
								@RequestParam(value="reserveDate", required = false, defaultValue="-1") String reserveDate,
								HttpSession session) {
		System.out.println("reserveConfirm");
		
		Map<String, Object> rMap = new HashMap<String, Object>();
		rMap.put("reserveDate", reserveDate);
		rMap.put("themeNo", themeNo);
		rMap.put("cafeNo", cafeNo);
		
		System.out.println(reserveDate);
		//테마 정보
		List<ReserveVo> adminThemeList = reserveService.getThemeForReserve(cafeNo);
		//System.out.println(adminThemeList);
		
		List<ReserveVo> disableThemeList = reserveService.getDisableTheme(cafeNo);
		System.out.println(disableThemeList);
		
		adminThemeList.addAll(disableThemeList);
		
		UserVo userVo = (UserVo)session.getAttribute("authUser");
		
		if(userVo != null) {
			
			if(userVo.getCafeNo() == cafeNo) {
				Map<String, Object> listMap = reserveService.getResevInfo(rMap, crtPage);
				
				model.addAttribute("listMap", listMap);
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
	public ReserveVo reserveModal(@RequestParam("reserveNo") int reserveNo) {
		System.out.println("modal");
		
		ReserveVo reserveModalVo = reserveService.getReserveDetailInfo(reserveNo);
		System.out.println(reserveModalVo);
		
		return reserveModalVo;
	}
	
	//예약취소
	@ResponseBody
	@RequestMapping("/delReserve")
	public int delReserve(@RequestParam("reserveNo") int reserveNo) {
		System.out.println("delReserve");
		
		int count = reserveService.delReserve(reserveNo);
		System.out.println(count);
		
		return count;
	}
	
	
	//입실확인
	@ResponseBody
	@RequestMapping("/checkIn")
	public int checkIn(@ModelAttribute ReserveVo adminVo) {
		System.out.println("checkIn");
		
		int count = reserveService.checkIn(adminVo);
		//System.out.println(count);
		
		return count;
	}
	
	//입실확인
	@ResponseBody
	@RequestMapping("/btnCheckIn")
	public ReserveVo btnCheckIn(@RequestParam("reserveNo") int reserveNo) {
		System.out.println("btnCheckIn");
		
		ReserveVo preR = reserveService.btnCheckIn(reserveNo);
		//System.out.println(count);
		
		return preR;
	}
	
	

}
