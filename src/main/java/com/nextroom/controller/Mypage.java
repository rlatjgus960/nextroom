package com.nextroom.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.nextroom.service.CafeService;
import com.nextroom.vo.CafeVo;
import com.nextroom.vo.UserVo;

@Controller
@RequestMapping("/mypage")
public class Mypage {

	@Autowired
	private CafeService cafeService;

	// 마이페이지 메인
	@RequestMapping("/main")
	public String main() {
		System.out.println("mypage/main");
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

	// 마이페이지 파티관리
	@RequestMapping("/partyManage")
	public String mypageParty() {
		System.out.println("mypage/partyManage");
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
	@RequestMapping("/addCafe")
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
