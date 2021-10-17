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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nextroom.service.CafeService;
import com.nextroom.service.MypageService;
import com.nextroom.service.RankService;
import com.nextroom.vo.CafeVo;
import com.nextroom.vo.RatingVo;
import com.nextroom.vo.RecordVo;
import com.nextroom.vo.ReserveVo;
import com.nextroom.vo.UserVo;

@Controller
@RequestMapping("/mypage")
public class MypageController {

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
	public String payMent(HttpSession session, Model model) {
		System.out.println("mypage/payMent");
		
		UserVo authUser = (UserVo) session.getAttribute("authUser");
		int userNo = authUser.getUserNo();
		
		List<ReserveVo> reseveList = mypageService.getReserveList(userNo);
		System.out.println("reseveList"+reseveList);
		
		model.addAttribute("reseveList", reseveList);
		
		
		return "mypage/payMent";
	}
	
	// 마이페이지 결제내역 - 모달
	@ResponseBody
	@RequestMapping("/payMentModal")
	public ReserveVo payMentModal(@RequestParam("reserveNo") int reserveNo) {
		System.out.println("mypage/payMent");
		
		
		ReserveVo reserveVo = mypageService.getReserveInfo(reserveNo);
		
		
		return reserveVo;
	}
	
	// 마이페이지 결제내역 - 모달
	@ResponseBody
	@RequestMapping("/getRecord")
	public List<RecordVo> getRecord(@RequestParam("gameNo") int gameNo) {
		System.out.println("mypage/getRecord");
		
		
		List<RecordVo> recordList = mypageService.getMyRecordList(gameNo);
		System.out.println(recordList);
		
		
		return recordList;
	}
	
	// 마이페이지 결제내역 - 모달(reservePeople)
	@ResponseBody
	@RequestMapping("/getTeamPlayer")
	public List<ReserveVo> getTeamPlayer(@RequestParam("reserveNo") int reserveNo) {
		System.out.println("mypage/getTeamPlayer");
		
		
		List<ReserveVo> teamPlayerList = mypageService.getTeamPlayer(reserveNo);
		System.out.println(teamPlayerList);
		
		
		return teamPlayerList;
	}
	
	// 마이페이지 결제내역 - 모달(아이디체크 버튼 클릭)
	@ResponseBody
	@RequestMapping("/idCheck")
	public ReserveVo idCheck(@RequestParam("id") String id) {
		System.out.println("mypage/idCheck");
		System.out.println(id);
		
		ReserveVo reserveVo = mypageService.idCheck(id);
		
		
		return reserveVo;
	}
	
	// 마이페이지 결제내역 - 모달(수정완료 버튼 클릭)
	@ResponseBody
	@RequestMapping("/idUpdateDelete")
	public int idUpdateDelete(@RequestParam("id") String id,
						@RequestParam("reserveNo") int reserveNo, @RequestParam("userNo") int userNo) {
		System.out.println("mypage/idUpdate");
		
		Map<String,Object> idMap = new HashMap<String,Object>();
		
		idMap.put("id", id);
		idMap.put("reserveNo", reserveNo);
		idMap.put("userNo", userNo);
		
		
		int count = mypageService.idUpdateDelete(idMap);
		
		
		return count;
	}
	
	// 마이페이지 결제내역 - 모달(수정완료 버튼 클릭)
		@ResponseBody
		@RequestMapping("/idUpdate")
		public int idUpdate(@RequestParam("id") String id,
							@RequestParam("reserveNo") int reserveNo, @RequestParam("userNo") int userNo) {
			System.out.println("mypage/idUpdate");
			
			Map<String,Object> idMap = new HashMap<String,Object>();
			
			idMap.put("id", id);
			idMap.put("reserveNo", reserveNo);
			idMap.put("userNo", userNo);
			
			
			int count = mypageService.idUpdate(idMap);
			
			
			return count;
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
