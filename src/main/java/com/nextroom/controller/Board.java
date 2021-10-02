package com.nextroom.controller;

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

import com.nextroom.service.ReviewBoardService;
import com.nextroom.vo.ReviewBoardVo;
import com.nextroom.vo.UserVo;

@RequestMapping("/board")
@Controller
public class Board {
	
	@Autowired
	private ReviewBoardService reviewBoardService;
	
	
	//자유게시판 리스트
	@RequestMapping("/freeCommunity")
	public String freeCommunity() {
		System.out.println("freeCommunity");
		
		return"board/freeCommunity";
	}
	
	/*
	//자유게시판 리스트
	@RequestMapping(value = "/freeCommunity", method = {RequestMethod.GET, RequestMethod.POST})
	public String freeCommunity(Model model, @RequestParam(value="keyword", required = false, defaultValue = "") String keyword) {
		System.out.println("freeCommunity");
		
		//사용자가 list요청
		List<ReviewBoardVo> reviewBoardVo = reviewBoardService.list(keyword);
		
		//jsp로 보냄
		model.addAttribute("reviewBoardVo", reviewBoardVo);
		
		
		return "board/freeCommunity";
	}*/
	
	//2021.10.02 by 원호
	//글 읽기
	@RequestMapping(value = "/readForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String readForm(Model model, @RequestParam("reviewNo") int reviewNo) {
		System.out.println("[reviewController.readForm]");
		System.out.println(reviewNo);
		
		ReviewBoardVo reviewBoardVo = reviewBoardService.getBoard(reviewNo);
		System.out.println(reviewBoardVo);
		
		model.addAttribute("reviewBoardVo",reviewBoardVo);
		return "board/readForm";
	}
	
	
	
	//글쓰기
	@RequestMapping("/writeForm")
	public String writeForm() {
		System.out.println("writeForm");
		return "board/writeForm";
	}
	
	
	//2021.09.30~10.01 by 원호
	//후기게시판 리스트,페이징
	@RequestMapping(value = "/reviewBoard", method = {RequestMethod.GET, RequestMethod.POST})
	public String reviewBoard(Model model, 
							  @RequestParam(value="keyword", required = false, defaultValue = "") String keyword,
							  @RequestParam(value="crtPage", required = false, defaultValue = "1")int crtPage) {
		System.out.println("reviewBoard");
		
		//사용자가 list요청
		Map<String, Object> reviewBoardList = reviewBoardService.reviewList(keyword, crtPage);
		System.out.println("[reviewController.reviewBoard]:" + reviewBoardList);
		
		//jsp로 보냄
		model.addAttribute("reviewBoardList", reviewBoardList);
		System.out.println("xml갔다온거:" + reviewBoardList);
		
		return "board/reviewBoard";
	}
	
	
	
	//후기글쓰기폼
	@RequestMapping("/reviewWriteForm")
	public String reviewWriteForm() {
		System.out.println("reviewWriteForm");
		return "board/reviewWriteForm";
	}
	
	//2021.09.28 by 원호
	//후기글등록
	@RequestMapping(value = "/reviewWrite", method = {RequestMethod.GET, RequestMethod.POST})
	public String reviewWrite(@ModelAttribute ReviewBoardVo reviewBoardVo, HttpSession session,
							  @RequestParam (value="recMin", required = false, defaultValue = "0") int minutes,
							  @RequestParam (value="recSec", required = false, defaultValue = "0") int secconds) {
		System.out.println("Controller.reviewWrite");
		
		
		reviewBoardVo.setRecTime((minutes*60)+secconds); 
		System.out.println("소요시간 제발" + reviewBoardVo.getRecTime());
		
		
		
		//세션에서 정보가져옴
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		System.out.println("authUser:" + authUser);
		
		//vo에 세션에서 가져온 no담기
		int no = authUser.getUserNo();
		reviewBoardVo.setUserNo(no);
		
		System.out.println(reviewBoardVo);
		reviewBoardService.reviewWrite(reviewBoardVo);
		
		
		
		return "redirect:/board/reviewBoard";
	}
	
	//2021.09.29 by 원호
	//sido로 cafeNo, cafeName가져오기
	@ResponseBody
	@RequestMapping(value = "/sido", method = {RequestMethod.GET, RequestMethod.POST})
	public List<ReviewBoardVo> cafeList(@RequestParam("sido") String sido){
		System.out.println("Controller.sido");
		System.out.println("Controller.sido:" + sido);
		
		List<ReviewBoardVo> cafeList = reviewBoardService.getCafeList(sido);
		
		return cafeList;
	}
	
	
	//2021.09.29 by 원호
	//cafeNo로 themeNo, themeName가져오기
	@ResponseBody
	@RequestMapping(value = "/cafe", method = {RequestMethod.GET, RequestMethod.POST})
	public List<ReviewBoardVo> themeList(@RequestParam("cafeNo") int cafeNo) {
		System.out.println("Controller.cafeNo");
		System.out.println("Controller.cafeNo: " + cafeNo);
		
		List<ReviewBoardVo> themeList = reviewBoardService.getThemeList(cafeNo);
		
		return themeList;
	}
	
	
	//쪽지 보내기
	@RequestMapping("/massageForm")
	public String massageForm() {
		System.out.println("massageForm");
		return "board/massageForm";
	}
}
