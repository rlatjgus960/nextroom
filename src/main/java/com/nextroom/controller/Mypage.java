package com.nextroom.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.nextroom.service.CafeService;
import com.nextroom.vo.CafeVo;

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
	
	//마이페이지 카페관리자 추가 by 서현
	@RequestMapping("/addCafe")
	public String addCafe(@RequestParam(value="userNo") int userNo,
						  @RequestParam(value="cafeName") String cafeName,
						  @RequestParam(value="cafeHp") String cafeHp,
						  @RequestParam(value="openTime") String openTime,
						  @RequestParam(value="closeTime") String closeTime,
						  @RequestParam(value="cafeIntro") String cafeIntro,
						  @RequestParam(value="url") String url,
						  @RequestParam(value="cafeImg") MultipartFile cafeImg,
						  @RequestParam(value="address") String address,
						  @RequestParam(value="addressDetail") String addressDetail,
						  @RequestParam(value="sido") String sido,
						  @RequestParam(value="sidoDetail") String sidoDetail,
						  @RequestParam(value="interiorImg") List<MultipartFile> inteList) {
		
		System.out.println("mypage/addCafe");
		
		CafeVo cafeVo = new CafeVo();
		
		cafeVo.setUserNo(userNo);
		cafeVo.setCafeName(cafeName);
		cafeVo.setCafeHp(cafeHp);
		cafeVo.setOpenTime(openTime);
		cafeVo.setCloseTime(closeTime);
		cafeVo.setCafeIntro(cafeIntro);
		cafeVo.setUrl(url);
		cafeVo.setCafeImg(cafeImg);
		cafeVo.setAddress(address);
		cafeVo.setAddressDetail(addressDetail);
		cafeVo.setSido(sido);
		cafeVo.setSidoDetail(sidoDetail);
		
		System.out.println(cafeVo);
		
		String printAddress = cafeVo.getAddress()+" "+cafeVo.getAddressDetail();
		
		cafeVo.setAddress(printAddress);
		
		System.out.println("주소붙인 후 : "+cafeVo);
		
		int count = cafeService.addCafe(cafeVo, inteList);
		
		System.out.println(count+"건 저장되었습니다.");
		
		return "mypage/addCafeOk";
	}
	
	
}
