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
import com.nextroom.vo.FreeBoardVo;
import com.nextroom.vo.ReviewBoardVo;
import com.nextroom.vo.UserVo;

@RequestMapping("/board")
@Controller
public class Board {
	
	@Autowired
	private ReviewBoardService reviewBoardService;
	
	
	//자유게시판 글쓰기폼
	@RequestMapping("/writeForm")
	public String writeForm() {
		System.out.println("writeForm");
		return "board/writeForm";
	}
	
	
	//2021.10.07 by 원호
	//자유게시판 글등록
	@RequestMapping(value = "/boardWrite", method = {RequestMethod.GET, RequestMethod.POST})
	public String boardWrite(@ModelAttribute FreeBoardVo freeBoardVo, HttpSession session) {
		System.out.println("Controller.reviewWrite");
		
		//세션에서 정보가져옴
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		System.out.println("authUser:" + authUser);
		
		//vo에 세션에서 가져온 no담기
		int no = authUser.getUserNo();
		freeBoardVo.setUserNo(no);
		
		
		System.out.println(freeBoardVo);
		reviewBoardService.boardWrite(freeBoardVo);
		
		
		return "redirect:/board/freeCommunity";
	}
	
	//2021.10.07 by 원호
	//자유게시판 리스트,페이징
	@RequestMapping(value = "/freeCommunity", method = {RequestMethod.GET, RequestMethod.POST})
	public String freeBoard(Model model, 
							  @RequestParam(value="keyword", required = false, defaultValue = "") String keyword,
							  @RequestParam(value="crtPage", required = false, defaultValue = "1")int crtPage) {
		System.out.println("freeCommunity");
		
		//사용자가 list요청
		Map<String, Object> freeBoardList = reviewBoardService.boardList(keyword, crtPage);
		System.out.println("[reviewController.freeBoard]:" + freeBoardList);
		
		//jsp로 보냄
		model.addAttribute("freeBoardList", freeBoardList);
		System.out.println("xml갔다온거:" + freeBoardList);
		
		return "board/freeCommunity";
	}
	
	//2021.10.07 by 원호
	//자유게시판 글 읽기
	@RequestMapping(value = "/freeRead", method = {RequestMethod.GET, RequestMethod.POST})
	public String freeRead(Model model, @RequestParam("boardNo") int boardNo) {
		System.out.println("[reviewController.freeRead]");
		System.out.println(boardNo);
		
		FreeBoardVo freewBoardVo = reviewBoardService.freeRead(boardNo);
		System.out.println(freewBoardVo);
		
		model.addAttribute("freewBoardVo",freewBoardVo);
		
		return "board/freeRead";
	}
	
	//2021.10.08 by 원호
	//글삭제
	@ResponseBody
	@RequestMapping(value="freeDelete",method = {RequestMethod.GET, RequestMethod.POST})
	public int freeDelete(@RequestParam("boardNo") int boardNo) {
		System.out.println("Controller.reviewDelete");
		System.out.println("번호 왔냐?" + boardNo);
		
		int count = reviewBoardService.freeDelete(boardNo);
		System.out.println("갔다왔니?" + count);
		return count;
	}
	
	//2021.10.10 by 원호
	//자유게시판 리스트,페이징(인기순)
	@RequestMapping(value = "/freeCommunity/hot", method = {RequestMethod.GET, RequestMethod.POST})
	public String freeBoardhot(Model model, 
							  @RequestParam(value="keyword", required = false, defaultValue = "") String keyword,
							  @RequestParam(value="crtPage", required = false, defaultValue = "1")int crtPage) {
		System.out.println("freeCommunity/hot");
		
		//사용자가 list요청
		Map<String, Object> freeBoardList = reviewBoardService.boardHot(keyword, crtPage);
		System.out.println("[reviewController.freeBoard]:" + freeBoardList);
		
		//jsp로 보냄
		model.addAttribute("freeBoardList", freeBoardList);
		System.out.println("xml갔다온거:" + freeBoardList);
		
		return "board/freeCommunity";
	}

