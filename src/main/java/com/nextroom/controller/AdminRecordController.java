package com.nextroom.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nextroom.service.RecordService;
import com.nextroom.vo.PreRecordVo;
import com.nextroom.vo.RecordVo;
import com.nextroom.vo.UserVo;

@Controller
@RequestMapping("/admin/record")
public class AdminRecordController {

	@Autowired
	RecordService recordService;

	@RequestMapping("/{cafeNo}")
	public String record(Model model, HttpSession session, @PathVariable(value = "cafeNo") int cafeNo) {

		UserVo userVo = (UserVo) session.getAttribute("authUser");

		if (userVo != null) {
			List<PreRecordVo> gameList = recordService.getGameList(cafeNo);

			System.out.println(gameList);

			model.addAttribute("gameList", gameList);

			return "admin/record";
		} else {
			return "user/loginForm";
		}
	}

	@ResponseBody
	@RequestMapping("getMemberList")
	public List<String> getMemberList(@RequestParam(value = "gameno") int gameNo, Model model) {

		List<String> memberList = recordService.getMemberList(gameNo);

		return memberList;
	}

	// 관리자페이지 기록
	@RequestMapping("/addRecord")
	public String addRecord(@ModelAttribute RecordVo recordVo, HttpSession session,
			@RequestParam(value = "recordClear", required = false, defaultValue = "success") String clearState,
			@RequestParam(value = "recordMin", required = false, defaultValue = "0") int minutes,
			@RequestParam(value = "recordSec", required = false, defaultValue = "0") int secconds,
			@RequestParam(value = "member") List<String> members) {

		UserVo userVo = (UserVo) session.getAttribute("authUser");

		int cafeNo = userVo.getCafeNo();

		recordVo.setRecordTime((minutes * 60) + secconds);
		recordVo.setRecordClear(clearState);

		System.out.println(recordVo);

		recordService.RecordAdd(recordVo, members);

		return "redirect:/admin/record/" + cafeNo;
	}

	// 관리자페이지 기록수정
	@RequestMapping("/modify/{cafeNo}")
	public String recordModify(Model model, @PathVariable("cafeNo") int cafeNo) {
		System.out.println("recordModify");

		List<PreRecordVo> completeList = recordService.getCompleteList(cafeNo);

		model.addAttribute("completeList", completeList);
		System.out.println(completeList);
		return "admin/recordModify";
	}

	@RequestMapping("/modifyRecord")
	public String modifyRecord(@ModelAttribute RecordVo recordVo, HttpSession session,
			@RequestParam(value = "recordClear", required = false, defaultValue = "success") String clearState,
			@RequestParam(value = "recordMin", required = false, defaultValue = "0") int minutes,
			@RequestParam(value = "recordSec", required = false, defaultValue = "0") int secconds,
			@RequestParam(value = "member") List<String> members) {

		UserVo userVo = (UserVo) session.getAttribute("authUser");

		int cafeNo = userVo.getCafeNo();

		recordVo.setRecordTime((minutes * 60) + secconds);
		recordVo.setRecordClear(clearState);

		System.out.println("modifyRecord" + recordVo + "\n" + members);

		recordService.modifyRecord(recordVo, members);

		return "redirect:/admin/record/modify/" + cafeNo;
	}

}
