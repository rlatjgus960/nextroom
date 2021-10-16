package com.nextroom.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.nextroom.service.CafeService;
import com.nextroom.service.MypageService;
import com.nextroom.service.RankService;
import com.nextroom.vo.CafeVo;
import com.nextroom.vo.RatingVo;
import com.nextroom.vo.UserVo;

@Controller
@RequestMapping("/mypage")
public class Mypage {

	@Autowired
	private CafeService cafeService;
	
	@Autowired
	private MypageService mypageService;
	@Autowired
	private RankService rankService;
	
	// 마이페이지 메인
	@RequestMapping("/main")
	public String main(HttpSession session,Model model) {
		System.out.println("mypage/main");
		
		UserVo userVo = (UserVo)session.getAttribute("authUser");
		
		int userNo = userVo.getUserNo();
		
		RatingVo ratingVo = rankService.getMypageStat(userNo);
		
		Map<String,Object> mMap = new HashMap<String,Object>();
		
		mMap.put("ratingVo", ratingVo);
		
		model.addAttribute("mMap",mMap);
		
		return "mypage/main";
	}

	// 마이페이지 개인정보 수정
	@RequestMapping("/infoModifyForm")
	public String infoModifyForm() {
		System.out.println("mypage/infoModifyForm");
		return "mypage/infoModifyForm";
	}

	// 마이페이지 받은메시지
	@RequestMapping("/receiveMassage")
	public String receiveMassage() {
		System.out.println("mypage/receiveMassage");
		return "mypage/receiveMassage";
	}

	//21-10-11 by 대니
	// 마이페이지 파티관리
	@RequestMapping("/partyManage")
	public String mypageParty(HttpSession session, Model model,
							  @RequestParam(value = "crtPage", required = false, defaultValue = "1") int crtPage,
							  @RequestParam(value = "partyJoinSelect", required = false, defaultValue = "") String partyJoinSelect) {
		System.out.println("mypage/partyManage");
		
		System.out.println(partyJoinSelect);
		// 세션(로그인한 사용자)의 번호
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int userNo = authUser.getUserNo();
		
		Map<String, Object> mypagePartyManage = mypageService.mypagePartyManage(userNo, crtPage, partyJoinSelect);
		
		model.addAttribute("mypagePartyManage", mypagePartyManage);
		
		return "mypage/partyManage";
	}

	// 마이페이지 결제내역
	@RequestMapping("/payMent")
	public String payMent() {
		System.out.println("mypage/payMent");
		return "mypage/payMent";
	}

	// 마이페이지 보낸메시지
	@RequestMapping("/sendMassage")
	public String sendMassage() {
		System.out.println("mypage/sendMassage");
		return "mypage/sendMassage";
	}

	// 마이페이지 카페관리자 전환폼 by 서현
	@RequestMapping("/addCafeForm")
	public String addCafeForm() {
		System.out.println("mypage/addCafeForm");
		return "mypage/addCafeForm";
	}

	// 마이페이지 카페관리자 추가 by 서현
	@RequestMapping(value="/addCafe", method = { RequestMethod.GET, RequestMethod.POST })
	public String addCafe(@ModelAttribute CafeVo cafeVo, HttpSession session) {

		System.out.println("mypage/addCafe");
		
		String printAddress = cafeVo.getAddress() + " " + cafeVo.getAddressDetail();
		cafeVo.setPrintAddress(printAddress);
		
		int count = cafeService.addCafe(cafeVo);

		System.out.println(count + "건 저장되었습니다.");
		
		((UserVo) session.getAttribute("authUser")).setUserType("2");

		int cafeNo = cafeVo.getCafeNo();
		((UserVo) session.getAttribute("authUser")).setCafeNo(cafeNo);
		
		return "mypage/addCafeOk";
	}

}