	//2021.10.10 by 원호
	//자유게시판 리스트,페이징(조회순)
	@RequestMapping(value = "/freeCommunity/Like", method = {RequestMethod.GET, RequestMethod.POST})
	public String freeBoardLike(Model model, 
							  @RequestParam(value="keyword", required = false, defaultValue = "") String keyword,
							  @RequestParam(value="crtPage", required = false, defaultValue = "1")int crtPage) {
		System.out.println("freeCommunity/hot");
		
		//사용자가 list요청
		Map<String, Object> freeBoardList = reviewBoardService.boardLike(keyword, crtPage);
		System.out.println("[reviewController.freeBoard]:" + freeBoardList);
		
		//jsp로 보냄
		model.addAttribute("freeBoardList", freeBoardList);
		System.out.println("xml갔다온거:" + freeBoardList);
		
		return "board/freeCommunity";
	}

//////////////////////////////////////////////////////////////////
/*후기 게시판*/
	//2021.10.02 by 원호
	//후기 게시판 글 읽기
	@RequestMapping(value = "/readForm", method = {RequestMethod.GET, RequestMethod.POST})
	public String readForm(Model model, @RequestParam("reviewNo") int reviewNo) {
		System.out.println("[reviewController.readForm]");
		System.out.println(reviewNo);
		
		ReviewBoardVo reviewBoardVo = reviewBoardService.getBoard(reviewNo);
		System.out.println(reviewBoardVo);
		
		model.addAttribute("reviewBoardVo",reviewBoardVo);
		System.out.println("정보 들어가있는거 내놔봐" + reviewBoardVo.getRecTime());
		
		return "board/readForm";
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
	
	//2021.10.10 by 원호
	//후기게시판 리스트,페이징(인기)
	@RequestMapping(value = "/reviewBoard/hot", method = {RequestMethod.GET, RequestMethod.POST})
	public String reviewBoardHot(Model model, 
							  @RequestParam(value="keyword", required = false, defaultValue = "") String keyword,
							  @RequestParam(value="crtPage", required = false, defaultValue = "1")int crtPage) {
		System.out.println("reviewBoard");
		
		//사용자가 list요청
		Map<String, Object> reviewBoardList = reviewBoardService.reviewHot(keyword, crtPage);
		System.out.println("[reviewController.reviewBoard]:" + reviewBoardList);
		
		//jsp로 보냄
		model.addAttribute("reviewBoardList", reviewBoardList);
		System.out.println("xml갔다온거:" + reviewBoardList);
		
		return "board/reviewBoard";
	}
	
	//2021.10.10 by 원호
	//후기게시판 리스트,페이징(조회)
	@RequestMapping(value = "/reviewBoard/Like", method = {RequestMethod.GET, RequestMethod.POST})
	public String reviewBoardLike(Model model, 
							  @RequestParam(value="keyword", required = false, defaultValue = "") String keyword,
							  @RequestParam(value="crtPage", required = false, defaultValue = "1")int crtPage) {
		System.out.println("reviewBoard");
		
		//사용자가 list요청
		Map<String, Object> reviewBoardList = reviewBoardService.reviewLike(keyword, crtPage);
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
		

		
		System.out.println("등록할 때 갔다온거 찍어보셈" + reviewBoardVo);
		reviewBoardService.reviewWrite(reviewBoardVo);
		System.out.println("등록할 때 갔다온거 찍어보셈" + reviewBoardVo);
		
		
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
	
	//2021.10.05 by 원호
	//글삭제
	@ResponseBody
	@RequestMapping(value="reviewDelete",method = {RequestMethod.GET, RequestMethod.POST})
	public int reviewDelete(@RequestParam("reviewNo") int reviewNo) {
		System.out.println("Controller.reviewDelete");
		System.out.println("번호 왔냐?" + reviewNo);
		
		int count = reviewBoardService.reviewDelete(reviewNo);
		System.out.println("갔다왔니?" + count);
		return count;
	}
	
	
	//2021.10.06 by 원호
	//글 수정폼
	@RequestMapping(value = "/reviewModify", method = {RequestMethod.GET, RequestMethod.POST})
	public String reviewModify(@RequestParam("reviewNo") int reviewNo, Model model, HttpSession session) {
		System.out.println("Controller.reviewModify");
		
		ReviewBoardVo reviewBoardVo = reviewBoardService.reviewModify(reviewNo);
		
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		System.out.println("유저정보 뭐냐" + authUser);
		
		if(authUser== null) {
			System.out.println("로그인 안한 경우");

			//포워드 하기전에 모델에 담아줌
			model.addAttribute("reviewBoardVo", reviewBoardVo);
			System.out.println("여기엔 뭐있노"+reviewBoardVo);
			return "redirect:/board/reviewBoard";
		}else
		
		
		//로그인한 사용자 == 글작성자
		if(reviewBoardVo.getUserNo() == authUser.getUserNo()) {
			System.out.println("자신의 글인 경우 수정폼 포워드");
			System.out.println("여기에 정보 있는거 가져와" + reviewBoardVo);
			
			model.addAttribute("reviewBoardVo", reviewBoardVo);
			return "board/reviewModify";
		}else {
			System.out.println("다른 사람의 글인 경우");
			return "redirect:/board/reviewBoard";
		}
	}
	
	//2010.10.07 by 원호
	//글 수정
	@RequestMapping(value="modify", method = {RequestMethod.GET, RequestMethod.POST})
	public String modify(@ModelAttribute ReviewBoardVo reviewBoardVo,  HttpSession session) {
		System.out.println("Controller.modify");
		System.out.println(reviewBoardVo);
		
		//로그인한 사용자만 수정
		UserVo authUser = (UserVo)session.getAttribute("authUser");
		reviewBoardVo.setUserNo(authUser.getUserNo());
		
		reviewBoardService.modify(reviewBoardVo);
		
		return "redirect:/board/reviewBoard";
	}
	
	
//	//2021.10.08 by 원호
//	//추천버튼시 추천수 올라감
//	@ResponseBody
//	@RequestMapping(value="upAndDown", method = {RequestMethod.GET, RequestMethod.POST})
//	public int upAndDown(@RequestParam("reviewNo") int reviewNo) {
//		System.out.println("추천버튼 누른거");
//		System.out.println(reviewNo);
//		
//		int count = reviewBoardService.upAndDown(reviewNo);
//		return count;
//	}
		
	
	//쪽지 보내기
	@RequestMapping("/massageForm")
	public String massageForm() {
		System.out.println("massageForm");
		return "board/massageForm";
	}
	
	
}
