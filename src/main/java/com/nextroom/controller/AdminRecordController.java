package com.nextroom.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.nextroom.service.RecordService;
import com.nextroom.vo.PreRecordVo;
import com.nextroom.vo.RecordVo;


@Controller
@RequestMapping("/admin/record")
public class AdminRecordController {
	
	@Autowired RecordService recordService;
	
		@RequestMapping("")
		public String record(Model model) {
			
			List<PreRecordVo> gameList = recordService.getGameList();
			
			System.out.println(gameList);
			
			model.addAttribute("gameList",gameList);
			
			return "admin/record";
		}
		
		@ResponseBody
		@RequestMapping("getMemberList")
		public List<String> getMemberList(@RequestParam(value="gameno") int gameNo,Model model) {
			
			List<String> memberList = recordService.getMemberList(gameNo);
			
			
			
			return memberList;
		}
	
	
		//관리자페이지 기록
		@RequestMapping("/addRecord")
		public String addRecord(@ModelAttribute RecordVo recordVo,
								@RequestParam(value="recordClear", required = false, defaultValue = "success") String clearState,
								@RequestParam(value="recordMin", required = false, defaultValue = "0") int minutes,
								@RequestParam(value="recordSec", required = false, defaultValue = "0") int secconds,
								@RequestParam(value="member") List<String> members) {
		   
		   recordVo.setRecordTime((minutes*60)+secconds);
		   recordVo.setRecordClear(clearState);
		   
		   System.out.println(recordVo);
		   
		   recordService.RecordAdd(recordVo,members);
		   
		   
		   return "redirect:/admin/record";
		}
		
		//관리자페이지 기록수정
		@RequestMapping("/modify")
		public String recordModify(Model model) {
		   System.out.println("recordModify");
		   
		   List<PreRecordVo> completeList = recordService.getCompleteList();
		   
		   model.addAttribute("completeList",completeList);
		   System.out.println(completeList);
		   return "admin/recordModify";
		}
		
		@RequestMapping("/recordModifyForm")
		@ResponseBody
		public String recordModifyForm() {
			
			System.out.println("ajax");
			
			//recordService.getRecordList();
			
			
			return null;
		}
		
}
	
	