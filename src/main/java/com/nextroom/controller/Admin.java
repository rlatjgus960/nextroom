package com.nextroom.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Admin {
	
	
	@RequestMapping("/adminRecord")
	public String record() {
	   System.out.println("record");
	   return "admin/admin_Record";
	}
	
	
	@RequestMapping("/adminRecordModify")
	public String recordModify() {
	   System.out.println("recordModify");
	   return "admin/admin_RecordModify";
	}
	
}
