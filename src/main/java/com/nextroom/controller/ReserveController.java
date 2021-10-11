package com.nextroom.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nextroom.service.ReserveService;
import com.nextroom.vo.ReserveVo;
import com.nextroom.vo.UserVo;

@RequestMapping(value="/reserve")
@Controller
public class ReserveController {
	
	@Autowired
	private ReserveService reserveService;
	
	//예약 기본폼
	@RequestMapping("/reserveBaseForm")
	public String reserveBaseForm(HttpSession session) {
		System.out.println("reserveBaseForm");
		
		UserVo userVo = (UserVo)session.getAttribute("authUser");
		
		if(userVo != null) {
			return "reserve/reserveBaseForm";
		} else {
			return "user/loginForm";
		}
		
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
	public String reserveInfoForm(HttpSession session, @ModelAttribute ReserveVo rVo, Model model) {
		System.out.println("reserveInfoForm");
		
		System.out.println(rVo);
		//reserveDate, cafeNo, themeNo, themeTimeNo
		
		UserVo userVo = (UserVo)session.getAttribute("authUser");
		
		if(userVo != null) {
			ReserveVo reserveVo = reserveService.getCafeThemeName(rVo);
			reserveVo.setReserveDate(rVo.getReserveDate());
			reserveVo.setThemeTime(rVo.getThemeTime());
			reserveVo.setThemeTimeNo(rVo.getThemeTimeNo());
			
			System.out.println("test" + reserveVo);
			
			List<ReserveVo> priceList = reserveService.getPrice(rVo);
			
			System.out.println("가격" + priceList);
			
			model.addAttribute("rInfoVo", reserveVo);
			model.addAttribute("pList", priceList);
			
			return "reserve/reserveInfoForm";
		} else {
			return "user/loginForm";
		}
	}
	
	//가격 정보
	@ResponseBody
	@RequestMapping("/getPrice")
	public ReserveVo getPrice(@ModelAttribute ReserveVo rVo) {
		System.out.println("getPrice");
		
		ReserveVo price = reserveService.getOnePrice(rVo);
		System.out.println("pppp" + price);
		
		return price;
	}
	
	//유저 아이디 확인
	@ResponseBody
	@RequestMapping("/idCheck")
	public ReserveVo idCheck(@RequestParam("id") String id) {
		System.out.println("idCheck");
		
		ReserveVo playerVo = reserveService.idCheck(id);
		System.out.println("playerVo" +playerVo);
		return playerVo;
	}
	
	//예약 결제폼
	@RequestMapping("/reservePayForm")
	public String reservePayForm(HttpSession session) {
		System.out.println("reservePayForm");
		UserVo userVo = (UserVo)session.getAttribute("authUser");
		
		if(userVo != null) {
			return "reserve/reservePayForm";
		} else {
			return "user/loginForm";
		}
		
	}
	
	//예약
	@RequestMapping("/reserveInsert")
	public String reserveInsert(HttpSession session, @RequestParam("cafeName") String cafeName,
								@RequestParam("themeName") String themeName, @RequestParam("reserveDate") String reserveDate,
								@RequestParam("themeTime") String themeTime, @RequestParam("reserveName") String reserveName,
								@RequestParam("reserveHp") String reserveHp, @RequestParam(value="playerId0", required = false, defaultValue="") String playerId0,
								@RequestParam(value="playerId1", required = false, defaultValue="") String playerId1, 
								@RequestParam(value="playerId2", required = false, defaultValue="") String playerId2,
								@RequestParam(value="playerId3", required = false, defaultValue="") String playerId3, 
								@RequestParam(value="playerId4", required = false, defaultValue="") String playerId4,
								@RequestParam(value="playerId5", required = false, defaultValue="") String playerId5, 
								@RequestParam(value="playerId6", required = false, defaultValue="") String playerId6,
								@RequestParam(value="playerId7", required = false, defaultValue="") String playerId7,
								@RequestParam(value="playerId8", required = false, defaultValue="") String playerId8,
								@RequestParam(value="playerId9", required = false, defaultValue="") String playerId9, 
								@RequestParam("headcount") String headCount, @RequestParam("payment") String payment,
								@RequestParam("cafeNo") String cafeNo, @RequestParam("themeNo") String themeNo) {
		System.out.println("reserveInsert");
		
		Map<String, Object> rMap = new HashMap<String, Object>();
		rMap.put("cafeName", cafeName);
		rMap.put("themeName", themeName);
		rMap.put("reserveDate", reserveDate);
		rMap.put("themeTime", themeTime);
		rMap.put("reserveName", reserveName);
		rMap.put("reserveHp", reserveHp);
		rMap.put("playerId0", playerId0);
		rMap.put("playerId1", playerId1);
		rMap.put("playerId2", playerId2);
		rMap.put("playerId3", playerId3);
		rMap.put("playerId4", playerId4);
		rMap.put("playerId5", playerId5);
		rMap.put("playerId6", playerId6);
		rMap.put("playerId7", playerId7);
		rMap.put("playerId8", playerId8);
		rMap.put("playerId9", playerId9);
		rMap.put("headCount", headCount);
		rMap.put("payment", payment);
		rMap.put("cafeNo", cafeNo);
		rMap.put("themeNo", themeNo);
		
		System.out.println(rMap);
		
		UserVo userVo = (UserVo)session.getAttribute("authUser");
		
		if(userVo != null) {
			rMap.put("userNo", userVo.getUserNo());
			ReserveVo reserveVo = reserveService.getReserveComplete(rMap);
			
			return "reserve/reserveComplete";
		} else {
			return "user/loginForm";
		}
		
	}
	
	//예약 완료
	@RequestMapping("/reserveComplete")
	public String reserveComplete() {
		System.out.println("reserveComplete");
		return "reserve/reserveComplete";
	}
	
	

}













